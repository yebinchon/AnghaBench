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
typedef  scalar_t__ uint32_t ;
struct ifnet {int dummy; } ;
struct cas_softc {scalar_t__ sc_txfree; int /*<<< orphan*/  sc_tick_ch; int /*<<< orphan*/  sc_mii; struct ifnet* sc_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cas_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CAS_MAC_EXCESS_COLL_CNT ; 
 int /*<<< orphan*/  CAS_MAC_FIRST_COLL_CNT ; 
 int /*<<< orphan*/  CAS_MAC_LATE_COLL_CNT ; 
 int /*<<< orphan*/  CAS_MAC_NORM_COLL_CNT ; 
 int /*<<< orphan*/  CAS_MAC_RX_ALIGN_ERR ; 
 int /*<<< orphan*/  CAS_MAC_RX_CODE_VIOL ; 
 int /*<<< orphan*/  CAS_MAC_RX_CRC_ERR_CNT ; 
 int /*<<< orphan*/  CAS_MAC_RX_LEN_ERR_CNT ; 
 scalar_t__ CAS_MAXTXFREE ; 
 scalar_t__ FUNC1 (struct cas_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cas_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IFCOUNTER_COLLISIONS ; 
 int /*<<< orphan*/  IFCOUNTER_IERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct cas_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct cas_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct cas_softc*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(void *arg)
{
	struct cas_softc *sc = arg;
	struct ifnet *ifp = sc->sc_ifp;
	uint32_t v;

	FUNC0(sc, MA_OWNED);

	/*
	 * Unload collision and error counters.
	 */
	FUNC6(ifp, IFCOUNTER_COLLISIONS,
	    FUNC1(sc, CAS_MAC_NORM_COLL_CNT) +
	    FUNC1(sc, CAS_MAC_FIRST_COLL_CNT));
	v = FUNC1(sc, CAS_MAC_EXCESS_COLL_CNT) +
	    FUNC1(sc, CAS_MAC_LATE_COLL_CNT);
	FUNC6(ifp, IFCOUNTER_COLLISIONS, v);
	FUNC6(ifp, IFCOUNTER_OERRORS, v);
	FUNC6(ifp, IFCOUNTER_IERRORS,
	    FUNC1(sc, CAS_MAC_RX_LEN_ERR_CNT) +
	    FUNC1(sc, CAS_MAC_RX_ALIGN_ERR) +
	    FUNC1(sc, CAS_MAC_RX_CRC_ERR_CNT) +
	    FUNC1(sc, CAS_MAC_RX_CODE_VIOL));

	/*
	 * Then clear the hardware counters.
	 */
	FUNC2(sc, CAS_MAC_NORM_COLL_CNT, 0);
	FUNC2(sc, CAS_MAC_FIRST_COLL_CNT, 0);
	FUNC2(sc, CAS_MAC_EXCESS_COLL_CNT, 0);
	FUNC2(sc, CAS_MAC_LATE_COLL_CNT, 0);
	FUNC2(sc, CAS_MAC_RX_LEN_ERR_CNT, 0);
	FUNC2(sc, CAS_MAC_RX_ALIGN_ERR, 0);
	FUNC2(sc, CAS_MAC_RX_CRC_ERR_CNT, 0);
	FUNC2(sc, CAS_MAC_RX_CODE_VIOL, 0);

	FUNC7(sc->sc_mii);

	if (sc->sc_txfree != CAS_MAXTXFREE)
		FUNC4(sc);

	FUNC5(sc);

	FUNC3(&sc->sc_tick_ch, hz, cas_tick, sc);
}