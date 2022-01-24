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
struct TYPE_2__ {int /*<<< orphan*/  tx_desc_map; int /*<<< orphan*/  tx_desc_tag; } ;
struct nfe_softc {scalar_t__ nfe_link; int rxtxctl; int nfe_watchdog_timer; TYPE_1__ txq; } ;
struct mbuf {int dummy; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct nfe_softc*) ; 
 int /*<<< orphan*/  NFE_RXTX_CTL ; 
 int NFE_RXTX_KICKTX ; 
 int /*<<< orphan*/  FUNC1 (struct nfe_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct mbuf* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct mbuf*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct nfe_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct nfe_softc*,struct mbuf**) ; 

__attribute__((used)) static void
FUNC11(if_t ifp)
{
	struct nfe_softc *sc = FUNC6(ifp);
	struct mbuf *m0;
	int enq = 0;

	FUNC0(sc);

	if ((FUNC5(ifp) & (IFF_DRV_RUNNING | IFF_DRV_OACTIVE)) !=
	    IFF_DRV_RUNNING || sc->nfe_link == 0)
		return;

	while (!FUNC7(ifp)) {
		m0 = FUNC3(ifp);

		if (m0 == NULL)
			break;

		if (FUNC10(sc, &m0) != 0) {
			if (m0 == NULL)
				break;
			FUNC8(ifp, m0);
			FUNC9(ifp, IFF_DRV_OACTIVE, 0);
			break;
		}
		enq++;
		FUNC4(ifp, m0);
	}

	if (enq > 0) {
		FUNC2(sc->txq.tx_desc_tag, sc->txq.tx_desc_map,
		    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

		/* kick Tx */
		FUNC1(sc, NFE_RXTX_CTL, NFE_RXTX_KICKTX | sc->rxtxctl);

		/*
		 * Set a timeout in case the chip goes out to lunch.
		 */
		sc->nfe_watchdog_timer = 5;
	}
}