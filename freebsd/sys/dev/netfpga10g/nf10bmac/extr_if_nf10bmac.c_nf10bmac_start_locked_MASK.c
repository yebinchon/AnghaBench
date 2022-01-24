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
struct nf10bmac_softc {int nf10bmac_flags; scalar_t__ nf10bmac_watchdog_timer; } ;
struct mbuf {int dummy; } ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/  if_snd; struct nf10bmac_softc* if_softc; } ;

/* Variables and functions */
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int NF10BMAC_FLAGS_LINK ; 
 int /*<<< orphan*/  FUNC2 (struct nf10bmac_softc*) ; 
 int NF10BMAC_MAX_PKTS ; 
 scalar_t__ NF10BMAC_WATCHDOG_TIME ; 
 int FUNC3 (struct nf10bmac_softc*,struct mbuf*) ; 

__attribute__((used)) static void
FUNC4(struct ifnet *ifp)
{
	struct nf10bmac_softc *sc;
	int count, error;

	sc = ifp->if_softc;
	FUNC2(sc);

	if ((ifp->if_drv_flags & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
	    IFF_DRV_RUNNING || (sc->nf10bmac_flags & NF10BMAC_FLAGS_LINK) == 0)
		return;

#ifdef ENABLE_WATCHDOG
	/*
	 * Disable the watchdog while sending, we are batching packets.
	 * Though we should never reach 5 seconds, and are holding the lock,
	 * but who knows.
	 */
	sc->nf10bmac_watchdog_timer = 0;
#endif

	/* Send up to MAX_PKTS_PER_TX_LOOP packets. */
	for (count = 0; !FUNC1(&ifp->if_snd) &&
	    count < NF10BMAC_MAX_PKTS; count++) {
		struct mbuf *m;

		FUNC0(&ifp->if_snd, m);
		if (m == NULL)
			break;
		error = FUNC3(sc, m);
		if (error != 0)
			break;
	}

#ifdef ENABLE_WATCHDOG
done:
	/* If the IP core walks into Nekromanteion try to bail out. */
	/* XXX-BZ useless until we have direct FIFO fill status feedback. */
	if (count > 0)
		sc->nf10bmac_watchdog_timer = NF10BMAC_WATCHDOG_TIME;
#endif
}