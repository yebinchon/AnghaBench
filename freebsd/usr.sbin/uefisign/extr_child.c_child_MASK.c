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
struct executable {char const* x_path; int /*<<< orphan*/ * x_fp; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct executable* FUNC0 (int,int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct executable*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct executable*) ; 
 int /*<<< orphan*/  FUNC7 (struct executable*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct executable*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct executable*,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC11 (struct executable*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct executable*) ; 
 int /*<<< orphan*/  FUNC13 (struct executable*) ; 
 scalar_t__ FUNC14 (struct executable*) ; 
 int /*<<< orphan*/  FUNC15 (struct executable*) ; 

int
FUNC16(const char *inpath, const char *outpath, int pipefd,
    bool Vflag, bool vflag)
{
	FILE *outfp = NULL, *infp = NULL;
	struct executable *x;

	infp = FUNC2(inpath, "r");
	if (outpath != NULL)
		outfp = FUNC2(outpath, "w");

	if (FUNC1() < 0)
		FUNC4(1, "cap_enter");

	x = FUNC0(1, sizeof(*x));
	if (x == NULL)
		FUNC4(1, "calloc");
	x->x_path = inpath;
	x->x_fp = infp;

	FUNC6(x);
	FUNC7(x);
	if (Vflag) {
		if (FUNC14(x) == 0)
			FUNC5(1, "file not signed");

		FUNC8("file contains signature\n");
		if (vflag) {
			FUNC3(x);
			FUNC13(x);
			FUNC12(x);
		}
	} else {
		if (FUNC14(x) != 0)
			FUNC5(1, "file already signed");

		FUNC3(x);
		if (vflag)
			FUNC13(x);
		FUNC11(x, pipefd);
		FUNC9(x, pipefd);
		FUNC15(x);
		FUNC10(x, outfp, outpath);
	}

	return (0);
}