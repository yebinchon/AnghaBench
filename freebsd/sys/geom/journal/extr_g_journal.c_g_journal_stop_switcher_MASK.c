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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ GJ_SWITCHER_DIE ; 
 scalar_t__ GJ_SWITCHER_DIED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRIBIO ; 
 int /*<<< orphan*/ * g_journal_switcher_proc ; 
 scalar_t__ g_journal_switcher_state ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int hz ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 

__attribute__((used)) static void
FUNC5(void)
{
	FUNC2();
	FUNC1(g_journal_switcher_proc != NULL);
	g_journal_switcher_state = GJ_SWITCHER_DIE;
	FUNC4(&g_journal_switcher_state);
	while (g_journal_switcher_state != GJ_SWITCHER_DIED)
		FUNC3(&g_journal_switcher_state, PRIBIO, "jfini:wait", hz / 5);
	FUNC0(1, "Switcher died.");
	g_journal_switcher_proc = NULL;
}