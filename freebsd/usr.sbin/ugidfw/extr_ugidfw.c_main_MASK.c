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
 int /*<<< orphan*/  FUNC0 (int,char**) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,char**) ; 
 int /*<<< orphan*/  FUNC3 (int,char**) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

int
FUNC6(int argc, char *argv[])
{

	if (argc < 2)
		FUNC5();

	if (FUNC4("add", argv[1]) == 0) {
		FUNC0(argc-2, argv+2);
	} else if (FUNC4("list", argv[1]) == 0) {
		if (argc != 2)
			FUNC5();
		FUNC1();
	} else if (FUNC4("set", argv[1]) == 0) {
		FUNC3(argc-2, argv+2);
	} else if (FUNC4("remove", argv[1]) == 0) {
		FUNC2(argc-2, argv+2);
	} else
		FUNC5();

	return (0);
}