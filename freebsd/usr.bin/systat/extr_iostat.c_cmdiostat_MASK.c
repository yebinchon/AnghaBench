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
 int /*<<< orphan*/  cur_dev ; 
 int /*<<< orphan*/  FUNC0 (char const*,char const*,int,int /*<<< orphan*/ *) ; 
 int kbpt ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int numbers ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wnd ; 

int
FUNC5(const char *cmd, const char *args)
{

	if (FUNC2(cmd, "kbpt"))
		kbpt = !kbpt;
	else if (FUNC2(cmd, "numbers"))
		numbers = 1;
	else if (FUNC2(cmd, "bars"))
		numbers = 0;
	else if (!FUNC0(cmd, args, 100, &cur_dev))
		return (0);
	FUNC4(wnd);
	FUNC1();
	FUNC3();
	return (1);
}