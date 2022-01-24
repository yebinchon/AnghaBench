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
struct llentry {int la_flags; int la_preempt; scalar_t__ la_asked; int /*<<< orphan*/  lle_timer; scalar_t__ la_expire; int /*<<< orphan*/  ln_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARP_LLINFO_REACHABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct llentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LLENTRY_RESOLVED ; 
 int /*<<< orphan*/  FUNC1 (struct llentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct llentry*) ; 
 int LLE_STATIC ; 
 int /*<<< orphan*/  FUNC3 (struct llentry*) ; 
 int V_arp_maxtries ; 
 int V_arpt_keep ; 
 int V_arpt_rexmit ; 
 int /*<<< orphan*/  arptimer ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct llentry*) ; 
 int hz ; 
 int /*<<< orphan*/  lle_event ; 
 scalar_t__ time_uptime ; 

__attribute__((used)) static void
FUNC5(struct llentry *la)
{
	int canceled, wtime;

	FUNC3(la);

	la->ln_state = ARP_LLINFO_REACHABLE;
	FUNC0(lle_event, la, LLENTRY_RESOLVED);

	if (!(la->la_flags & LLE_STATIC)) {
		FUNC1(la);
		la->la_expire = time_uptime + V_arpt_keep;
		wtime = V_arpt_keep - V_arp_maxtries * V_arpt_rexmit;
		if (wtime < 0)
			wtime = V_arpt_keep;
		canceled = FUNC4(&la->lle_timer,
		    hz * wtime, arptimer, la);
		if (canceled)
			FUNC2(la);
	}
	la->la_asked = 0;
	la->la_preempt = V_arp_maxtries;
}