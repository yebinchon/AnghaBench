#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int tx; int rx; int /*<<< orphan*/  autoneg; } ;
struct TYPE_3__ {int tx; int rx; int /*<<< orphan*/  autoneg; } ;
struct bnxt_link_info {scalar_t__ link_up; scalar_t__ last_link_up; int link_speed; TYPE_2__ flow_ctrl; TYPE_1__ last_flow_ctrl; int /*<<< orphan*/  duplex; int /*<<< orphan*/  last_duplex; } ;
struct bnxt_softc {int /*<<< orphan*/  media; int /*<<< orphan*/  dev; struct bnxt_link_info link_info; int /*<<< orphan*/  ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnxt_link_info*) ; 
 int /*<<< orphan*/  HWRM_PORT_PHY_QCFG_OUTPUT_DUPLEX_CFG_FULL ; 
 int IFM_AUTO ; 
 int IFM_ETHER ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  LINK_STATE_DOWN ; 
 int /*<<< orphan*/  LINK_STATE_UP ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt_link_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

void
FUNC8(struct bnxt_softc *softc)
{
	struct bnxt_link_info *link_info = &softc->link_info;
	const char *duplex = NULL, *flow_ctrl = NULL;

	if (link_info->link_up == link_info->last_link_up) {
		if (!link_info->link_up)
			return;
		if ((link_info->duplex == link_info->last_duplex) &&
                    (!(FUNC0(link_info))))
			return;
	}

	if (link_info->link_up) {
		if (link_info->duplex ==
		    HWRM_PORT_PHY_QCFG_OUTPUT_DUPLEX_CFG_FULL)
			duplex = "full duplex";
		else
			duplex = "half duplex";
		if (link_info->flow_ctrl.tx & link_info->flow_ctrl.rx)
			flow_ctrl = "FC - receive & transmit";
		else if (link_info->flow_ctrl.tx)
			flow_ctrl = "FC - transmit";
		else if (link_info->flow_ctrl.rx)
			flow_ctrl = "FC - receive";
		else
			flow_ctrl = "FC - none";
		FUNC5(softc->ctx, LINK_STATE_UP,
		    FUNC1(100));
		FUNC4(softc->dev, "Link is UP %s, %s - %d Mbps \n", duplex,
		    flow_ctrl, (link_info->link_speed * 100));
	} else {
		FUNC5(softc->ctx, LINK_STATE_DOWN,
		    FUNC3(&softc->link_info));
		FUNC4(softc->dev, "Link is Down\n");
	}

	link_info->last_link_up = link_info->link_up;
	link_info->last_duplex = link_info->duplex;
	link_info->last_flow_ctrl.tx = link_info->flow_ctrl.tx;
	link_info->last_flow_ctrl.rx = link_info->flow_ctrl.rx;
	link_info->last_flow_ctrl.autoneg = link_info->flow_ctrl.autoneg;
	/* update media types */
	FUNC6(softc->media);
	FUNC2(softc);
	FUNC7(softc->media, IFM_ETHER | IFM_AUTO);
}