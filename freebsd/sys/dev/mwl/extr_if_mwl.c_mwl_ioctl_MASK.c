#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct TYPE_6__ {int /*<<< orphan*/  mst_rx_packets; int /*<<< orphan*/  mst_tx_packets; int /*<<< orphan*/  hw_stats; } ;
struct mwl_softc {TYPE_4__ sc_stats; int /*<<< orphan*/  sc_mh; } ;
struct mwl_diag {int dummy; } ;
struct ifreq {int dummy; } ;
struct ieee80211com {struct mwl_softc* ic_softc; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* if_get_counter ) (TYPE_1__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int ENOTTY ; 
 int /*<<< orphan*/  IFCOUNTER_IPACKETS ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int /*<<< orphan*/  FUNC0 (struct mwl_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mwl_softc*) ; 
#define  SIOCGMVDIAG 130 
#define  SIOCGMVRESET 129 
#define  SIOCGMVSTATS 128 
 int FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* ifp ; 
 int /*<<< orphan*/  FUNC3 (struct ifreq*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct mwl_softc*,struct mwl_diag*) ; 
 int FUNC6 (struct mwl_softc*,struct mwl_diag*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct ieee80211com *ic, u_long cmd, void *data)
{
	struct mwl_softc *sc = ic->ic_softc;
	struct ifreq *ifr = data;
	int error = 0;

	switch (cmd) {
	case SIOCGMVSTATS:
		FUNC4(sc->sc_mh, &sc->sc_stats.hw_stats);
#if 0
		/* NB: embed these numbers to get a consistent view */
		sc->sc_stats.mst_tx_packets =
		    ifp->if_get_counter(ifp, IFCOUNTER_OPACKETS);
		sc->sc_stats.mst_rx_packets =
		    ifp->if_get_counter(ifp, IFCOUNTER_IPACKETS);
#endif
		/*
		 * NB: Drop the softc lock in case of a page fault;
		 * we'll accept any potential inconsisentcy in the
		 * statistics.  The alternative is to copy the data
		 * to a local structure.
		 */
		return (FUNC2(&sc->sc_stats, FUNC3(ifr),
		    sizeof (sc->sc_stats)));
#ifdef MWL_DIAGAPI
	case SIOCGMVDIAG:
		/* XXX check privs */
		return mwl_ioctl_diag(sc, (struct mwl_diag *) ifr);
	case SIOCGMVRESET:
		/* XXX check privs */
		MWL_LOCK(sc);
		error = mwl_ioctl_reset(sc,(struct mwl_diag *) ifr); 
		MWL_UNLOCK(sc);
		break;
#endif /* MWL_DIAGAPI */
	default:
		error = ENOTTY;
		break;
	}
	return (error);
}