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
struct gem_softc {int /*<<< orphan*/  sc_tick_ch; int /*<<< orphan*/  sc_mii; struct ifnet* sc_ifp; } ;

/* Variables and functions */
 scalar_t__ EJUSTRETURN ; 
 scalar_t__ FUNC0 (struct gem_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gem_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gem_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GEM_MAC_EXCESS_COLL_CNT ; 
 int /*<<< orphan*/  GEM_MAC_FIRST_COLL_CNT ; 
 int /*<<< orphan*/  GEM_MAC_LATE_COLL_CNT ; 
 int /*<<< orphan*/  GEM_MAC_NORM_COLL_CNT ; 
 int /*<<< orphan*/  GEM_MAC_RX_ALIGN_ERR ; 
 int /*<<< orphan*/  GEM_MAC_RX_CODE_VIOL ; 
 int /*<<< orphan*/  GEM_MAC_RX_CRC_ERR_CNT ; 
 int /*<<< orphan*/  GEM_MAC_RX_LEN_ERR_CNT ; 
 int /*<<< orphan*/  IFCOUNTER_COLLISIONS ; 
 int /*<<< orphan*/  IFCOUNTER_IERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct gem_softc*) ; 
 scalar_t__ FUNC4 (struct gem_softc*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	struct gem_softc *sc = arg;
	struct ifnet *ifp = sc->sc_ifp;
	uint32_t v;

	FUNC2(sc, MA_OWNED);

	/*
	 * Unload collision and error counters.
	 */
	FUNC5(ifp, IFCOUNTER_COLLISIONS,
	    FUNC0(sc, GEM_MAC_NORM_COLL_CNT) +
	    FUNC0(sc, GEM_MAC_FIRST_COLL_CNT));
	v = FUNC0(sc, GEM_MAC_EXCESS_COLL_CNT) +
	    FUNC0(sc, GEM_MAC_LATE_COLL_CNT);
	FUNC5(ifp, IFCOUNTER_COLLISIONS, v);
	FUNC5(ifp, IFCOUNTER_OERRORS, v);
	FUNC5(ifp, IFCOUNTER_IERRORS,
	    FUNC0(sc, GEM_MAC_RX_LEN_ERR_CNT) +
	    FUNC0(sc, GEM_MAC_RX_ALIGN_ERR) +
	    FUNC0(sc, GEM_MAC_RX_CRC_ERR_CNT) +
	    FUNC0(sc, GEM_MAC_RX_CODE_VIOL));

	/*
	 * Then clear the hardware counters.
	 */
	FUNC1(sc, GEM_MAC_NORM_COLL_CNT, 0);
	FUNC1(sc, GEM_MAC_FIRST_COLL_CNT, 0);
	FUNC1(sc, GEM_MAC_EXCESS_COLL_CNT, 0);
	FUNC1(sc, GEM_MAC_LATE_COLL_CNT, 0);
	FUNC1(sc, GEM_MAC_RX_LEN_ERR_CNT, 0);
	FUNC1(sc, GEM_MAC_RX_ALIGN_ERR, 0);
	FUNC1(sc, GEM_MAC_RX_CRC_ERR_CNT, 0);
	FUNC1(sc, GEM_MAC_RX_CODE_VIOL, 0);

	FUNC6(sc->sc_mii);

	if (FUNC4(sc) == EJUSTRETURN)
		return;

	FUNC3(&sc->sc_tick_ch, hz, gem_tick, sc);
}