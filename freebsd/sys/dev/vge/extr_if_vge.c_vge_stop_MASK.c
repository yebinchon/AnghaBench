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
struct vge_softc {int /*<<< orphan*/  vge_watchdog; scalar_t__ vge_timer; struct ifnet* vge_ifp; } ;
struct ifnet {int if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vge_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vge_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vge_softc*,int /*<<< orphan*/ ,int) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC3 (struct vge_softc*) ; 
 int VGE_CR0_STOP ; 
 int VGE_CR3_INT_GMSK ; 
 int /*<<< orphan*/  VGE_CRC3 ; 
 int /*<<< orphan*/  VGE_CRS0 ; 
 int /*<<< orphan*/  VGE_ISR ; 
 int /*<<< orphan*/  FUNC4 (struct vge_softc*) ; 
 int /*<<< orphan*/  VGE_RXDESC_ADDR_LO ; 
 int /*<<< orphan*/  VGE_RXQCSRC ; 
 int /*<<< orphan*/  VGE_TXQCSRC ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct vge_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct vge_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct vge_softc*) ; 

__attribute__((used)) static void
FUNC9(struct vge_softc *sc)
{
	struct ifnet *ifp;

	FUNC4(sc);
	ifp = sc->vge_ifp;
	sc->vge_timer = 0;
	FUNC5(&sc->vge_watchdog);

	ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);

	FUNC0(sc, VGE_CRC3, VGE_CR3_INT_GMSK);
	FUNC0(sc, VGE_CRS0, VGE_CR0_STOP);
	FUNC2(sc, VGE_ISR, 0xFFFFFFFF);
	FUNC1(sc, VGE_TXQCSRC, 0xFFFF);
	FUNC0(sc, VGE_RXQCSRC, 0xFF);
	FUNC2(sc, VGE_RXDESC_ADDR_LO, 0);

	FUNC7(sc);
	FUNC3(sc);
	FUNC8(sc);
	FUNC6(sc);
}