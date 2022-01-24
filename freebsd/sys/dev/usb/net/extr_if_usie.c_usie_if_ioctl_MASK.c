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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int u_long ;
struct usie_softc {int sc_rssi; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_dev; } ;
struct ifnet {int if_flags; int if_drv_flags; struct usie_softc* if_softc; } ;
struct ifmediareq {int ifm_count; } ;
struct ieee80211req_sta_info {int isi_len; int isi_rssi; } ;
struct ieee80211req {scalar_t__ i_data; int /*<<< orphan*/  i_type; } ;
typedef  int /*<<< orphan*/  si ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  IEEE80211_IOC_STA_INFO ; 
 int IFF_DRV_RUNNING ; 
 int IFF_UP ; 
#define  SIOCG80211 132 
#define  SIOCGIFMEDIA 131 
#define  SIOCSIFADDR 130 
#define  SIOCSIFCAP 129 
#define  SIOCSIFFLAGS 128 
 int /*<<< orphan*/  USIE_CNS_ID_RSSI ; 
 int /*<<< orphan*/  USIE_CNS_OB_RSSI ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211req_sta_info*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211req_sta_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct usie_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usie_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct usie_softc*) ; 

__attribute__((used)) static int
FUNC9(struct ifnet *ifp, u_long cmd, caddr_t data)
{
	struct usie_softc *sc = ifp->if_softc;
	struct ieee80211req *ireq;
	struct ieee80211req_sta_info si;
	struct ifmediareq *ifmr;

	switch (cmd) {
	case SIOCSIFFLAGS:
		if (ifp->if_flags & IFF_UP) {
			if (!(ifp->if_drv_flags & IFF_DRV_RUNNING))
				FUNC7(sc);
		} else {
			if (ifp->if_drv_flags & IFF_DRV_RUNNING)
				FUNC8(sc);
		}
		break;

	case SIOCSIFCAP:
		if (!(ifp->if_drv_flags & IFF_DRV_RUNNING)) {
			FUNC2(sc->sc_dev,
			    "Connect to the network first.\n");
			break;
		}
		FUNC4(&sc->sc_mtx);
		FUNC6(sc, USIE_CNS_ID_RSSI, USIE_CNS_OB_RSSI);
		FUNC5(&sc->sc_mtx);
		break;

	case SIOCG80211:
		ireq = (struct ieee80211req *)data;

		if (ireq->i_type != IEEE80211_IOC_STA_INFO)
			break;

		FUNC3(&si, 0, sizeof(si));
		si.isi_len = sizeof(si);
		/*
		 * ifconfig expects RSSI in 0.5dBm units
		 * relative to the noise floor.
		 */
		si.isi_rssi = 2 * sc->sc_rssi;
		if (FUNC1(&si, (uint8_t *)ireq->i_data + 8,
		    sizeof(struct ieee80211req_sta_info)))
			FUNC0("copyout failed\n");
		FUNC0("80211\n");
		break;

	case SIOCGIFMEDIA:		/* to fool ifconfig */
		ifmr = (struct ifmediareq *)data;
		ifmr->ifm_count = 1;
		FUNC0("media\n");
		break;

	case SIOCSIFADDR:
		break;

	default:
		return (EINVAL);
	}
	return (0);
}