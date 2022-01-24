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
struct g_class {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GJ_SWITCHER_WORKING ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_journal_switcher ; 
 int /*<<< orphan*/ * g_journal_switcher_proc ; 
 int /*<<< orphan*/  g_journal_switcher_state ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,struct g_class*,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC4(struct g_class *mp)
{
	int error;

	FUNC2();
	FUNC1(g_journal_switcher_proc == NULL);
	g_journal_switcher_state = GJ_SWITCHER_WORKING;
	error = FUNC3(g_journal_switcher, mp, &g_journal_switcher_proc,
	    0, 0, "g_journal switcher");
	FUNC0(error == 0, ("Cannot create switcher thread."));
}