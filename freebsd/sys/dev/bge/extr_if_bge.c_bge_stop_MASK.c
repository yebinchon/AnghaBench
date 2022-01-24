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
struct bge_softc {int bge_asf_mode; scalar_t__ bge_link; int /*<<< orphan*/  bge_ifp; int /*<<< orphan*/  bge_tx_saved_considx; int /*<<< orphan*/  bge_stat_ch; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 int ASF_STACKUP ; 
 int /*<<< orphan*/  BGE_BMANMODE_ENABLE ; 
 int /*<<< orphan*/  BGE_BMAN_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct bge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BGE_DMACMODE_ENABLE ; 
 int /*<<< orphan*/  BGE_DMAC_MODE ; 
 int /*<<< orphan*/  BGE_FTQ_RESET ; 
 int /*<<< orphan*/  BGE_HCCMODE_ENABLE ; 
 int /*<<< orphan*/  BGE_HCC_MODE ; 
 scalar_t__ FUNC1 (struct bge_softc*) ; 
 scalar_t__ FUNC2 (struct bge_softc*) ; 
 scalar_t__ FUNC3 (struct bge_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct bge_softc*) ; 
 int /*<<< orphan*/  BGE_MARBMODE_ENABLE ; 
 int /*<<< orphan*/  BGE_MARB_MODE ; 
 int /*<<< orphan*/  BGE_MBCFMODE_ENABLE ; 
 int /*<<< orphan*/  BGE_MBCF_MODE ; 
 int /*<<< orphan*/  BGE_MBX_IRQ0_LO ; 
 int /*<<< orphan*/  BGE_MODECTL_STACKUP ; 
 int /*<<< orphan*/  BGE_MODE_CTL ; 
 int /*<<< orphan*/  BGE_PCIMISCCTL_MASK_PCI_INTR ; 
 int /*<<< orphan*/  BGE_PCI_MISC_CTL ; 
 int /*<<< orphan*/  BGE_RBDCMODE_ENABLE ; 
 int /*<<< orphan*/  BGE_RBDC_MODE ; 
 int /*<<< orphan*/  BGE_RBDIMODE_ENABLE ; 
 int /*<<< orphan*/  BGE_RBDI_MODE ; 
 int /*<<< orphan*/  BGE_RDBDI_MODE ; 
 int /*<<< orphan*/  BGE_RDCMODE_ENABLE ; 
 int /*<<< orphan*/  BGE_RDC_MODE ; 
 int /*<<< orphan*/  BGE_RDMAMODE_ENABLE ; 
 int /*<<< orphan*/  BGE_RDMA_MODE ; 
 int /*<<< orphan*/  BGE_RESET_SHUTDOWN ; 
 int /*<<< orphan*/  BGE_RXLPMODE_ENABLE ; 
 int /*<<< orphan*/  BGE_RXLP_MODE ; 
 int /*<<< orphan*/  BGE_RXLSMODE_ENABLE ; 
 int /*<<< orphan*/  BGE_RXLS_MODE ; 
 int /*<<< orphan*/  BGE_RXMODE_ENABLE ; 
 int /*<<< orphan*/  BGE_RX_MODE ; 
 int /*<<< orphan*/  BGE_SBDCMODE_ENABLE ; 
 int /*<<< orphan*/  BGE_SBDC_MODE ; 
 int /*<<< orphan*/  BGE_SBDIMODE_ENABLE ; 
 int /*<<< orphan*/  BGE_SBDI_MODE ; 
 int /*<<< orphan*/  BGE_SDCMODE_ENABLE ; 
 int /*<<< orphan*/  BGE_SDC_MODE ; 
 int /*<<< orphan*/  BGE_SDIMODE_ENABLE ; 
 int /*<<< orphan*/  BGE_SDI_MODE ; 
 int /*<<< orphan*/  FUNC5 (struct bge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BGE_SRSMODE_ENABLE ; 
 int /*<<< orphan*/  BGE_SRS_MODE ; 
 int /*<<< orphan*/  BGE_TXCONS_UNSET ; 
 int /*<<< orphan*/  BGE_WDMAMODE_ENABLE ; 
 int /*<<< orphan*/  BGE_WDMA_MODE ; 
 int /*<<< orphan*/  FUNC6 (struct bge_softc*,int /*<<< orphan*/ ,int) ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC7 (struct bge_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct bge_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct bge_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct bge_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct bge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct bge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct bge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct bge_softc*) ; 
 int /*<<< orphan*/  FUNC15 (struct bge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct bge_softc*) ; 
 int /*<<< orphan*/  FUNC17 (struct bge_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC21(struct bge_softc *sc)
{
	if_t ifp;

	FUNC4(sc);

	ifp = sc->bge_ifp;

	FUNC18(&sc->bge_stat_ch);

	/* Disable host interrupts. */
	FUNC5(sc, BGE_PCI_MISC_CTL, BGE_PCIMISCCTL_MASK_PCI_INTR);
	FUNC17(sc, BGE_MBX_IRQ0_LO, 1);

	/*
	 * Tell firmware we're shutting down.
	 */
	FUNC16(sc);
	FUNC13(sc, BGE_RESET_SHUTDOWN);

	/*
	 * Disable all of the receiver blocks.
	 */
	FUNC15(sc, BGE_RX_MODE, BGE_RXMODE_ENABLE);
	FUNC15(sc, BGE_RBDI_MODE, BGE_RBDIMODE_ENABLE);
	FUNC15(sc, BGE_RXLP_MODE, BGE_RXLPMODE_ENABLE);
	if (FUNC1(sc))
		FUNC15(sc, BGE_RXLS_MODE, BGE_RXLSMODE_ENABLE);
	FUNC15(sc, BGE_RDBDI_MODE, BGE_RBDIMODE_ENABLE);
	FUNC15(sc, BGE_RDC_MODE, BGE_RDCMODE_ENABLE);
	FUNC15(sc, BGE_RBDC_MODE, BGE_RBDCMODE_ENABLE);

	/*
	 * Disable all of the transmit blocks.
	 */
	FUNC15(sc, BGE_SRS_MODE, BGE_SRSMODE_ENABLE);
	FUNC15(sc, BGE_SBDI_MODE, BGE_SBDIMODE_ENABLE);
	FUNC15(sc, BGE_SDI_MODE, BGE_SDIMODE_ENABLE);
	FUNC15(sc, BGE_RDMA_MODE, BGE_RDMAMODE_ENABLE);
	FUNC15(sc, BGE_SDC_MODE, BGE_SDCMODE_ENABLE);
	if (FUNC1(sc))
		FUNC15(sc, BGE_DMAC_MODE, BGE_DMACMODE_ENABLE);
	FUNC15(sc, BGE_SBDC_MODE, BGE_SBDCMODE_ENABLE);

	/*
	 * Shut down all of the memory managers and related
	 * state machines.
	 */
	FUNC15(sc, BGE_HCC_MODE, BGE_HCCMODE_ENABLE);
	FUNC15(sc, BGE_WDMA_MODE, BGE_WDMAMODE_ENABLE);
	if (FUNC1(sc))
		FUNC15(sc, BGE_MBCF_MODE, BGE_MBCFMODE_ENABLE);

	FUNC6(sc, BGE_FTQ_RESET, 0xFFFFFFFF);
	FUNC6(sc, BGE_FTQ_RESET, 0);
	if (!(FUNC2(sc))) {
		FUNC0(sc, BGE_BMAN_MODE, BGE_BMANMODE_ENABLE);
		FUNC0(sc, BGE_MARB_MODE, BGE_MARBMODE_ENABLE);
	}
	/* Update MAC statistics. */
	if (FUNC2(sc))
		FUNC14(sc);

	FUNC10(sc);
	FUNC11(sc, BGE_RESET_SHUTDOWN);
	FUNC12(sc, BGE_RESET_SHUTDOWN);

	/*
	 * Keep the ASF firmware running if up.
	 */
	if (sc->bge_asf_mode & ASF_STACKUP)
		FUNC5(sc, BGE_MODE_CTL, BGE_MODECTL_STACKUP);
	else
		FUNC0(sc, BGE_MODE_CTL, BGE_MODECTL_STACKUP);

	/* Free the RX lists. */
	FUNC8(sc);

	/* Free jumbo RX list. */
	if (FUNC3(sc))
		FUNC7(sc);

	/* Free TX buffers. */
	FUNC9(sc);

	sc->bge_tx_saved_considx = BGE_TXCONS_UNSET;

	/* Clear MAC's link state (PHY may still have link UP). */
	if (bootverbose && sc->bge_link)
		FUNC19(sc->bge_ifp, "link DOWN\n");
	sc->bge_link = 0;

	FUNC20(ifp, 0, (IFF_DRV_RUNNING | IFF_DRV_OACTIVE));
}