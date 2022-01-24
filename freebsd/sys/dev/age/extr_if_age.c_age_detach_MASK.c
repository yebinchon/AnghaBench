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
struct age_softc {int age_flags; int /*<<< orphan*/  age_mtx; int /*<<< orphan*/ * age_res; int /*<<< orphan*/  age_res_spec; int /*<<< orphan*/ * age_irq; int /*<<< orphan*/  age_irq_spec; int /*<<< orphan*/ ** age_intrhand; struct ifnet* age_ifp; int /*<<< orphan*/ * age_miibus; int /*<<< orphan*/ * age_tq; int /*<<< orphan*/  age_int_task; int /*<<< orphan*/  age_link_task; int /*<<< orphan*/  age_tick_ch; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int AGE_FLAG_DETACH ; 
 int AGE_FLAG_MSI ; 
 int AGE_FLAG_MSIX ; 
 int /*<<< orphan*/  FUNC0 (struct age_softc*) ; 
 int AGE_MSIX_MESSAGES ; 
 int AGE_MSI_MESSAGES ; 
 int /*<<< orphan*/  FUNC1 (struct age_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct age_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct age_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct age_softc* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC12 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * taskqueue_swi ; 

__attribute__((used)) static int
FUNC17(device_t dev)
{
	struct age_softc *sc;
	struct ifnet *ifp;
	int i, msic;

	sc = FUNC9(dev);

	ifp = sc->age_ifp;
	if (FUNC10(dev)) {
		FUNC0(sc);
		sc->age_flags |= AGE_FLAG_DETACH;
		FUNC3(sc);
		FUNC1(sc);
		FUNC7(&sc->age_tick_ch);
		FUNC15(sc->age_tq, &sc->age_int_task);
		FUNC15(taskqueue_swi, &sc->age_link_task);
		FUNC11(ifp);
	}

	if (sc->age_tq != NULL) {
		FUNC15(sc->age_tq, &sc->age_int_task);
		FUNC16(sc->age_tq);
		sc->age_tq = NULL;
	}

	if (sc->age_miibus != NULL) {
		FUNC8(dev, sc->age_miibus);
		sc->age_miibus = NULL;
	}
	FUNC4(dev);
	FUNC2(sc);

	if (ifp != NULL) {
		FUNC12(ifp);
		sc->age_ifp = NULL;
	}

	if ((sc->age_flags & AGE_FLAG_MSIX) != 0)
		msic = AGE_MSIX_MESSAGES;
	else if ((sc->age_flags & AGE_FLAG_MSI) != 0)
		msic = AGE_MSI_MESSAGES;
	else
		msic = 1;
	for (i = 0; i < msic; i++) {
		if (sc->age_intrhand[i] != NULL) {
			FUNC6(dev, sc->age_irq[i],
			    sc->age_intrhand[i]);
			sc->age_intrhand[i] = NULL;
		}
	}

	FUNC5(dev, sc->age_irq_spec, sc->age_irq);
	if ((sc->age_flags & (AGE_FLAG_MSI | AGE_FLAG_MSIX)) != 0)
		FUNC14(dev);
	FUNC5(dev, sc->age_res_spec, sc->age_res);
	FUNC13(&sc->age_mtx);

	return (0);
}