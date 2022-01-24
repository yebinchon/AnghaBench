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
 int /*<<< orphan*/  MA_OWNED ; 
 int PDROP ; 
 int PRIBIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_doorstep ; 
 int /*<<< orphan*/  g_eventlock ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  g_wait_event ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ g_wither_work ; 
 int hz ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 () ; 

void
FUNC8()
{

	for (;;) {
		FUNC1();
		while (FUNC7())
			;
		FUNC5(&g_eventlock, MA_OWNED);
		if (g_wither_work) {
			g_wither_work = 0;
			FUNC6(&g_eventlock);
			FUNC3();
			FUNC2();
		} else {
			FUNC2();
			FUNC4(&g_wait_event, &g_eventlock, PRIBIO | PDROP,
			    "-", FUNC0(&g_doorstep) ? 0 : hz / 10);
		}
	}
	/* NOTREACHED */
}