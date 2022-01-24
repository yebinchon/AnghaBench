#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ HDBUF ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int) ; 
 int clcnt ; 
 int colwd ; 
 int eoptind ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int,int*,int,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int lines ; 
 char* FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  nmchar ; 
 scalar_t__ nmwd ; 
 int /*<<< orphan*/  nohead ; 
 int /*<<< orphan*/ * FUNC8 (int,char**,char const**,char*,int /*<<< orphan*/ ) ; 
 int offst ; 
 scalar_t__ FUNC9 (char*,int,int*,int*,int /*<<< orphan*/ ) ; 
 int pgnm ; 
 scalar_t__ pgwd ; 
 scalar_t__ FUNC10 (char*,char const*,int) ; 
 scalar_t__ FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  schar ; 
 scalar_t__ sflag ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

int
FUNC13(int argc, char *argv[])
{
	char *ptbf;
	int pln;
	int cnt = -1;
	char *lstdat;
	int col = colwd + 1;
	int j;
	int i;
	int lncnt;
	int pagecnt;
	char *buf;
	char *hbuf;
	char *ohbuf;
	const char *fname;
	FILE *inf;
	int ips = 0;
	int cps = 0;
	int ops = 0;
	int mor = 0;

	if ((buf = FUNC5((unsigned)(pgwd+offst+1)*sizeof(char))) == NULL) {
		FUNC7();
		return(1);
	}

	/*
	 * page header
	 */
	if ((hbuf = FUNC5((unsigned)(HDBUF + offst)*sizeof(char))) == NULL) {
		FUNC2(buf);
		FUNC7();
		return(1);
	}
	ohbuf = hbuf + offst;
	if (offst) {
		(void)FUNC6(buf, (int)' ', offst);
		(void)FUNC6(hbuf, (int)' ', offst);
	}

	/*
	 * loop by file
	 */
	while ((inf = FUNC8(argc, argv, &fname, ohbuf, 0)) != NULL) {
		if (pgnm) {
			if (FUNC4(inf, pgnm, lines))
				continue;
			pagecnt = pgnm;
		} else
			pagecnt = 1;
		lncnt = 0;

		/*
		 * loop by page
		 */
		for(;;) {
			FUNC12(pagecnt);

			/*
			 * loop by line
			 */
			for (i = 0; i < lines; ++i) {
				ptbf = buf + offst;
				lstdat = ptbf;
				j = 0;
				/*
				 * loop by col
				 */
				for(;;) {
					if (nmwd) {
						/*
						 * add number to column
						 */
						FUNC0(ptbf, nmwd, ++lncnt);
						ptbf += nmwd;
						*ptbf++ = nmchar;
					}
					/*
					 * input line
					 */
					if ((cnt = FUNC3(inf,ptbf,colwd,&cps,1,
							&mor)) < 0)
						break;
					ptbf += cnt;
					lstdat = ptbf;

					/*
					 * if last line skip padding
					 */
					if (++j >= clcnt)
						break;

					/*
					 * pad to end of column
					 */
					if (sflag)
						*ptbf++ = schar;
					else if ((pln = col - cnt) > 0) {
						(void)FUNC6(ptbf,(int)' ',pln);
						ptbf += pln;
					}
				}

				/*
				 * determine line length
				 */
				if ((j = lstdat - buf) <= offst)
					break;
				if (!i && !nohead &&
					FUNC10(hbuf, fname, pagecnt))
					goto err;
				/*
				 * output line
				 */
				if (FUNC9(buf, j, &ips, &ops, 0))
					goto err;
			}

			/*
			 * pad to end of page
			 */
			if (i && FUNC11(lines-i, 0))
				goto err;

			/*
			 * if EOF go to next file
			 */
			if (cnt < 0)
				break;
			++pagecnt;
		}
		if (inf != stdin)
			(void)FUNC1(inf);
	}
	if (eoptind < argc)
		goto err;
	FUNC2(hbuf);
	FUNC2(buf);
	return(0);
err:
	FUNC2(hbuf);
	FUNC2(buf);
	return(1);
}