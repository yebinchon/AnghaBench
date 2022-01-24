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
 scalar_t__ LBUF ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int eoptind ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__,int*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int lines ; 
 char* FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 char nmchar ; 
 int nmwd ; 
 int /*<<< orphan*/  nohead ; 
 int /*<<< orphan*/ * FUNC8 (int,char**,char const**,char*,int /*<<< orphan*/ ) ; 
 int offst ; 
 scalar_t__ FUNC9 (char*,int,int*,int*,int) ; 
 int pgnm ; 
 scalar_t__ FUNC10 (char*,char const*,int) ; 
 scalar_t__ FUNC11 (int,int) ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

int
FUNC13(int argc, char *argv[])
{
	int cnt = -1;
	int off;
	int lrgln;
	int linecnt;
	int num;
	int lncnt;
	int pagecnt;
	int ips;
	int ops;
	int cps;
	char *obuf;
	char *lbuf;
	char *nbuf;
	char *hbuf;
	char *ohbuf;
	FILE *inf;
	const char *fname;
	int mor;

	if (nmwd)
		num = nmwd + 1;
	else
		num = 0;
	off = num + offst;

	/*
	 * allocate line buffer
	 */
	if ((obuf = FUNC5((unsigned)(LBUF + off)*sizeof(char))) == NULL) {
		FUNC7();
		return(1);
	}
	/*
	 * allocate header buffer
	 */
	if ((hbuf = FUNC5((unsigned)(HDBUF + offst)*sizeof(char))) == NULL) {
		FUNC2(obuf);
		FUNC7();
		return(1);
	}

	ohbuf = hbuf + offst;
	nbuf = obuf + offst;
	lbuf = nbuf + num;
	if (num)
		nbuf[--num] = nmchar;
	if (offst) {
		(void)FUNC6(obuf, (int)' ', offst);
		(void)FUNC6(hbuf, (int)' ', offst);
	}

	/*
	 * loop by file
	 */
	while ((inf = FUNC8(argc, argv, &fname, ohbuf, 0)) != NULL) {
		if (pgnm) {
			/*
			 * skip to specified page
			 */
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
			linecnt = 0;
			lrgln = 0;
			ops = 0;
			ips = 0;
			cps = 0;

			FUNC12(pagecnt);

			/*
			 * loop by line
			 */
			while (linecnt < lines) {
				/*
				 * input next line
				 */
				if ((cnt = FUNC3(inf,lbuf,LBUF,&cps,0,&mor)) < 0)
					break;
				if (!linecnt && !nohead &&
					FUNC10(hbuf, fname, pagecnt))
					goto err;

				/*
				 * start of new line.
				 */
				if (!lrgln) {
					if (num)
						FUNC0(nbuf, num, ++lncnt);
					if (FUNC9(obuf,cnt+off, &ips, &ops, mor))
						goto err;
				} else if (FUNC9(lbuf, cnt, &ips, &ops, mor))
					goto err;

				/*
				 * if line bigger than buffer, get more
				 */
				if (mor) {
					lrgln = 1;
					continue;
				}

				/*
				 * whole line rcvd. reset tab proc. state
				 */
				++linecnt;
				lrgln = 0;
				ops = 0;
				ips = 0;
			}

			/*
			 * fill to end of page
			 */
			if (linecnt && FUNC11(lines-linecnt-lrgln, lrgln))
				goto err;

			/*
			 * On EOF go to next file
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
	FUNC2(obuf);
	return(0);
err:
	FUNC2(hbuf);
	FUNC2(obuf);
	return(1);
}