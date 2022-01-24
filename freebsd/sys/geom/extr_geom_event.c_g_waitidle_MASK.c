#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  td_pflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PPAUSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TDP_GEOM ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__* curthread ; 
 int /*<<< orphan*/  g_eventlock ; 
 int /*<<< orphan*/  g_events ; 
 int /*<<< orphan*/  g_pending_events ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int hz ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(void)
{

	FUNC3();

	FUNC5(&g_eventlock);
	FUNC2("GEOM events");
	while (!FUNC0(&g_events))
		FUNC4(&g_pending_events, &g_eventlock, PPAUSE,
		    "g_waitidle", hz/5);
	FUNC1("GEOM events");
	FUNC6(&g_eventlock);
	curthread->td_pflags &= ~TDP_GEOM;
}