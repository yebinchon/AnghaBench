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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int
FUNC5(int argc, char **argv)
{
	int	opt, brief = 0, proto = 0;

	while ((opt = FUNC1(argc, argv, "bhp")) != -1) {
		switch (opt) {
		case 'b':
			brief = 1;
			break;

		case 'p':
			proto = 1;
			break;

		case 'h':
		default:
			FUNC4();
			/* NOT REACHED */
		}
	}

	argc -= optind;
	argv += optind;

	if (argc < 1)
		FUNC4();

	FUNC0(proto? FUNC3(*argv, brief) : FUNC2(*argv, brief));
}