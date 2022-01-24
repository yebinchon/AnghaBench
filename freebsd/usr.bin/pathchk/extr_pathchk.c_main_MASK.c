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
 int Pflag ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,char**,char*) ; 
 scalar_t__ optind ; 
 int pflag ; 
 int /*<<< orphan*/  FUNC3 () ; 

int
FUNC4(int argc, char *argv[])
{
	int ch, rval;
	const char *arg;

	while ((ch = FUNC2(argc, argv, "pP")) > 0) {
		switch (ch) {
		case 'p':
			pflag = 1;
			break;
		case 'P':
			Pflag = 1;
			break;
		default:
			FUNC3();
			/*NOTREACHED*/
		}
	}
	argc -= optind;
	argv += optind;

	if (argc == 0)
		FUNC3();

	rval = 0;
	while ((arg = *argv++) != NULL)
		rval |= FUNC0(arg);

	FUNC1(rval);
}