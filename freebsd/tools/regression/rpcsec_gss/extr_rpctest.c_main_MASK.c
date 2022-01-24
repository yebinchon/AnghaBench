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
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char const**) ; 
 int /*<<< orphan*/  FUNC2 (int,char const**) ; 
 int /*<<< orphan*/  FUNC3 (int,char const**) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int
FUNC5(int argc, const char **argv)
{

	if (argc < 2)
		FUNC4();
	if (!FUNC0(argv[1], "client"))
		FUNC1(argc - 1, argv + 1);
	else if (!FUNC0(argv[1], "server"))
		FUNC3(argc - 1, argv + 1);
	else if (!FUNC0(argv[1], "principal"))
		FUNC2(argc - 1, argv + 1);
	else
		FUNC4();

	return (0);
}