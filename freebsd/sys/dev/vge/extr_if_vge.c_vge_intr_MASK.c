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
typedef  int uint32_t ;
struct vge_softc {int vge_flags; struct ifnet* vge_ifp; } ;
struct ifnet {int if_flags; int if_capenable; int if_drv_flags; int /*<<< orphan*/  if_snd; } ;

/* Variables and functions */
 int FUNC0 (struct vge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vge_softc*,int /*<<< orphan*/ ,int) ; 
 int IFCAP_POLLING ; 
 int IFF_DRV_RUNNING ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VGE_CR3_INT_GMSK ; 
 int /*<<< orphan*/  VGE_CRC3 ; 
 int /*<<< orphan*/  VGE_CRS3 ; 
 int VGE_FLAG_SUSPENDED ; 
 int VGE_INTRS ; 
 int /*<<< orphan*/  VGE_ISR ; 
 int VGE_ISR_HOLDOFF_RELOAD ; 
 int VGE_ISR_LINKSTS ; 
 int VGE_ISR_RXDMA_STALL ; 
 int VGE_ISR_RXNODESC ; 
 int VGE_ISR_RXOFLOW ; 
 int VGE_ISR_RXOK ; 
 int VGE_ISR_RXOK_HIPRIO ; 
 int VGE_ISR_TXDMA_STALL ; 
 int VGE_ISR_TXOK0 ; 
 int VGE_ISR_TXOK_HIPRIO ; 
 int /*<<< orphan*/  FUNC4 (struct vge_softc*) ; 
 int /*<<< orphan*/  VGE_RXQCSRS ; 
 int /*<<< orphan*/  VGE_RXQCSR_RUN ; 
 int /*<<< orphan*/  VGE_RXQCSR_WAK ; 
 int /*<<< orphan*/  VGE_RX_DESC_CNT ; 
 int /*<<< orphan*/  FUNC5 (struct vge_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct vge_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct vge_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct vge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC10 (struct vge_softc*) ; 

__attribute__((used)) static void
FUNC11(void *arg)
{
	struct vge_softc *sc;
	struct ifnet *ifp;
	uint32_t status;

	sc = arg;
	FUNC4(sc);

	ifp = sc->vge_ifp;
	if ((sc->vge_flags & VGE_FLAG_SUSPENDED) != 0 ||
	    (ifp->if_flags & IFF_UP) == 0) {
		FUNC5(sc);
		return;
	}

#ifdef DEVICE_POLLING
	if  (ifp->if_capenable & IFCAP_POLLING) {
		status = CSR_READ_4(sc, VGE_ISR);
		CSR_WRITE_4(sc, VGE_ISR, status);
		if (status != 0xFFFFFFFF && (status & VGE_ISR_LINKSTS) != 0)
			vge_link_statchg(sc);
		VGE_UNLOCK(sc);
		return;
	}
#endif

	/* Disable interrupts */
	FUNC1(sc, VGE_CRC3, VGE_CR3_INT_GMSK);
	status = FUNC0(sc, VGE_ISR);
	FUNC2(sc, VGE_ISR, status | VGE_ISR_HOLDOFF_RELOAD);
	/* If the card has gone away the read returns 0xffff. */
	if (status == 0xFFFFFFFF || (status & VGE_INTRS) == 0)
		goto done;
	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
		if (status & (VGE_ISR_RXOK|VGE_ISR_RXOK_HIPRIO))
			FUNC8(sc, VGE_RX_DESC_CNT);
		if (status & (VGE_ISR_RXOFLOW|VGE_ISR_RXNODESC)) {
			FUNC8(sc, VGE_RX_DESC_CNT);
			FUNC1(sc, VGE_RXQCSRS, VGE_RXQCSR_RUN);
			FUNC1(sc, VGE_RXQCSRS, VGE_RXQCSR_WAK);
		}

		if (status & (VGE_ISR_TXOK0|VGE_ISR_TXOK_HIPRIO))
			FUNC10(sc);

		if (status & (VGE_ISR_TXDMA_STALL|VGE_ISR_RXDMA_STALL)) {
			ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
			FUNC6(sc);
		}

		if (status & VGE_ISR_LINKSTS)
			FUNC7(sc);
	}
done:
	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
		/* Re-enable interrupts */
		FUNC1(sc, VGE_CRS3, VGE_CR3_INT_GMSK);

		if (!FUNC3(&ifp->if_snd))
			FUNC9(ifp);
	}
	FUNC5(sc);
}