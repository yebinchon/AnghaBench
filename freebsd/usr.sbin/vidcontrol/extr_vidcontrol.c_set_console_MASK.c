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
 int /*<<< orphan*/  VT_ACTIVATE ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 

__attribute__((used)) static void
FUNC7(char *arg)
{
	int n;

	if(!arg || FUNC6(arg,"0123456789") != FUNC5(arg)) {
		FUNC4();
		FUNC2(1, "bad console number");
	}

	n = FUNC0(arg);

	if (n < 1 || n > 16) {
		FUNC4();
		FUNC2(1, "console number out of range");
	} else if (FUNC3(0, VT_ACTIVATE, n) == -1) {
		FUNC4();
		FUNC1(1, "switching vty");
	}
}