#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ bcnt; struct TYPE_5__* nextfs; } ;
typedef  TYPE_1__ FS ;

/* Variables and functions */
 int /*<<< orphan*/  LC_ALL ; 
 scalar_t__ blocksize ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exitval ; 
 TYPE_1__* fshead ; 
 int /*<<< orphan*/  FUNC5 (int,char***) ; 
 int /*<<< orphan*/  FUNC6 (char**) ; 
 int /*<<< orphan*/  FUNC7 (int,char***) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 char* FUNC12 (char*,char) ; 

int
FUNC13(int argc, char *argv[])
{
	FS *tfs;
	char *p;

	(void)FUNC9(LC_ALL, "");

	if (!(p = FUNC12(argv[0], 'o')) || FUNC11(p, "od"))
		FUNC5(argc, &argv);
	else
		FUNC7(argc, &argv);

	/* figure out the data block size */
	for (blocksize = 0, tfs = fshead; tfs; tfs = tfs->nextfs) {
		tfs->bcnt = FUNC10(tfs);
		if (blocksize < tfs->bcnt)
			blocksize = tfs->bcnt;
	}
	/* rewrite the rules, do syntax checking */
	for (tfs = fshead; tfs; tfs = tfs->nextfs)
		FUNC8(tfs);

	/*
	 * Cache NLS data, for strerror, for err(3), before entering capability
	 * mode.
	 */
	FUNC0();
	if (FUNC1() < 0)
		FUNC3(1, "capsicum");

	(void)FUNC6(argv);
	FUNC2();
	FUNC4(exitval);
}