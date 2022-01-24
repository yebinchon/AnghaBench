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
 char FUNC0 (int,char**,char*) ; 
 int gflag ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int
FUNC5(int argc, char **argv)
{
	char ch, *s;

	s = NULL;
	while ((ch = FUNC0(argc, argv, "ghlus:")) != -1) {
		switch (ch) {
		case 'g':
			gflag = 1;
			break;
		case 'h':
			FUNC4(0);
			/* NOTREACHED */
			break;
		case 'l':
			FUNC1();
			/* NOTREACHED */
			break;
		case 'u':
			FUNC3();
			/* NOTREACHED */
			break;

		case 's':
			FUNC2(optarg);
			/* NOTREACHED */
			break;

		case '?':
		default:
			FUNC4(1);
			/* NOTREACHED */
			break;
		}
	}

	FUNC4(1);
	/* NOTREACHED */

	return (0);
}