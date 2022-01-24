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
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int clcnt ; 
 int colwd ; 
 int eoptind ; 
 int /*<<< orphan*/  err ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int,int*,int,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int lines ; 
 char* FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  nmchar ; 
 int nmwd ; 
 int /*<<< orphan*/  nohead ; 
 int /*<<< orphan*/ * FUNC9 (int,char**,char const**,char*,int) ; 
 int offst ; 
 scalar_t__ FUNC10 (char*,int,int*,int*,int /*<<< orphan*/ ) ; 
 int pgnm ; 
 int pgwd ; 
 scalar_t__ FUNC11 (char*,char const*,int) ; 
 scalar_t__ FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  schar ; 
 scalar_t__ sflag ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

int
FUNC14(int argc, char *argv[])
{
	char *ptbf;
	int j;
	int pln;
	int cnt;
	char *lstdat;
	int i;
	FILE **fbuf = NULL;
	int actf;
	int lncnt;
	int col;
	int pagecnt;
	int fproc;
	char *buf = NULL;
	char *hbuf = NULL;
	char *ohbuf;
	const char *fname;
	int ips = 0;
	int cps = 0;
	int ops = 0;
	int mor = 0;
	int retval = 1;

	/*
	 * array of FILE *, one for each operand
	 */
	if ((fbuf = (FILE **)FUNC6((unsigned)clcnt*sizeof(FILE *))) == NULL) {
		FUNC8();
		goto out;
	}

	/*
	 * page header
	 */
	if ((hbuf = FUNC6((unsigned)(HDBUF + offst)*sizeof(char))) == NULL) {
		FUNC8();
		goto out;
	}
	ohbuf = hbuf + offst;

	/*
	 * do not know how many columns yet. The number of operands provide an
	 * upper bound on the number of columns. We use the number of files
	 * we can open successfully to set the number of columns. The operation
	 * of the merge operation (-m) in relation to unsuccessful file opens
	 * is unspecified by posix.
	 */
	j = 0;
	while (j < clcnt) {
		if ((fbuf[j] = FUNC9(argc, argv, &fname, ohbuf, 1)) == NULL)
			break;
		if (pgnm && (FUNC5(fbuf[j], pgnm, lines)))
			fbuf[j] = NULL;
		++j;
	}

	/*
	 * if no files, exit
	 */
	if (!j)
		goto out;

	/*
	 * calculate page boundaries based on open file count
	 */
	clcnt = j;
	if (nmwd) {
		colwd = (pgwd - clcnt - nmwd)/clcnt;
		pgwd = ((colwd + 1) * clcnt) - nmwd - 2;
	} else {
		colwd = (pgwd + 1 - clcnt)/clcnt;
		pgwd = ((colwd + 1) * clcnt) - 1;
	}
	if (colwd < 1) {
		(void)FUNC2(err,
		  "pr: page width too small for %d columns\n", clcnt);
		goto out;
	}
	actf = clcnt;
	col = colwd + 1;

	/*
	 * line buffer
	 */
	if ((buf = FUNC6((unsigned)(pgwd+offst+1)*sizeof(char))) == NULL) {
		FUNC8();
		goto out;
	}
	if (offst) {
		(void)FUNC7(buf, (int)' ', offst);
		(void)FUNC7(hbuf, (int)' ', offst);
	}
	if (pgnm)
		pagecnt = pgnm;
	else
		pagecnt = 1;
	lncnt = 0;

	/*
	 * continue to loop while any file still has data
	 */
	while (actf > 0) {
		FUNC13(pagecnt);

		/*
		 * loop by line
		 */
		for (i = 0; i < lines; ++i) {
			ptbf = buf + offst;
			lstdat = ptbf;
			if (nmwd) {
				/*
				 * add line number to line
				 */
				FUNC0(ptbf, nmwd, ++lncnt);
				ptbf += nmwd;
				*ptbf++ = nmchar;
			}
			j = 0;
			fproc = 0;

			/*
			 * loop by column
			 */
			for (j = 0; j < clcnt; ++j) {
				if (fbuf[j] == NULL) {
					/*
					 * empty column; EOF
					 */
					cnt = 0;
				} else if ((cnt = FUNC4(fbuf[j], ptbf, colwd,
							&cps, 1, &mor)) < 0) {
					/*
					 * EOF hit; no data
					 */
					if (fbuf[j] != stdin)
						(void)FUNC1(fbuf[j]);
					fbuf[j] = NULL;
					--actf;
					cnt = 0;
				} else {
					/*
					 * process file data
					 */
					ptbf += cnt;
					lstdat = ptbf;
					fproc++;
				}

				/*
				 * if last ACTIVE column, done with line
				 */
				if (fproc >= actf)
					break;

				/*
				 * pad to end of column
				 */
				if (sflag) {
					*ptbf++ = schar;
				} else if ((pln = col - cnt) > 0) {
					(void)FUNC7(ptbf, (int)' ', pln);
					ptbf += pln;
				}
			}

			/*
			 * calculate data in line
			 */
			if ((j = lstdat - buf) <= offst)
				break;

			if (!i && !nohead && FUNC11(hbuf, fname, pagecnt))
				goto out;

			/*
			 * output line
			 */
			if (FUNC10(buf, j, &ips, &ops, 0))
				goto out;

			/*
			 * if no more active files, done
			 */
			if (actf <= 0) {
				++i;
				break;
			}
		}

		/*
		 * pad to end of page
		 */
		if (i && FUNC12(lines-i, 0))
			goto out;
		++pagecnt;
	}
	if (eoptind < argc)
		goto out;
	retval = 0;
out:
	FUNC3(buf);
	FUNC3(hbuf);
	FUNC3(fbuf);
	return(retval);
}