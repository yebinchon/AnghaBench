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
struct lagg_port {scalar_t__ lp_detaching; int /*<<< orphan*/  lp_mc_head; int /*<<< orphan*/  lp_softc; } ;
struct lagg_mc {scalar_t__ mc_ifma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_LAGG ; 
 struct lagg_mc* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct lagg_mc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lagg_mc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  lagg_mc ; 
 int /*<<< orphan*/  mc_entries ; 

__attribute__((used)) static int
FUNC5(struct lagg_port *lp)
{
	struct lagg_mc *mc;

	FUNC0(lp->lp_softc);
	while ((mc = FUNC1(&lp->lp_mc_head)) != NULL) {
		FUNC2(&lp->lp_mc_head, mc, lagg_mc, mc_entries);
		if (mc->mc_ifma && lp->lp_detaching == 0)
			FUNC4(mc->mc_ifma);
		FUNC3(mc, M_LAGG);
	}
	return (0);
}