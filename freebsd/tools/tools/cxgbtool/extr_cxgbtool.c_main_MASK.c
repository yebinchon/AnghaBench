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
 char* COPYRIGHT ; 
 char* PROGNAME ; 
 char* VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 char* progname ; 
 int FUNC2 (int,char**,char const*) ; 
 int FUNC3 (int,char**,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(int argc, char *argv[])
{
	int r = -1;
	const char *iff_name;

	progname = argv[0];

	if (argc == 2) {
		if (!FUNC4(argv[1], "-h") || !FUNC4(argv[1], "--help"))
			FUNC5(stdout);
		if (!FUNC4(argv[1], "-v") || !FUNC4(argv[1], "--version")) {
			FUNC1("%s version %s\n", PROGNAME, VERSION);
			FUNC1("%s\n", COPYRIGHT);
			FUNC0(0);
		}
	}

	if (argc < 3) FUNC5(stderr);

	iff_name = argv[1];

	if (argc == 3 && !FUNC4(argv[2], "stdio"))
		r = FUNC3(argc, argv, iff_name);
	else
		r = FUNC2(argc, argv, iff_name);

	return (r);
}