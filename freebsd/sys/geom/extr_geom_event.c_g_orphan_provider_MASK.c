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
struct g_provider {int error; int flags; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int G_PF_ORPHAN ; 
 int /*<<< orphan*/  G_T_TOPOLOGY ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct g_provider*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_doorstep ; 
 int /*<<< orphan*/  g_eventlock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct g_provider*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  g_wait_event ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  orphan ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(struct g_provider *pp, int error)
{

	/* G_VALID_PROVIDER(pp)  We likely lack topology lock */
	FUNC2(G_T_TOPOLOGY, "g_orphan_provider(%p(%s), %d)",
	    pp, pp->name, error);
	FUNC0(error != 0,
	    ("g_orphan_provider(%p(%s), 0) error must be non-zero\n",
	     pp, pp->name));
	
	pp->error = error;
	FUNC3(&g_eventlock);
	FUNC0(!(pp->flags & G_PF_ORPHAN),
	    ("g_orphan_provider(%p(%s)), already an orphan", pp, pp->name));
	pp->flags |= G_PF_ORPHAN;
	FUNC1(&g_doorstep, pp, orphan);
	FUNC4(&g_eventlock);
	FUNC5(&g_wait_event);
}