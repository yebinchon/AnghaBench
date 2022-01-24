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
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  TMPOUTNAME ; 
 char* _PATH_RED ; 
 char* buf ; 
 int /*<<< orphan*/  buf_size ; 
 int /*<<< orphan*/  check_only ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * filearg ; 
 int /*<<< orphan*/  filemode ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (unsigned char) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  outname ; 
 int /*<<< orphan*/  p_input_line ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pfp ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/ * FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  skip_rest_of_patch ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,char*,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (char*,char*) ; 
 char* FUNC17 (char*,char) ; 
 int toutkeep ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ verbose ; 

void
FUNC19(void)
{
	char	*t;
	off_t	beginning_of_this_line;
	FILE	*pipefp = NULL;
	int	continuation;

	if (!skip_rest_of_patch) {
		if (FUNC1(filearg[0], TMPOUTNAME) < 0) {
			FUNC18(TMPOUTNAME);
			FUNC2("can't create temp file %s", TMPOUTNAME);
		}
		FUNC15(buf, buf_size, "%s%s%s", _PATH_RED,
		    verbose ? " " : " -s ", TMPOUTNAME);
		pipefp = FUNC13(buf, "w");
	}
	for (;;) {
		beginning_of_this_line = FUNC6(pfp);
		if (FUNC12(true) == 0) {
			FUNC10(beginning_of_this_line, p_input_line);
			break;
		}
		p_input_line++;
		for (t = buf; FUNC8((unsigned char)*t) || *t == ','; t++)
			;
		/* POSIX defines allowed commands as {a,c,d,i,s} */
		if (FUNC8((unsigned char)*buf) &&
		    (*t == 'a' || *t == 'c' || *t == 'd' || *t == 'i' || *t == 's')) {
			if (pipefp != NULL)
				FUNC5(buf, pipefp);
			if (*t == 's') {
				for (;;) {
					continuation = 0;
					t = FUNC17(buf, '\0') - 1;
					while (--t >= buf && *t == '\\')
						continuation = !continuation;
					if (!continuation ||
					    FUNC12(true) == 0)
						break;
					if (pipefp != NULL)
						FUNC5(buf, pipefp);
				}
			} else if (*t != 'd') {
				while (FUNC12(true)) {
					p_input_line++;
					if (pipefp != NULL)
						FUNC5(buf, pipefp);
					if (FUNC16(buf, ".\n"))
						break;
				}
			}
		} else {
			FUNC10(beginning_of_this_line, p_input_line);
			break;
		}
	}
	if (pipefp == NULL)
		return;
	FUNC4(pipefp, "w\n");
	FUNC4(pipefp, "q\n");
	FUNC3(pipefp);
	FUNC11(pipefp);
	FUNC7();
	if (!check_only) {
		if (FUNC9(TMPOUTNAME, outname) < 0) {
			toutkeep = true;
			FUNC0(TMPOUTNAME, filemode);
		} else
			FUNC0(outname, filemode);
	}
	FUNC14(1);
}