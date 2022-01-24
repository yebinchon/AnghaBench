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
struct link_config {int supported; int requested_speed; int /*<<< orphan*/  requested_fc; int /*<<< orphan*/  requested_aneg; } ;
struct ifmedia {int /*<<< orphan*/  ifm_media; } ;
struct port_info {scalar_t__ up_vis; struct adapter* adapter; struct link_config link_cfg; struct ifmedia media; } ;
struct ifnet {struct vi_info* if_softc; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTONEG_DISABLE ; 
 int /*<<< orphan*/  AUTONEG_ENABLE ; 
 int ENOTSUP ; 
 int FW_PORT_CAP32_ANEG ; 
 scalar_t__ IFM_AUTO ; 
 int IFM_ETH_RXPAUSE ; 
 int IFM_ETH_TXPAUSE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int INTR_OK ; 
 int /*<<< orphan*/  PAUSE_AUTONEG ; 
 int /*<<< orphan*/  PAUSE_RX ; 
 int /*<<< orphan*/  PAUSE_TX ; 
 int /*<<< orphan*/  FUNC2 (struct port_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct port_info*) ; 
 int SLEEP_OK ; 
 int FUNC4 (struct port_info*) ; 
 int FUNC5 (struct adapter*,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct port_info*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

int
FUNC9(struct ifnet *ifp)
{
	struct vi_info *vi = ifp->if_softc;
	struct port_info *pi = vi->pi;
	struct ifmedia *ifm = &pi->media;
	struct link_config *lc = &pi->link_cfg;
	struct adapter *sc = pi->adapter;
	int rc;

	rc = FUNC5(sc, NULL, SLEEP_OK | INTR_OK, "t4mec");
	if (rc != 0)
		return (rc);
	FUNC2(pi);
	if (FUNC1(ifm->ifm_media) == IFM_AUTO) {
		/* ifconfig .. media autoselect */
		if (!(lc->supported & FW_PORT_CAP32_ANEG)) {
			rc = ENOTSUP; /* AN not supported by transceiver */
			goto done;
		}
		lc->requested_aneg = AUTONEG_ENABLE;
		lc->requested_speed = 0;
		lc->requested_fc |= PAUSE_AUTONEG;
	} else {
		lc->requested_aneg = AUTONEG_DISABLE;
		lc->requested_speed =
		    FUNC8(ifm->ifm_media) / 1000000;
		lc->requested_fc = 0;
		if (FUNC0(ifm->ifm_media) & IFM_ETH_RXPAUSE)
			lc->requested_fc |= PAUSE_RX;
		if (FUNC0(ifm->ifm_media) & IFM_ETH_TXPAUSE)
			lc->requested_fc |= PAUSE_TX;
	}
	if (pi->up_vis > 0) {
		FUNC7(pi);
		rc = FUNC4(pi);
	}
done:
	FUNC3(pi);
	FUNC6(sc, 0);
	return (rc);
}