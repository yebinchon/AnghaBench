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
struct alc_softc {int alc_flags; int /*<<< orphan*/  alc_mtx; int /*<<< orphan*/ ** alc_res; int /*<<< orphan*/  alc_res_spec; int /*<<< orphan*/ ** alc_irq; int /*<<< orphan*/  alc_irq_spec; int /*<<< orphan*/ ** alc_intrhand; struct ifnet* alc_ifp; int /*<<< orphan*/ * alc_miibus; int /*<<< orphan*/ * alc_tq; int /*<<< orphan*/  alc_int_task; int /*<<< orphan*/  alc_tick_ch; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ALC_FLAG_MSI ; 
 int ALC_FLAG_MSIX ; 
 int /*<<< orphan*/  FUNC0 (struct alc_softc*) ; 
 int ALC_MSIX_MESSAGES ; 
 int ALC_MSI_MESSAGES ; 
 int /*<<< orphan*/  FUNC1 (struct alc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct alc_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct alc_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct alc_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct alc_softc* FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC13 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC18(device_t dev)
{
	struct alc_softc *sc;
	struct ifnet *ifp;
	int i, msic;

	sc = FUNC10(dev);

	ifp = sc->alc_ifp;
	if (FUNC11(dev)) {
		FUNC12(ifp);
		FUNC0(sc);
		FUNC4(sc);
		FUNC1(sc);
		FUNC8(&sc->alc_tick_ch);
		FUNC16(sc->alc_tq, &sc->alc_int_task);
	}

	if (sc->alc_tq != NULL) {
		FUNC16(sc->alc_tq, &sc->alc_int_task);
		FUNC17(sc->alc_tq);
		sc->alc_tq = NULL;
	}

	if (sc->alc_miibus != NULL) {
		FUNC9(dev, sc->alc_miibus);
		sc->alc_miibus = NULL;
	}
	FUNC5(dev);
	FUNC2(sc);

	if (ifp != NULL) {
		FUNC13(ifp);
		sc->alc_ifp = NULL;
	}

	if ((sc->alc_flags & ALC_FLAG_MSIX) != 0)
		msic = ALC_MSIX_MESSAGES;
	else if ((sc->alc_flags & ALC_FLAG_MSI) != 0)
		msic = ALC_MSI_MESSAGES;
	else
		msic = 1;
	for (i = 0; i < msic; i++) {
		if (sc->alc_intrhand[i] != NULL) {
			FUNC7(dev, sc->alc_irq[i],
			    sc->alc_intrhand[i]);
			sc->alc_intrhand[i] = NULL;
		}
	}
	if (sc->alc_res[0] != NULL)
		FUNC3(sc);
	FUNC6(dev, sc->alc_irq_spec, sc->alc_irq);
	if ((sc->alc_flags & (ALC_FLAG_MSI | ALC_FLAG_MSIX)) != 0)
		FUNC15(dev);
	FUNC6(dev, sc->alc_res_spec, sc->alc_res);
	FUNC14(&sc->alc_mtx);

	return (0);
}