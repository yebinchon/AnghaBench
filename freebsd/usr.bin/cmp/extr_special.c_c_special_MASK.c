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
typedef  int off_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CAPH_READ ; 
 int /*<<< orphan*/  DIFF_EXIT ; 
 int EOF ; 
 int /*<<< orphan*/  ERR_EXIT ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ lflag ; 
 int /*<<< orphan*/  FUNC11 (char*,long long,int,int) ; 
 scalar_t__ xflag ; 

void
FUNC12(int fd1, const char *file1, off_t skip1,
    int fd2, const char *file2, off_t skip2)
{
	int ch1, ch2;
	off_t byte, line;
	FILE *fp1, *fp2;
	int dfound;

	if (FUNC1(fd1, CAPH_READ) < 0)
		FUNC4(ERR_EXIT, "caph_limit_stream(%s)", file1);
	if (FUNC1(fd2, CAPH_READ) < 0)
		FUNC4(ERR_EXIT, "caph_limit_stream(%s)", file2);
	if (FUNC0() < 0)
		FUNC4(ERR_EXIT, "unable to enter capability mode");

	if ((fp1 = FUNC7(fd1, "r")) == NULL)
		FUNC4(ERR_EXIT, "%s", file1);
	if ((fp2 = FUNC7(fd2, "r")) == NULL)
		FUNC4(ERR_EXIT, "%s", file2);

	dfound = 0;
	while (skip1--)
		if (FUNC10(fp1) == EOF)
			goto eof;
	while (skip2--)
		if (FUNC10(fp2) == EOF)
			goto eof;

	for (byte = line = 1;; ++byte) {
		ch1 = FUNC10(fp1);
		ch2 = FUNC10(fp2);
		if (ch1 == EOF || ch2 == EOF)
			break;
		if (ch1 != ch2) {
			if (xflag) {
				dfound = 1;
				(void)FUNC11("%08llx %02x %02x\n",
				    (long long)byte - 1, ch1, ch2);
			} else if (lflag) {
				dfound = 1;
				(void)FUNC11("%6lld %3o %3o\n",
				    (long long)byte, ch1, ch2);
			} else {
				FUNC2(file1, file2, byte, line);
				/* NOTREACHED */
			}
		}
		if (ch1 == '\n')
			++line;
	}

eof:	if (FUNC9(fp1))
		FUNC4(ERR_EXIT, "%s", file1);
	if (FUNC9(fp2))
		FUNC4(ERR_EXIT, "%s", file2);
	if (FUNC8(fp1)) {
		if (!FUNC8(fp2))
			FUNC3(file1);
	} else
		if (FUNC8(fp2))
			FUNC3(file2);
	FUNC6(fp2);
	FUNC6(fp1);
	if (dfound)
		FUNC5(DIFF_EXIT);
}