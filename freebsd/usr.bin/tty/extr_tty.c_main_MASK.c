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

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int
FUNC5(int argc, char *argv[])
{
	int ch, sflag;
	char *t;

	sflag = 0;
	while ((ch = FUNC1(argc, argv, "s")) != -1)
		switch (ch) {
		case 's':
			sflag = 1;
			break;
		case '?':
		default:
			FUNC4();
			/* NOTREACHED */
		}

	t = FUNC3(STDIN_FILENO);
	if (!sflag)
		FUNC2(t ? t : "not a tty");
	FUNC0(t ? EXIT_SUCCESS : EXIT_FAILURE);
}