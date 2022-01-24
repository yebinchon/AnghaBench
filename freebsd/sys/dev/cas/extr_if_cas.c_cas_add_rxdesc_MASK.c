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
typedef  size_t u_int ;
struct cas_softc {int sc_rxdptr; TYPE_1__* sc_rxdsoft; int /*<<< orphan*/  sc_rdmatag; } ;
struct TYPE_2__ {int /*<<< orphan*/  rxds_dmamap; } ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct cas_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cas_softc*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int CAS_NRXDESC ; 
 int CAS_NRXDESC_MASK ; 
 int /*<<< orphan*/  CAS_RX_KICK ; 
 int /*<<< orphan*/  FUNC3 (struct cas_softc*,int,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct cas_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void
FUNC6(struct cas_softc *sc, u_int idx)
{

	FUNC1(sc, MA_OWNED);

	FUNC5(sc->sc_rdmatag, sc->sc_rxdsoft[idx].rxds_dmamap,
	    BUS_DMASYNC_PREREAD);
	FUNC3(sc, sc->sc_rxdptr, idx);
	sc->sc_rxdptr = FUNC2(sc->sc_rxdptr);

	/*
	 * Update the RX kick register.  This register has to point to the
	 * descriptor after the last valid one (before the current batch)
	 * and for optimum performance should be incremented in multiples
	 * of 4 (the DMA engine fetches/updates descriptors in batches of 4).
	 */
	if ((sc->sc_rxdptr % 4) == 0) {
		FUNC0(sc, BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
		FUNC4(sc, CAS_RX_KICK,
		    (sc->sc_rxdptr + CAS_NRXDESC - 4) & CAS_NRXDESC_MASK);
	}
}