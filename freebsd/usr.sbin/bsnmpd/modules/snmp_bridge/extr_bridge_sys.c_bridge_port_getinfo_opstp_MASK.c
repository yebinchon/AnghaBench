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
typedef  int /*<<< orphan*/  uint16_t ;
struct ifbpstpreq {int /*<<< orphan*/  ifbp_design_port; int /*<<< orphan*/  ifbp_design_bridge; int /*<<< orphan*/  ifbp_design_root; int /*<<< orphan*/  ifbp_design_cost; int /*<<< orphan*/  ifbp_fwd_trans; } ;
struct bridge_port {int /*<<< orphan*/  design_port; int /*<<< orphan*/  design_bridge; int /*<<< orphan*/  design_root; int /*<<< orphan*/  design_cost; int /*<<< orphan*/  fwd_trans; int /*<<< orphan*/  enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  dot1dStpPortEnable_enabled ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct ifbpstpreq *bp_stp, struct bridge_port *bp)
{
	bp->enable = dot1dStpPortEnable_enabled;
	bp->fwd_trans = bp_stp->ifbp_fwd_trans;
	bp->design_cost = bp_stp->ifbp_design_cost;
	FUNC1(bp_stp->ifbp_design_root, bp->design_root);
	FUNC1(bp_stp->ifbp_design_bridge, bp->design_bridge);
	FUNC0(&(bp_stp->ifbp_design_port), &(bp->design_port),
	    sizeof(uint16_t));
}