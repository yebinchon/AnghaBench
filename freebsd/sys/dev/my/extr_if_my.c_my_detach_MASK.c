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
struct my_softc {int /*<<< orphan*/  my_mtx; int /*<<< orphan*/  my_res; int /*<<< orphan*/  my_irq; int /*<<< orphan*/  my_ldata_ptr; int /*<<< orphan*/  my_autoneg_timer; int /*<<< orphan*/  my_watchdog; int /*<<< orphan*/  my_intrhand; struct ifnet* my_ifp; } ;
struct ifnet {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct my_softc*) ; 
 int /*<<< orphan*/  MY_RES ; 
 int /*<<< orphan*/  MY_RID ; 
 int /*<<< orphan*/  FUNC1 (struct my_softc*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct my_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct my_softc*) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct my_softc *sc;
	struct ifnet   *ifp;

	sc = FUNC5(dev);
	ifp = sc->my_ifp;
	FUNC6(ifp);
	FUNC0(sc);
	FUNC10(sc);
	FUNC1(sc);
	FUNC3(dev, sc->my_irq, sc->my_intrhand);
	FUNC4(&sc->my_watchdog);
	FUNC4(&sc->my_autoneg_timer);

	FUNC8(ifp);
	FUNC7(sc->my_ldata_ptr, M_DEVBUF);

	FUNC2(dev, SYS_RES_IRQ, 0, sc->my_irq);
	FUNC2(dev, MY_RES, MY_RID, sc->my_res);
	FUNC9(&sc->my_mtx);
	return (0);
}