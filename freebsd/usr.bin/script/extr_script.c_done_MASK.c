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
typedef  int /*<<< orphan*/  time_t ;

/* Variables and functions */
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  TCSAFLUSH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ fflg ; 
 char* fmfname ; 
 char* fname ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  fscript ; 
 int /*<<< orphan*/  master ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  qflg ; 
 scalar_t__ rawout ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char) ; 
 scalar_t__ showexit ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tt ; 
 scalar_t__ ttyflg ; 

__attribute__((used)) static void
FUNC9(int eno)
{
	time_t tvec;

	if (ttyflg)
		(void)FUNC7(STDIN_FILENO, TCSAFLUSH, &tt);
	tvec = FUNC8(NULL);
	if (rawout)
		FUNC6(fscript, NULL, 0, 'e');
	if (!qflg) {
		if (!rawout) {
			if (showexit)
				(void)FUNC4(fscript, "\nCommand exit status:"
				    " %d", eno);
			(void)FUNC4(fscript,"\nScript done on %s",
			    FUNC1(&tvec));
		}
		(void)FUNC5("\nScript done, output file is %s\n", fname);
		if (fflg) {
			(void)FUNC5("Filemon done, output file is %s\n",
			    fmfname);
		}
	}
	(void)FUNC3(fscript);
	(void)FUNC0(master);
	FUNC2(eno);
}