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
struct ifnet {int dummy; } ;
struct hme_softc {int /*<<< orphan*/  sc_tick_ch; int /*<<< orphan*/  sc_mii; struct ifnet* sc_ifp; } ;

/* Variables and functions */
 scalar_t__ EJUSTRETURN ; 
 int /*<<< orphan*/  FUNC0 (struct hme_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HME_MACI_EXCNT ; 
 int /*<<< orphan*/  HME_MACI_FCCNT ; 
 int /*<<< orphan*/  HME_MACI_LTCNT ; 
 int /*<<< orphan*/  HME_MACI_NCCNT ; 
 scalar_t__ FUNC1 (struct hme_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hme_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IFCOUNTER_COLLISIONS ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct hme_softc*) ; 
 scalar_t__ FUNC4 (struct hme_softc*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	struct hme_softc *sc = arg;
	struct ifnet *ifp;

	FUNC0(sc, MA_OWNED);

	ifp = sc->sc_ifp;
	/*
	 * Unload collision counters
	 */
	FUNC5(ifp, IFCOUNTER_COLLISIONS,
		FUNC1(sc, HME_MACI_NCCNT) +
		FUNC1(sc, HME_MACI_FCCNT) +
		FUNC1(sc, HME_MACI_EXCNT) +
		FUNC1(sc, HME_MACI_LTCNT));

	/*
	 * then clear the hardware counters.
	 */
	FUNC2(sc, HME_MACI_NCCNT, 0);
	FUNC2(sc, HME_MACI_FCCNT, 0);
	FUNC2(sc, HME_MACI_EXCNT, 0);
	FUNC2(sc, HME_MACI_LTCNT, 0);

	FUNC6(sc->sc_mii);

	if (FUNC4(sc) == EJUSTRETURN)
		return;

	FUNC3(&sc->sc_tick_ch, hz, hme_tick, sc);
}