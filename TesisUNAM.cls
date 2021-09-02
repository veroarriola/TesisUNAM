%%
%% Este archivo `ThesisUNAM.cls' fue creado para los requerimientos
%% de la UNAM, México. por Veronica E. Arriola.
%% Basado en 'ECSthesis.cls', by Steve R. Gunn
%% generated with the docstrip utility.
%%

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{TesisUNAM} [2007/22/02 v1.0 LaTeX document class]
\def\baseclass{book}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
  \edef\@curroptions{\@ptionlist{\@currname.\@currext}}
  \@tempswafalse
  \@tfor\@this:=#2\do{
    \@expandtwoargs\in@{,\@this,}{,\@curroptions,}
    \ifin@ \@tempswatrue \@break@tfor \fi}
  \let\@this\@empty
  \if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{11pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{letterpaper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}

\newcommand\bhrule{\typeout{------------------------------------------------------------------------------}}
\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}

%% Inician estilos
\usepackage[headheight=15pt, bindingoffset=1cm]{geometry}
\usepackage{setspace}
\onehalfspacing
\setlength{\parindent}{0pt}
\setlength{\parskip}{2.0ex plus0.5ex minus0.2ex}

%% Lenguaje
\usepackage[utf8]{inputenc}
\usepackage[spanish,mexico]{babel}
\DeclareFontShape{OT1}{cmr}{bx}{sc}{<-> cmbcsc10}{}

%% Imágenes
\usepackage{graphicx}
\graphicspath{{Figuras/}}

%% Colores
\usepackage[usenames,dvipsnames,svgnames,table]{xcolor}

%% Tikz
\usepackage{tikz}
\usetikzlibrary{shapes, shapes.geometric,
                arrows, arrows.meta,
                positioning, calc, fit, shadows, backgrounds,
                decorations.markings, decorations.pathmorphing,
                plotmarks}

%% PDF
\usepackage[pdfpagemode={UseOutlines},
            bookmarks=true,
            bookmarksopen=true,
            bookmarksopenlevel=0,
            bookmarksnumbered=true,
            hypertexnames=false,
            colorlinks,
            linkcolor={RoyalBlue},
            citecolor={RoyalPurple},
            filecolor={Blue},
            urlcolor={RoyalBlue},
            linktoc=page,
            pdfstartview={FitV},
            unicode,
            breaklinks=true]{hyperref}

\usepackage{fancyhdr} % Define the page headers using the FancyHdr package and set up for two-sided printing

\newcommand\thead[1]{
  \lhead[\rm\thepage]{#1}
  \rhead[#1]{\rm\thepage}
}
\newcommand\setchapterhead{
  \lhead[\rm\thepage]{\fancyplain{}{\rightmark}}
  \rhead[\fancyplain{}{\leftmark}]{\rm\thepage}
}

\chead{}\lfoot{}\rfoot{}\cfoot{}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{
  \btypeout{\thechapter\space #1}
  \markboth{\@chapapp\ \thechapter.\ \sl{#1}}{\@chapapp\ \thechapter.\ \sl{#1}}
}
\renewcommand{\sectionmark}[1]{
  \btypeout{\thesection\space #1}
  \markright{\thesection.\ \sl{#1}}{}
}
\renewcommand{\subsectionmark}[1]{}
\def\cleardoublepage{
  \clearpage
  \if@twoside
    \ifodd\c@page\else
      \hbox{}
      \thispagestyle{empty}
      \newpage
      \if@twocolumn\hbox{}\newpage
  \fi\fi\fi
}

%%
%% TITLE PAGE
%%
\newcommand*{\modalidad}[1]{\def\modalidadname{#1}}
\newcommand*{\tituloprofesional}[1]{\def\tituloname{#1}}
\newcommand*{\facultad}[1]{\def\facname{#1}}
\newcommand*{\supervisor}[1]{\def\supname{#1}}
\newcommand*{\escudofacultad}[1]{\def\escudoloc{#1}}

%% Muestra el margen de la página, comentar al final
\usepackage{showframe}

\renewcommand\maketitle{
  \btypeout{Title Page}
  \hypersetup{pdftitle={\@title},
	      pdfauthor=\@author}
  \thispagestyle{empty}
  \newgeometry{margin=1in}
  \begin{titlepage}
    \begin{tikzpicture}[remember picture, overlay]
     \node (UNAM) at ($(current page.north west) + (3.5cm,-4cm)$) {\includegraphics[width=3cm]{EscudoUNAM}};
     \draw [line width=2.5pt] ($(UNAM) + (2.5cm,0)$) --  ($(current page.north east) + (-2cm,-4cm)$) node[pos=0.5, above=2pt]{\textsc{\large Universidad Nacional Autónoma de México}};
     \draw [line width=1pt] ($(UNAM) + (2.5cm,-2mm)$) --  ($(current page.north east) + (-2cm,-4.2cm)$) node[pos=0.5, below=2pt] {\textsc{\facname}};
     
     \node (FAC) at ($(current page.south west) + (3.5cm,3cm)$) {\includegraphics[width=3cm]{\escudoloc}};
     \draw [line width=1pt] ($(UNAM) + (-2mm,-2.5cm)$) -- ($(FAC) + (-2mm,2.5cm)$);
     \draw [line width=2.5pt] ($(UNAM) + (0,-2.5cm)$) -- ($(FAC) + (0,2.5cm)$);
     \draw [line width=1pt] ($(UNAM) + (2mm,-2.5cm)$) -- ($(FAC) + (2mm,2.5cm)$);
    \end{tikzpicture}

    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \setcounter{footnote}{0}
    \null\vfil
    \vskip 50\p@
    
    \list{}{\leftmargin2cm}\item[]
    \begin{center}
      \setlength{\parskip}{0pt}
      \vskip 50\p@
      {\large \MakeUppercase \@title \par}
      \vskip 50\p@
      {\Huge \bf \modalidadname \par}
      \vskip 50\p@ %\smallskip
      {\large \scshape{Que para obtener el título de} \par
	\vskip 50\p@
	\tituloname \par
	\vskip 20\p@
	P R E S E N T A :
	\vskip 50\p@
	\@author \par
	\vskip 50\p@
	T U T O R \par
	\smallskip
	\supname
      }
      \vskip 40\p@
      \the\year
      \null\vfill
    \end{center}
    \endlist
    
    \par
    \@thanks
    \vfil\null
  \end{titlepage}
  \restoregeometry
  \cleardoublepage
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \cleardoublepage
}

%%
%% TABLE OF CONTENTS
%%
\renewcommand\tableofcontents{
  \btypeout{Table of Contents}
  \thead{\emph{Índice general}} % Set the page header to "Contents"
  \begin{spacing}{1}{
      \setlength{\parskip}{1pt}
      \if@twocolumn
	\@restonecoltrue\onecolumn
      \else
	\@restonecolfalse
      \fi
      \chapter*{\contentsname
	  \@mkboth{
	    \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}
      \@starttoc{toc}
      \if@restonecol\twocolumn\fi
    \cleardoublepage
  }\end{spacing}
}

%% Aux
\setcounter{tocdepth}{6}
\newcounter{dummy}
\newcommand\addtotoc[1]{
  \refstepcounter{dummy}
  \addcontentsline{toc}{chapter}{#1}
}

%%
%% ABBREVIATIONS
%%
\newcommand\listsymbolname{Abreviaturas}
\usepackage{longtable}
\newcommand\listofsymbols[2]{
  \btypeout{\listsymbolname}
  \thead{\emph{\listsymbolname}} % Set the page header to "Abbreviations"
  \addtotoc{\listsymbolname}
    \chapter*{\listsymbolname
      \@mkboth{
          \MakeUppercase\listsymbolname}{\MakeUppercase\listsymbolname}}
  \begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}

%%
%% LIST OF CONSTANTS
%%
\newcommand\listconstants{Constantes físicas}
\usepackage{longtable}
\newcommand\listofconstants[2]{
  \btypeout{\listconstants}
  \thead{\emph{\listconstants}}  % Set the left side page header to "Physical Constants"
  \addtotoc{\listconstants}
    \chapter*{\listconstants
      \@mkboth{
          \MakeUppercase\listconstants}{\MakeUppercase\listconstants}}
  \begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}

%%
%% LIST OF SYMBOLS
%%
\newcommand\listnomenclature{Símbolos}
\usepackage{longtable}
  \newcommand\listofnomenclature[2]{
  \btypeout{\listnomenclature}
  \thead{\emph{Symbols}}  % Set the page header to "Symbols"
  \addtotoc{\listnomenclature}
      \chapter*{\listnomenclature
	\@mkboth{
	    \MakeUppercase\listnomenclature}{\MakeUppercase\listnomenclature}}
  \begin{longtable}[c]{#1}#2\end{longtable}\par
  \cleardoublepage
}

%%
%% Agradecimientos
%%
\newcommand\acknowledgements[1]{
  \btypeout{Acknowledgements}
  \thispagestyle{empty}
  \begin{center}{\huge{\textit{Agradecimientos}} \par}\end{center}
  {\normalsize #1}
  \vfil\vfil\null
  \cleardoublepage
}

%%
%% Lista de dedicatorias
%%
\newcommand\dedicatory[1]{
  \btypeout{Dedicatory}
  \thispagestyle{empty} %\thispagestyle{plain}
  \null\vfil
  \vskip 60\p@
  \begin{center}{\Large \sl #1}\end{center}
  \vfil\null
  \cleardoublepage
}
\renewcommand\backmatter{
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \addtotoc{\bibname}
  \btypeout{\bibname}
  \@mainmatterfalse}
\endinput

