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
struct ifnet {int /*<<< orphan*/  if_drv_flags; } ;
struct an_softc {int an_gone; int /*<<< orphan*/  an_mtx; int /*<<< orphan*/  an_stat_ch; int /*<<< orphan*/  irq_handle; int /*<<< orphan*/  irq_res; int /*<<< orphan*/  an_ifmedia; struct ifnet* an_ifp; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct an_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct an_softc*) ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct an_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct an_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int
FUNC12(device_t dev)
{
	struct an_softc		*sc = FUNC6(dev);
	struct ifnet		*ifp = sc->an_ifp;

	if (sc->an_gone) {
		FUNC7(dev,"already unloaded\n");
		return(0);
	}
	FUNC0(sc);
	FUNC3(sc);
	sc->an_gone = 1;
	FUNC10(&sc->an_ifmedia);
	ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
	FUNC1(sc);
	FUNC8(ifp);
	FUNC4(dev, sc->irq_res, sc->irq_handle);
	FUNC5(&sc->an_stat_ch);
	FUNC9(ifp);
	FUNC2(dev);
	FUNC11(&sc->an_mtx);
	return (0);
}