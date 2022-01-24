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
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char**) ; 
 int /*<<< orphan*/  FUNC3 (int,char**) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int
FUNC5(int argc, char *argv[])
{

	if (argc < 2)
		FUNC4();

	if (FUNC1(argv[1], "server") == 0)
		FUNC3(argc - 2, argv + 2);
	else if (FUNC1(argv[1], "client") == 0)
		FUNC2(argc - 2, argv + 2);
	else
		FUNC4();

	FUNC0(0);
}