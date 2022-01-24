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
struct le_dma_softc {int /*<<< orphan*/  sc_dma; } ;
struct TYPE_2__ {int /*<<< orphan*/  ifm_media; } ;
struct lance_softc {int /*<<< orphan*/  sc_ifp; TYPE_1__ sc_media; } ;

/* Variables and functions */
 int E_TP_AUI ; 
#define  IFM_10_5 130 
#define  IFM_10_T 129 
#define  IFM_AUTO 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct lance_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct lance_softc*) ; 

__attribute__((used)) static void
FUNC5(struct lance_softc *sc)
{
	struct le_dma_softc *lesc = (struct le_dma_softc *)sc;

	/*
	 * Check if the user has requested a certain cable type, and
	 * if so, honor that request.
	 */

	if (FUNC1(lesc->sc_dma) & E_TP_AUI) {
		switch (FUNC0(sc->sc_media.ifm_media)) {
		case IFM_10_5:
		case IFM_AUTO:
			FUNC2(sc->sc_ifp, "lost carrier on UTP port, "
			    "switching to AUI port\n");
			FUNC3(sc);
		}
	} else {
		switch (FUNC0(sc->sc_media.ifm_media)) {
		case IFM_10_T:
		case IFM_AUTO:
			FUNC2(sc->sc_ifp, "lost carrier on AUI port, "
			    "switching to UTP port\n");
			FUNC4(sc);
		}
	}
}