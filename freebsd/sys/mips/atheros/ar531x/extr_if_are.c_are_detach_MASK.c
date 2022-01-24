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
struct are_softc {int are_detach; int /*<<< orphan*/  are_mtx; scalar_t__ are_res; int /*<<< orphan*/  are_rid; scalar_t__ are_irq; scalar_t__ are_intrhand; scalar_t__ are_miibus; int /*<<< orphan*/  are_link_task; struct ifnet* are_ifp; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct are_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct are_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC3 (struct are_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct are_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct are_softc* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC12 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_swi ; 

__attribute__((used)) static int
FUNC16(device_t dev)
{
	struct are_softc		*sc = FUNC9(dev);
	struct ifnet		*ifp = sc->are_ifp;

	FUNC2(FUNC14(&sc->are_mtx), ("vr mutex not initialized"));

	/* These should only be active if attach succeeded */
	if (FUNC10(dev)) {
		FUNC0(sc);
		sc->are_detach = 1;
		FUNC4(sc);
		FUNC1(sc);
		FUNC15(taskqueue_swi, &sc->are_link_task);
		FUNC11(ifp);
	}
#ifdef ARE_MII
	if (sc->are_miibus)
		device_delete_child(dev, sc->are_miibus);
#endif
	FUNC5(dev);

	if (sc->are_intrhand)
		FUNC7(dev, sc->are_irq, sc->are_intrhand);
	if (sc->are_irq)
		FUNC6(dev, SYS_RES_IRQ, 0, sc->are_irq);

	if (sc->are_res)
		FUNC6(dev, SYS_RES_MEMORY, sc->are_rid, 
		    sc->are_res);

	if (ifp)
		FUNC12(ifp);

	FUNC3(sc);

	FUNC13(&sc->are_mtx);

	return (0);

}