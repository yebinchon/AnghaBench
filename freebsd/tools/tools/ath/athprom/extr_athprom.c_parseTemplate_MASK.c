#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int numPcdacValues; } ;
struct TYPE_5__ {TYPE_1__* pDataPerChannel; } ;
struct TYPE_4__ {int numPdGains; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int MAXID ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int bol ; 
 int curchan ; 
 int curctl ; 
 int curlpdgain ; 
 int curmode ; 
 int curpcdac ; 
 int curpdgain ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int lineno ; 
 int FUNC6 (int) ; 
 int numChannels ; 
 TYPE_3__* pDataPerChannel ; 
 TYPE_2__* pRaw ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 int FUNC11 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*) ; 

__attribute__((used)) static void
FUNC14(FILE *ftemplate, FILE *fd)
{
	int c, i;
	char id[MAXID];
	long forchan, forpdgain, forctl, forpcdac;

	lineno = 1;
	bol = 1;
	while ((c = FUNC4(ftemplate)) != EOF) {
		if (c == '#') {			/* comment */
	skiptoeol:
			while ((c = FUNC4(ftemplate)) != EOF && c != '\n')
				;
			if (c == EOF)
				return;
			lineno++;
			bol = 1;
			continue;
		}
		if (c == '.' && bol) {		/* .directive */
			if (FUNC12(ftemplate, id, MAXID, ".directive") == EOF)
				return;
			/* process directive */
			if (FUNC10(id, "ifmode") == 0) {
				FUNC9(ftemplate);
				if (FUNC12(ftemplate, id, MAXID, "id") == EOF)
					return;
				FUNC5(ftemplate, id);
			} else if (FUNC10(id, "endmode") == 0) {
				/* XXX free malloc'd indirect data */
				curmode = -1;	/* NB: undefined */
			} else if (FUNC10(id, "forchan") == 0) {
				forchan = FUNC3(ftemplate) - sizeof("forchan");
				if (curchan == -1)
					curchan = 0;
			} else if (FUNC10(id, "endforchan") == 0) {
				if (++curchan < numChannels)
					FUNC2(ftemplate, forchan, SEEK_SET);
				else
					curchan = -1;
			} else if (FUNC10(id, "ifpdgain") == 0) {
				FUNC9(ftemplate);
				if (FUNC12(ftemplate, id, MAXID, "pdgain") == EOF)
					return;
				curlpdgain = FUNC11(id, NULL, 0);
				if (curlpdgain >= pRaw->pDataPerChannel[curchan].numPdGains) {
					FUNC8(ftemplate, "endpdgain");
					curlpdgain = -1;
				} else
					curpdgain = FUNC7(curlpdgain);
			} else if (FUNC10(id, "endpdgain") == 0) {
				curlpdgain = curpdgain = -1;
			} else if (FUNC10(id, "forpdgain") == 0) {
				forpdgain = FUNC3(ftemplate) - sizeof("forpdgain");
				if (curlpdgain == -1) {
					FUNC9(ftemplate);
					if (FUNC12(ftemplate, id, MAXID, "pdgain") == EOF)
						return;
					curlpdgain = FUNC11(id, NULL, 0);
					if (curlpdgain >= pRaw->pDataPerChannel[curchan].numPdGains) {
						FUNC8(ftemplate, "endforpdgain");
						curlpdgain = -1;
					} else
						curpdgain = FUNC7(curlpdgain);
				}
			} else if (FUNC10(id, "endforpdgain") == 0) {
				if (++curpdgain < pRaw->pDataPerChannel[curchan].numPdGains)
					FUNC2(ftemplate, forpdgain, SEEK_SET);
				else
					curpdgain = -1;
			} else if (FUNC10(id, "forpcdac") == 0) {
				forpcdac = FUNC3(ftemplate) - sizeof("forpcdac");
				if (curpcdac == -1)
					curpcdac = 0;
			} else if (FUNC10(id, "endforpcdac") == 0) {
				if (++curpcdac < pDataPerChannel[0].numPcdacValues)
					FUNC2(ftemplate, forpcdac, SEEK_SET);
				else
					curpcdac = -1;
			} else if (FUNC10(id, "forctl") == 0) {
				forctl = FUNC3(ftemplate) - sizeof("forchan");
				if (curctl == -1)
					curctl = FUNC6(0);
			} else if (FUNC10(id, "endforctl") == 0) {
				curctl = FUNC6(curctl+1);
				if (curctl != -1)
					FUNC2(ftemplate, forctl, SEEK_SET);
			} else {
				FUNC13("line %d, unknown directive %s ignored",
				    lineno, id);
			}
			goto skiptoeol;
		}
		if (c == '$') {			/* $variable reference */
			if (FUNC12(ftemplate, id, MAXID, "$var") == EOF)
				return;
			/* XXX not valid if variable depends on curmode */
			FUNC0(fd, id);
			continue;
		}
		if (c == '\\') {		/* escape next character */
			c = FUNC4(ftemplate);
			if (c == EOF)
				return;
		}
		FUNC1(c, fd);
		bol = (c == '\n');
		if (bol)
			lineno++;
	}
}