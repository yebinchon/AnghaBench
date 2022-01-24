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
 int /*<<< orphan*/  CONS_HISTORY ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void
FUNC5(char *opt)
{
	int size;

	size = FUNC0(opt);

	if ((*opt == '\0') || size < 0) {
		FUNC4();
		FUNC2(1, "argument must not be less than zero");
	}

	if (FUNC3(0, CONS_HISTORY, &size) == -1) {
		FUNC4();
		FUNC1(1, "setting history buffer size");
	}
}