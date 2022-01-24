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
struct TYPE_2__ {int /*<<< orphan*/  lip_state; } ;
struct lacp_port {int /*<<< orphan*/  lp_selected; TYPE_1__ lp_partner; } ;
struct lacp_peerinfo {int /*<<< orphan*/  lip_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  LACP_STATE_AGGREGATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lacp_port*) ; 
 int /*<<< orphan*/  LACP_UNSELECTED ; 
 scalar_t__ FUNC2 (TYPE_1__*,struct lacp_peerinfo const*) ; 

__attribute__((used)) static void
FUNC3(struct lacp_port *lp,
    const struct lacp_peerinfo *info)
{

	FUNC1(lp);

	if (FUNC2(&lp->lp_partner, info) ||
	    !FUNC0(lp->lp_partner.lip_state, info->lip_state,
	    LACP_STATE_AGGREGATION)) {
		lp->lp_selected = LACP_UNSELECTED;
		/* mux machine will clean up lp->lp_aggregator */
	}
}