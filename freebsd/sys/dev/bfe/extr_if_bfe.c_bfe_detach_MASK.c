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
struct bfe_softc {int /*<<< orphan*/  bfe_mtx; int /*<<< orphan*/ * bfe_miibus; int /*<<< orphan*/  bfe_stat_co; int /*<<< orphan*/  bfe_flags; struct ifnet* bfe_ifp; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BFE_FLAG_DETACH ; 
 int /*<<< orphan*/  FUNC0 (struct bfe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfe_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfe_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct bfe_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct bfe_softc* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(device_t dev)
{
	struct bfe_softc *sc;
	struct ifnet *ifp;

	sc = FUNC9(dev);

	ifp = sc->bfe_ifp;

	if (FUNC10(dev)) {
		FUNC0(sc);
		sc->bfe_flags |= BFE_FLAG_DETACH;
		FUNC5(sc);
		FUNC1(sc);
		FUNC7(&sc->bfe_stat_co);
		if (ifp != NULL)
			FUNC11(ifp);
	}

	FUNC0(sc);
	FUNC2(sc);
	FUNC1(sc);

	FUNC6(dev);
	if (sc->bfe_miibus != NULL)
		FUNC8(dev, sc->bfe_miibus);

	FUNC4(sc);
	FUNC3(sc);
	FUNC12(&sc->bfe_mtx);

	return (0);
}