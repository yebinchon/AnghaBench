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
struct vge_softc {int vge_flags; int /*<<< orphan*/  vge_mtx; scalar_t__ vge_res; scalar_t__ vge_irq; scalar_t__ vge_intrhand; scalar_t__ vge_miibus; int /*<<< orphan*/  vge_watchdog; struct ifnet* vge_ifp; } ;
struct ifnet {int if_capenable; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int IFCAP_POLLING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int VGE_FLAG_MSI ; 
 int /*<<< orphan*/  FUNC2 (struct vge_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct vge_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct vge_softc* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC12 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC13 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct vge_softc*) ; 
 int /*<<< orphan*/  FUNC18 (struct vge_softc*) ; 

__attribute__((used)) static int
FUNC19(device_t dev)
{
	struct vge_softc *sc;
	struct ifnet *ifp;

	sc = FUNC9(dev);
	FUNC0(FUNC15(&sc->vge_mtx), ("vge mutex not initialized"));
	ifp = sc->vge_ifp;

#ifdef DEVICE_POLLING
	if (ifp->if_capenable & IFCAP_POLLING)
		ether_poll_deregister(ifp);
#endif

	/* These should only be active if attach succeeded */
	if (FUNC10(dev)) {
		FUNC11(ifp);
		FUNC2(sc);
		FUNC18(sc);
		FUNC3(sc);
		FUNC7(&sc->vge_watchdog);
	}
	if (sc->vge_miibus)
		FUNC8(dev, sc->vge_miibus);
	FUNC4(dev);

	if (sc->vge_intrhand)
		FUNC6(dev, sc->vge_irq, sc->vge_intrhand);
	if (sc->vge_irq)
		FUNC5(dev, SYS_RES_IRQ,
		    sc->vge_flags & VGE_FLAG_MSI ? 1 : 0, sc->vge_irq);
	if (sc->vge_flags & VGE_FLAG_MSI)
		FUNC16(dev);
	if (sc->vge_res)
		FUNC5(dev, SYS_RES_MEMORY,
		    FUNC1(1), sc->vge_res);
	if (ifp)
		FUNC13(ifp);

	FUNC17(sc);
	FUNC14(&sc->vge_mtx);

	return (0);
}