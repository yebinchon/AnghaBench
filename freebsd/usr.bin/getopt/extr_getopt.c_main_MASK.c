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
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (int,char**,char*) ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

int
FUNC5(int argc, char *argv[])
{
	int c;
	int status = 0;

	if (FUNC1() < 0 || FUNC0() < 0)
		FUNC2(1, "capsicum");

	optind = 2;	/* Past the program name and the option letters. */
	while ((c = FUNC3(argc, argv, argv[1])) != -1)
		switch (c) {
		case '?':
			status = 1;	/* getopt routine gave message */
			break;
		default:
			if (optarg != NULL)
				FUNC4(" -%c %s", c, optarg);
			else
				FUNC4(" -%c", c);
			break;
		}
	FUNC4(" --");
	for (; optind < argc; optind++)
		FUNC4(" %s", argv[optind]);
	FUNC4("\n");
	return status;
}