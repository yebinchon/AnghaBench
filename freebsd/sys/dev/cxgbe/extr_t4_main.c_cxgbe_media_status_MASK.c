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
struct vi_info {struct port_info* pi; } ;
struct link_config {int link_ok; int fc; int /*<<< orphan*/  speed; } ;
struct port_info {scalar_t__ up_vis; struct link_config link_cfg; struct adapter* adapter; } ;
struct ifnet {struct vi_info* if_softc; } ;
struct ifmediareq {int ifm_active; int /*<<< orphan*/  ifm_status; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFM_ACTIVE ; 
 int /*<<< orphan*/  IFM_AVALID ; 
 int IFM_ETHER ; 
 int IFM_ETH_RXPAUSE ; 
 int IFM_ETH_TXPAUSE ; 
 int IFM_FDX ; 
 int INTR_OK ; 
 int PAUSE_RX ; 
 int PAUSE_TX ; 
 int /*<<< orphan*/  FUNC0 (struct port_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct port_info*) ; 
 int SLEEP_OK ; 
 scalar_t__ FUNC2 (struct adapter*,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct port_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct port_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct port_info*) ; 

void
FUNC8(struct ifnet *ifp, struct ifmediareq *ifmr)
{
	struct vi_info *vi = ifp->if_softc;
	struct port_info *pi = vi->pi;
	struct adapter *sc = pi->adapter;
	struct link_config *lc = &pi->link_cfg;

	if (FUNC2(sc, NULL, SLEEP_OK | INTR_OK, "t4med") != 0)
		return;
	FUNC0(pi);

	if (pi->up_vis == 0) {
		/*
		 * If all the interfaces are administratively down the firmware
		 * does not report transceiver changes.  Refresh port info here
		 * so that ifconfig displays accurate ifmedia at all times.
		 * This is the only reason we have a synchronized op in this
		 * function.  Just PORT_LOCK would have been enough otherwise.
		 */
		FUNC7(pi);
		FUNC3(pi);
	}

	/* ifm_status */
	ifmr->ifm_status = IFM_AVALID;
	if (lc->link_ok == false)
		goto done;
	ifmr->ifm_status |= IFM_ACTIVE;

	/* ifm_active */
	ifmr->ifm_active = IFM_ETHER | IFM_FDX;
	ifmr->ifm_active &= ~(IFM_ETH_TXPAUSE | IFM_ETH_RXPAUSE);
	if (lc->fc & PAUSE_RX)
		ifmr->ifm_active |= IFM_ETH_RXPAUSE;
	if (lc->fc & PAUSE_TX)
		ifmr->ifm_active |= IFM_ETH_TXPAUSE;
	ifmr->ifm_active |= FUNC5(pi, FUNC6(lc->speed));
done:
	FUNC1(pi);
	FUNC4(sc, 0);
}