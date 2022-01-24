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
struct vr_softc {int /*<<< orphan*/  vr_mtx; scalar_t__ vr_res; int /*<<< orphan*/  vr_res_id; int /*<<< orphan*/  vr_res_type; scalar_t__ vr_irq; scalar_t__ vr_intrhand; scalar_t__ vr_miibus; int /*<<< orphan*/  vr_inttask; int /*<<< orphan*/  vr_stat_callout; int /*<<< orphan*/  vr_flags; struct ifnet* vr_ifp; } ;
struct ifnet {int if_capenable; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int IFCAP_POLLING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  VR_F_DETACHED ; 
 int /*<<< orphan*/  FUNC1 (struct vr_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct vr_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct vr_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC11 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC12 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_fast ; 
 int /*<<< orphan*/  FUNC16 (struct vr_softc*) ; 
 int /*<<< orphan*/  FUNC17 (struct vr_softc*) ; 

__attribute__((used)) static int
FUNC18(device_t dev)
{
	struct vr_softc		*sc = FUNC8(dev);
	struct ifnet		*ifp = sc->vr_ifp;

	FUNC0(FUNC14(&sc->vr_mtx), ("vr mutex not initialized"));

#ifdef DEVICE_POLLING
	if (ifp != NULL && ifp->if_capenable & IFCAP_POLLING)
		ether_poll_deregister(ifp);
#endif

	/* These should only be active if attach succeeded. */
	if (FUNC9(dev)) {
		FUNC1(sc);
		sc->vr_flags |= VR_F_DETACHED;
		FUNC17(sc);
		FUNC2(sc);
		FUNC6(&sc->vr_stat_callout);
		FUNC15(taskqueue_fast, &sc->vr_inttask);
		FUNC10(ifp);
	}
	if (sc->vr_miibus)
		FUNC7(dev, sc->vr_miibus);
	FUNC3(dev);

	if (sc->vr_intrhand)
		FUNC5(dev, sc->vr_irq, sc->vr_intrhand);
	if (sc->vr_irq)
		FUNC4(dev, SYS_RES_IRQ, 0, sc->vr_irq);
	if (sc->vr_res)
		FUNC4(dev, sc->vr_res_type, sc->vr_res_id,
		    sc->vr_res);

	if (ifp)
		FUNC12(ifp);

	FUNC16(sc);

	FUNC13(&sc->vr_mtx);

	return (0);
}