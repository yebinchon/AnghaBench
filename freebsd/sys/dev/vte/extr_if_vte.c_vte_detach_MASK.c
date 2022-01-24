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
struct vte_softc {int /*<<< orphan*/  vte_mtx; struct ifnet* vte_ifp; int /*<<< orphan*/ * vte_res; int /*<<< orphan*/  vte_res_id; int /*<<< orphan*/  vte_res_type; int /*<<< orphan*/ * vte_irq; int /*<<< orphan*/ * vte_intrhand; int /*<<< orphan*/ * vte_miibus; int /*<<< orphan*/  vte_tick_ch; } ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (struct vte_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vte_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct vte_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct vte_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct vte_softc*) ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct vte_softc *sc;
	struct ifnet *ifp;

	sc = FUNC7(dev);

	ifp = sc->vte_ifp;
	if (FUNC8(dev)) {
		FUNC0(sc);
		FUNC13(sc);
		FUNC1(sc);
		FUNC5(&sc->vte_tick_ch);
		FUNC9(ifp);
	}

	if (sc->vte_miibus != NULL) {
		FUNC6(dev, sc->vte_miibus);
		sc->vte_miibus = NULL;
	}
	FUNC2(dev);

	if (sc->vte_intrhand != NULL) {
		FUNC4(dev, sc->vte_irq, sc->vte_intrhand);
		sc->vte_intrhand = NULL;
	}
	if (sc->vte_irq != NULL) {
		FUNC3(dev, SYS_RES_IRQ, 0, sc->vte_irq);
		sc->vte_irq = NULL;
	}
	if (sc->vte_res != NULL) {
		FUNC3(dev, sc->vte_res_type, sc->vte_res_id,
		    sc->vte_res);
		sc->vte_res = NULL;
	}
	if (ifp != NULL) {
		FUNC10(ifp);
		sc->vte_ifp = NULL;
	}
	FUNC12(sc);
	FUNC11(&sc->vte_mtx);

	return (0);
}