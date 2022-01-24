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
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  BASEMODE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int f_mode ; 
 int /*<<< orphan*/  FUNC3 (void const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char**,char*) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 void* FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 

int
FUNC10(int argc, char *argv[])
{
	const char *modestr = NULL;
	const void *modep;
	mode_t fifomode;
	int ch, exitval;

	while ((ch = FUNC4(argc, argv, "m:")) != -1)
		switch(ch) {
		case 'm':
			f_mode = 1;
			modestr = optarg;
			break;
		case '?':
		default:
			FUNC8();
		}
	argc -= optind;
	argv += optind;
	if (argv[0] == NULL)
		FUNC8();

	if (f_mode) {
		FUNC7(0);
		errno = 0;
		if ((modep = FUNC6(modestr)) == NULL) {
			if (errno)
				FUNC0(1, "setmode");
			FUNC1(1, "invalid file mode: %s", modestr);
		}
		fifomode = FUNC3(modep, BASEMODE);
	} else {
		fifomode = BASEMODE;
	}

	for (exitval = 0; *argv != NULL; ++argv)
		if (FUNC5(*argv, fifomode) < 0) {
			FUNC9("%s", *argv);
			exitval = 1;
		}
	FUNC2(exitval);
}