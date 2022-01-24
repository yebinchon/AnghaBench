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
struct ale_softc {int ale_flags; int /*<<< orphan*/  ale_mtx; int /*<<< orphan*/ * ale_res; int /*<<< orphan*/  ale_res_spec; int /*<<< orphan*/ * ale_irq; int /*<<< orphan*/  ale_irq_spec; int /*<<< orphan*/ ** ale_intrhand; struct ifnet* ale_ifp; int /*<<< orphan*/ * ale_miibus; int /*<<< orphan*/ * ale_tq; int /*<<< orphan*/  ale_int_task; int /*<<< orphan*/  ale_tick_ch; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ALE_FLAG_MSI ; 
 int ALE_FLAG_MSIX ; 
 int /*<<< orphan*/  FUNC0 (struct ale_softc*) ; 
 int ALE_MSIX_MESSAGES ; 
 int ALE_MSI_MESSAGES ; 
 int /*<<< orphan*/  FUNC1 (struct ale_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ale_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ale_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ale_softc* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC12 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC17(device_t dev)
{
	struct ale_softc *sc;
	struct ifnet *ifp;
	int i, msic;

	sc = FUNC9(dev);

	ifp = sc->ale_ifp;
	if (FUNC10(dev)) {
		FUNC11(ifp);
		FUNC0(sc);
		FUNC3(sc);
		FUNC1(sc);
		FUNC7(&sc->ale_tick_ch);
		FUNC15(sc->ale_tq, &sc->ale_int_task);
	}

	if (sc->ale_tq != NULL) {
		FUNC15(sc->ale_tq, &sc->ale_int_task);
		FUNC16(sc->ale_tq);
		sc->ale_tq = NULL;
	}

	if (sc->ale_miibus != NULL) {
		FUNC8(dev, sc->ale_miibus);
		sc->ale_miibus = NULL;
	}
	FUNC4(dev);
	FUNC2(sc);

	if (ifp != NULL) {
		FUNC12(ifp);
		sc->ale_ifp = NULL;
	}

	if ((sc->ale_flags & ALE_FLAG_MSIX) != 0)
		msic = ALE_MSIX_MESSAGES;
	else if ((sc->ale_flags & ALE_FLAG_MSI) != 0)
		msic = ALE_MSI_MESSAGES;
	else
		msic = 1;
	for (i = 0; i < msic; i++) {
		if (sc->ale_intrhand[i] != NULL) {
			FUNC6(dev, sc->ale_irq[i],
			    sc->ale_intrhand[i]);
			sc->ale_intrhand[i] = NULL;
		}
	}

	FUNC5(dev, sc->ale_irq_spec, sc->ale_irq);
	if ((sc->ale_flags & (ALE_FLAG_MSI | ALE_FLAG_MSIX)) != 0)
		FUNC14(dev);
	FUNC5(dev, sc->ale_res_spec, sc->ale_res);
	FUNC13(&sc->ale_mtx);

	return (0);
}