#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct TYPE_9__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_8__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_10__ {int /*<<< orphan*/  s_addr; } ;
struct pfsyncreq {int pfsyncr_maxupdates; int pfsyncr_defer; int ip_hl; TYPE_2__ ip_dst; TYPE_1__ ip_src; int /*<<< orphan*/  ip_p; int /*<<< orphan*/  ip_ttl; int /*<<< orphan*/  ip_off; int /*<<< orphan*/  ip_tos; int /*<<< orphan*/  ip_v; TYPE_3__ pfsyncr_syncpeer; int /*<<< orphan*/ * pfsyncr_syncdev; } ;
struct pfsync_softc {int sc_maxupdates; int sc_flags; int /*<<< orphan*/  sc_bulkfail_tmo; int /*<<< orphan*/  sc_ureq_sent; TYPE_6__* sc_buckets; TYPE_3__ sc_sync_peer; struct pfsyncreq sc_template; struct ifnet* sc_sync_if; TYPE_4__* sc_ifp; } ;
struct ip {int pfsyncr_maxupdates; int pfsyncr_defer; int ip_hl; TYPE_2__ ip_dst; TYPE_1__ ip_src; int /*<<< orphan*/  ip_p; int /*<<< orphan*/  ip_ttl; int /*<<< orphan*/  ip_off; int /*<<< orphan*/  ip_tos; int /*<<< orphan*/  ip_v; TYPE_3__ pfsyncr_syncpeer; int /*<<< orphan*/ * pfsyncr_syncdev; } ;
struct in_mfilter {int dummy; } ;
struct ifreq {int /*<<< orphan*/  ifr_mtu; } ;
struct ifnet {int if_flags; int /*<<< orphan*/  if_mtu; int /*<<< orphan*/  if_xname; int /*<<< orphan*/  if_drv_flags; struct pfsync_softc* if_softc; } ;
typedef  int /*<<< orphan*/  pfsyncr ;
typedef  scalar_t__ caddr_t ;
struct TYPE_13__ {int /*<<< orphan*/  b_len; } ;
struct TYPE_12__ {int /*<<< orphan*/  debug; } ;
struct TYPE_11__ {int /*<<< orphan*/  if_mtu; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTTY ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int IFF_UP ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  INADDR_PFSYNC_GROUP ; 
 int /*<<< orphan*/  IPPROTO_PFSYNC ; 
 int /*<<< orphan*/  IPTOS_LOWDELAY ; 
 int /*<<< orphan*/  IPVERSION ; 
 int /*<<< orphan*/  IP_DF ; 
 int /*<<< orphan*/  MCLBYTES ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int PFSYNCF_DEFER ; 
 int PFSYNCF_OK ; 
 int /*<<< orphan*/  FUNC0 (struct pfsync_softc*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (struct pfsync_softc*) ; 
 int /*<<< orphan*/  PFSYNC_DFLTTL ; 
 int /*<<< orphan*/  FUNC4 (struct pfsync_softc*) ; 
 int /*<<< orphan*/  PFSYNC_MINPKT ; 
 int /*<<< orphan*/  FUNC5 (struct pfsync_softc*) ; 
 int /*<<< orphan*/  PF_DEBUG_MISC ; 
 int /*<<< orphan*/  PRIV_NETINET_PF ; 
#define  SIOCGETPFSYNC 131 
#define  SIOCSETPFSYNC 130 
#define  SIOCSIFFLAGS 129 
#define  SIOCSIFMTU 128 
 TYPE_5__ V_pf_status ; 
 int /*<<< orphan*/  V_pfsync_carp_adj ; 
 int /*<<< orphan*/ * V_pfsync_defer_ptr ; 
 int /*<<< orphan*/  FUNC6 (struct pfsyncreq*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct pfsync_softc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct pfsyncreq*,int) ; 
 int FUNC10 (struct pfsyncreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC13 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC14 (struct ifreq*) ; 
 struct ifnet* FUNC15 (int /*<<< orphan*/ *) ; 
 struct in_mfilter* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct in_mfilter*) ; 
 int pfsync_buckets ; 
 int /*<<< orphan*/  pfsync_bulk_fail ; 
 int /*<<< orphan*/ * pfsync_defer ; 
 int /*<<< orphan*/  FUNC18 (struct pfsync_softc*) ; 
 int FUNC19 (struct pfsync_softc*,struct ifnet*,struct in_mfilter*) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int,int) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  time_uptime ; 

__attribute__((used)) static int
FUNC28(struct ifnet *ifp, u_long cmd, caddr_t data)
{
	struct pfsync_softc *sc = ifp->if_softc;
	struct ifreq *ifr = (struct ifreq *)data;
	struct pfsyncreq pfsyncr;
	int error;
	int c;

	switch (cmd) {
	case SIOCSIFFLAGS:
		FUNC4(sc);
		if (ifp->if_flags & IFF_UP) {
			ifp->if_drv_flags |= IFF_DRV_RUNNING;
			FUNC5(sc);
			FUNC20();
		} else {
			ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
			FUNC5(sc);
			FUNC21();
		}
		break;
	case SIOCSIFMTU:
		if (!sc->sc_sync_if ||
		    ifr->ifr_mtu <= PFSYNC_MINPKT ||
		    ifr->ifr_mtu > sc->sc_sync_if->if_mtu)
			return (EINVAL);
		if (ifr->ifr_mtu < ifp->if_mtu) {
			for (c = 0; c < pfsync_buckets; c++) {
				FUNC1(&sc->sc_buckets[c]);
				if (sc->sc_buckets[c].b_len > PFSYNC_MINPKT)
					FUNC23(1, c);
				FUNC2(&sc->sc_buckets[c]);
			}
		}
		ifp->if_mtu = ifr->ifr_mtu;
		break;
	case SIOCGETPFSYNC:
		FUNC6(&pfsyncr, sizeof(pfsyncr));
		FUNC4(sc);
		if (sc->sc_sync_if) {
			FUNC26(pfsyncr.pfsyncr_syncdev,
			    sc->sc_sync_if->if_xname, IFNAMSIZ);
		}
		pfsyncr.pfsyncr_syncpeer = sc->sc_sync_peer;
		pfsyncr.pfsyncr_maxupdates = sc->sc_maxupdates;
		pfsyncr.pfsyncr_defer = (PFSYNCF_DEFER ==
		    (sc->sc_flags & PFSYNCF_DEFER));
		FUNC5(sc);
		return (FUNC10(&pfsyncr, FUNC14(ifr),
		    sizeof(pfsyncr)));

	case SIOCSETPFSYNC:
	    {
		struct in_mfilter *imf = NULL;
		struct ifnet *sifp;
		struct ip *ip;

		if ((error = FUNC25(curthread, PRIV_NETINET_PF)) != 0)
			return (error);
		if ((error = FUNC9(FUNC14(ifr), &pfsyncr,
		    sizeof(pfsyncr))))
			return (error);

		if (pfsyncr.pfsyncr_maxupdates > 255)
			return (EINVAL);

		if (pfsyncr.pfsyncr_syncdev[0] == 0)
			sifp = NULL;
		else if ((sifp = FUNC15(pfsyncr.pfsyncr_syncdev)) == NULL)
			return (EINVAL);

		if (sifp != NULL && (
		    pfsyncr.pfsyncr_syncpeer.s_addr == 0 ||
		    pfsyncr.pfsyncr_syncpeer.s_addr ==
		    FUNC11(INADDR_PFSYNC_GROUP)))
			imf = FUNC16(M_WAITOK, 0, 0);

		FUNC4(sc);
		if (pfsyncr.pfsyncr_syncpeer.s_addr == 0)
			sc->sc_sync_peer.s_addr = FUNC11(INADDR_PFSYNC_GROUP);
		else
			sc->sc_sync_peer.s_addr =
			    pfsyncr.pfsyncr_syncpeer.s_addr;

		sc->sc_maxupdates = pfsyncr.pfsyncr_maxupdates;
		if (pfsyncr.pfsyncr_defer) {
			sc->sc_flags |= PFSYNCF_DEFER;
			V_pfsync_defer_ptr = pfsync_defer;
		} else {
			sc->sc_flags &= ~PFSYNCF_DEFER;
			V_pfsync_defer_ptr = NULL;
		}

		if (sifp == NULL) {
			if (sc->sc_sync_if)
				FUNC13(sc->sc_sync_if);
			sc->sc_sync_if = NULL;
			FUNC18(sc);
			FUNC5(sc);
			break;
		}

		for (c = 0; c < pfsync_buckets; c++) {
			FUNC1(&sc->sc_buckets[c]);
			if (sc->sc_buckets[c].b_len > PFSYNC_MINPKT &&
			    (sifp->if_mtu < sc->sc_ifp->if_mtu ||
			    (sc->sc_sync_if != NULL &&
			    sifp->if_mtu < sc->sc_sync_if->if_mtu) ||
			    sifp->if_mtu < MCLBYTES - sizeof(struct ip)))
				FUNC23(1, c);
			FUNC2(&sc->sc_buckets[c]);
		}

		FUNC18(sc);

		if (sc->sc_sync_peer.s_addr == FUNC11(INADDR_PFSYNC_GROUP)) {
			error = FUNC19(sc, sifp, imf);
			if (error) {
				FUNC13(sifp);
				FUNC17(imf);
				FUNC5(sc);
				return (error);
			}
		}
		if (sc->sc_sync_if)
			FUNC13(sc->sc_sync_if);
		sc->sc_sync_if = sifp;

		ip = &sc->sc_template;
		FUNC6(ip, sizeof(*ip));
		ip->ip_v = IPVERSION;
		ip->ip_hl = sizeof(sc->sc_template) >> 2;
		ip->ip_tos = IPTOS_LOWDELAY;
		/* len and id are set later. */
		ip->ip_off = FUNC12(IP_DF);
		ip->ip_ttl = PFSYNC_DFLTTL;
		ip->ip_p = IPPROTO_PFSYNC;
		ip->ip_src.s_addr = INADDR_ANY;
		ip->ip_dst.s_addr = sc->sc_sync_peer.s_addr;

		/* Request a full state table update. */
		if ((sc->sc_flags & PFSYNCF_OK) && &carp_demote_adj_p)
			FUNC8)(V_pfsync_carp_adj,
			    "pfsync bulk start");
		sc->sc_flags &= ~PFSYNCF_OK;
		if (V_pf_status.debug >= PF_DEBUG_MISC)
			FUNC24("pfsync: requesting bulk update\n");
		FUNC5(sc);
		FUNC1(&sc->sc_buckets[0]);
		FUNC22(0, 0);
		FUNC2(&sc->sc_buckets[0]);
		FUNC0(sc);
		sc->sc_ureq_sent = time_uptime;
		FUNC7(&sc->sc_bulkfail_tmo, 5 * hz, pfsync_bulk_fail,
		    sc);
		FUNC3(sc);

		break;
	    }
	default:
		return (ENOTTY);
	}

	return (0);
}