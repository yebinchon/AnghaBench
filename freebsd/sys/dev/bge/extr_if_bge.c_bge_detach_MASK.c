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
struct bge_softc {int bge_flags; int /*<<< orphan*/ * bge_miibus; int /*<<< orphan*/  bge_ifmedia; int /*<<< orphan*/  bge_intr_task; scalar_t__ bge_tq; int /*<<< orphan*/  bge_stat_ch; int /*<<< orphan*/  bge_ifp; } ;
typedef  int /*<<< orphan*/  if_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BGE_FLAG_TBI ; 
 int /*<<< orphan*/  FUNC0 (struct bge_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bge_softc*) ; 
 int IFCAP_POLLING ; 
 int /*<<< orphan*/  FUNC2 (struct bge_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bge_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct bge_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct bge_softc *sc;
	if_t ifp;

	sc = FUNC7(dev);
	ifp = sc->bge_ifp;

#ifdef DEVICE_POLLING
	if (if_getcapenable(ifp) & IFCAP_POLLING)
		ether_poll_deregister(ifp);
#endif

	if (FUNC8(dev)) {
		FUNC9(ifp);
		FUNC0(sc);
		FUNC3(sc);
		FUNC1(sc);
		FUNC5(&sc->bge_stat_ch);
	}

	if (sc->bge_tq)
		FUNC13(sc->bge_tq, &sc->bge_intr_task);

	if (sc->bge_flags & BGE_FLAG_TBI)
		FUNC12(&sc->bge_ifmedia);
	else if (sc->bge_miibus != NULL) {
		FUNC4(dev);
		FUNC6(dev, sc->bge_miibus);
	}

	FUNC2(sc);

	return (0);
}