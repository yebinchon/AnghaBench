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
typedef  int u_int ;
struct link_config {scalar_t__ requested_aneg; int supported; int requested_fc; int requested_speed; } ;
struct ifmedia {TYPE_1__* ifm_cur; } ;
struct port_info {struct link_config link_cfg; struct ifmedia media; } ;
struct TYPE_2__ {int /*<<< orphan*/  ifm_media; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_DISABLE ; 
 int FW_PORT_CAP32_ANEG ; 
 int IFM_AUTO ; 
 int IFM_ETHER ; 
 int IFM_ETH_RXPAUSE ; 
 int IFM_ETH_TXPAUSE ; 
 int IFM_FDX ; 
 scalar_t__ IFM_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int PAUSE_RX ; 
 int PAUSE_TX ; 
 int /*<<< orphan*/  FUNC1 (struct port_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifmedia*,int) ; 
 int FUNC3 (struct port_info*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct port_info*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(struct port_info *pi)
{
	struct link_config *lc;
	struct ifmedia *ifm;
	int mword;
	u_int speed;

	FUNC1(pi);

	/* Leave current media alone if it's already set to IFM_NONE. */
	ifm = &pi->media;
	if (ifm->ifm_cur != NULL &&
	    FUNC0(ifm->ifm_cur->ifm_media) == IFM_NONE)
		return;

	lc = &pi->link_cfg;
	if (lc->requested_aneg != AUTONEG_DISABLE &&
	    lc->supported & FW_PORT_CAP32_ANEG) {
		FUNC2(ifm, IFM_ETHER | IFM_AUTO);
		return;
	}
	mword = IFM_ETHER | IFM_FDX;
	if (lc->requested_fc & PAUSE_TX)
		mword |= IFM_ETH_TXPAUSE;
	if (lc->requested_fc & PAUSE_RX)
		mword |= IFM_ETH_RXPAUSE;
	if (lc->requested_speed == 0)
		speed = FUNC4(pi) * 1000;	/* Gbps -> Mbps */
	else
		speed = lc->requested_speed;
	mword |= FUNC3(pi, FUNC5(speed));
	FUNC2(ifm, mword);
}