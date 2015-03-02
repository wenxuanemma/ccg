all: 
	latex paper
	bibtex paper
	latex paper
	latex paper
	dvipdf paper.dvi
	#pdflatex paper.tex
	#rm -f paper.log paper.aux paper.bbl paper.blg
	#rm -f paper.log paper.aux  # If you do this, references get messed up.
pdf: 
	pdflatex paper
	bibtex paper
	pdflatex paper
	pdflatex paper
clean:
	rm -f paper.aux paper.bbl paper.blg paper.log paper.pdf paper.dvi paper.ps

view: all
	evince paper.pdf

publish:
	#scp paper.pdf sal.cs.uiuc.edu:~/public_html/vfuncertain.pdf
	scp paper.pdf wzhou10@web.engr.illinois.edu:public_html/gcc_nsdi_draft.pdf
	# http://www.cs.uiuc.edu/~caesar/vfuncertain.pdf

spell:
	# spellcheck.bash *.tex
	aspell -c abstract.tex
	aspell -c intro.tex
	aspell -c design.tex
	aspell -c impl.tex
	aspell -c eval.tex
	aspell -c discussion.tex
	aspell -c relwork.tex
	aspell -c conclusion.tex
