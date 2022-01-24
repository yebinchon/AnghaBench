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
 int EXIT_FAILURE ; 
 int FUNC0 (int,char**) ; 
 int FUNC1 (int,char**) ; 
 int FUNC2 (int,char**) ; 
 int FUNC3 (int,char**) ; 
 int FUNC4 (int,char**) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

int
FUNC6(int argc, char **argv)
{
	int error;

	if (argc < 2)
		return EXIT_FAILURE;

	argc -= 1;
	argv += 1;

	if (FUNC5(argv[0], "getfh") == 0)
		error = FUNC0(argc, argv);
	else if (FUNC5(argv[0], "kqueue") == 0)
		error = FUNC1(argc, argv);
	else if (FUNC5(argv[0], "rename") == 0)
		error = FUNC2(argc, argv);
	else if (FUNC5(argv[0], "sockets") == 0)
		error = FUNC3(argc, argv);
	else if (FUNC5(argv[0], "statvfs") == 0)
		error = FUNC4(argc, argv);
	else
		error = EXIT_FAILURE;

	return error;
}