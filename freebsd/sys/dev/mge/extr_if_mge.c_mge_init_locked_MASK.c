#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct mge_softc {int mge_ver; int volatile mge_tx_tok_cnt; int volatile mge_tx_tok_cfg; int volatile mge_tx_arb_cfg; int mge_media_status; int volatile tx_desc_start; int volatile rx_desc_start; int /*<<< orphan*/  wd_callout; scalar_t__ phy_attached; scalar_t__ wd_timer; TYPE_2__* ifp; int /*<<< orphan*/  mge_desc_dtag; struct mge_desc_wrapper* mge_rx_desc; scalar_t__ tx_desc_used_count; scalar_t__ tx_desc_used_idx; scalar_t__ rx_desc_curr; scalar_t__ tx_desc_curr; scalar_t__ switch_attached; int /*<<< orphan*/  mge_mtu; } ;
struct mge_desc_wrapper {int /*<<< orphan*/  desc_dmap; TYPE_1__* mge_desc; } ;
struct TYPE_4__ {int if_capenable; int /*<<< orphan*/  if_drv_flags; } ;
struct TYPE_3__ {int cmd_status; int /*<<< orphan*/  buff_size; } ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IFCAP_POLLING ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int IFM_1000_T ; 
 int IFM_TMASK ; 
 int /*<<< orphan*/  MCLBYTES ; 
 int MGE_DMA_OWNED ; 
 int volatile FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MGE_FIXED_PRIO_CONF ; 
 int volatile FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mge_softc*) ; 
 int /*<<< orphan*/  MGE_PORT_CONFIG ; 
 int /*<<< orphan*/  MGE_PORT_EXT_CONFIG ; 
 int /*<<< orphan*/  MGE_PORT_SERIAL_CTRL ; 
 int /*<<< orphan*/  MGE_PORT_SERIAL_CTRL1 ; 
 int /*<<< orphan*/  MGE_PORT_STATUS ; 
 int FUNC4 (struct mge_softc*,int /*<<< orphan*/ ) ; 
 int volatile MGE_RGMII_EN ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MGE_RX_DEFAULT_QUEUE ; 
 int MGE_RX_DESC_NUM ; 
 int MGE_RX_ENABLE_INT ; 
 int /*<<< orphan*/  MGE_RX_QUEUE_CMD ; 
 int /*<<< orphan*/  MGE_SDMA_BURST_16_WORD ; 
 int /*<<< orphan*/  MGE_SDMA_CONFIG ; 
 int volatile FUNC6 (int /*<<< orphan*/ ) ; 
 int volatile MGE_SDMA_RX_BYTE_SWAP ; 
 int volatile FUNC7 (int /*<<< orphan*/ ) ; 
 int volatile MGE_SDMA_TX_BYTE_SWAP ; 
 int volatile MGE_STATUS_LINKUP ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  MGE_TX_CUR_DESC_PTR ; 
 int /*<<< orphan*/  MGE_TX_FIFO_URGENT_TRSH ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct mge_softc*,int /*<<< orphan*/ ,int volatile) ; 
 int volatile FUNC12 (int /*<<< orphan*/ ) ; 
 int volatile FUNC13 (int /*<<< orphan*/ ) ; 
 int volatile PORT_CONFIG_RXCS ; 
 int volatile PORT_SERIAL_ENABLE ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mge_softc*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct mge_softc*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct mge_softc*) ; 
 int FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (struct mge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct mge_softc*) ; 
 int /*<<< orphan*/  FUNC22 (struct mge_softc*) ; 
 int /*<<< orphan*/  FUNC23 (struct mge_softc*) ; 
 int /*<<< orphan*/  FUNC24 (struct mge_softc*) ; 
 int /*<<< orphan*/  mge_tick ; 

__attribute__((used)) static void
FUNC25(void *arg)
{
	struct mge_softc *sc = arg;
	struct mge_desc_wrapper *dw;
	volatile uint32_t reg_val;
	int i, count;
	uint32_t media_status;


	FUNC3(sc);

	/* Stop interface */
	FUNC24(sc);

	/* Disable interrupts */
	FUNC17(sc, 0);

	/* Set MAC address */
	FUNC18(sc);

	/* Setup multicast filters */
	FUNC23(sc);

	if (sc->mge_ver == 2) {
		FUNC11(sc, MGE_PORT_SERIAL_CTRL1, MGE_RGMII_EN);
		FUNC11(sc, MGE_FIXED_PRIO_CONF, FUNC2(0));
	}

	/* Initialize TX queue configuration registers */
	FUNC11(sc, FUNC10(0), sc->mge_tx_tok_cnt);
	FUNC11(sc, FUNC9(0), sc->mge_tx_tok_cfg);
	FUNC11(sc, FUNC8(0), sc->mge_tx_arb_cfg);

	/* Clear TX queue configuration registers for unused queues */
	for (i = 1; i < 7; i++) {
		FUNC11(sc, FUNC10(i), 0);
		FUNC11(sc, FUNC9(i), 0);
		FUNC11(sc, FUNC8(i), 0);
	}

	/* Set default MTU */
	FUNC11(sc, sc->mge_mtu, 0);

	/* Port configuration */
	FUNC11(sc, MGE_PORT_CONFIG,
	    PORT_CONFIG_RXCS | FUNC13(0) |
	    FUNC12(0));
	FUNC11(sc, MGE_PORT_EXT_CONFIG , 0x0);

	/* Configure promisc mode */
	FUNC20(sc, MGE_RX_DEFAULT_QUEUE);

	media_status = sc->mge_media_status;
	if (sc->switch_attached) {
		media_status &= ~IFM_TMASK;
		media_status |= IFM_1000_T;
	}

	/* Setup port configuration */
	reg_val = FUNC19(media_status);
	FUNC11(sc, MGE_PORT_SERIAL_CTRL, reg_val);

	/* Setup SDMA configuration */
	FUNC11(sc, MGE_SDMA_CONFIG , MGE_SDMA_RX_BYTE_SWAP |
	    MGE_SDMA_TX_BYTE_SWAP |
	    FUNC6(MGE_SDMA_BURST_16_WORD) |
	    FUNC7(MGE_SDMA_BURST_16_WORD));

	FUNC11(sc, MGE_TX_FIFO_URGENT_TRSH, 0x0);

	FUNC11(sc, MGE_TX_CUR_DESC_PTR, sc->tx_desc_start);
	FUNC11(sc, FUNC5(MGE_RX_DEFAULT_QUEUE),
	    sc->rx_desc_start);

	/* Reset descriptor indexes */
	sc->tx_desc_curr = 0;
	sc->rx_desc_curr = 0;
	sc->tx_desc_used_idx = 0;
	sc->tx_desc_used_count = 0;

	/* Enable RX descriptors */
	for (i = 0; i < MGE_RX_DESC_NUM; i++) {
		dw = &sc->mge_rx_desc[i];
		dw->mge_desc->cmd_status = MGE_RX_ENABLE_INT | MGE_DMA_OWNED;
		dw->mge_desc->buff_size = MCLBYTES;
		FUNC14(sc->mge_desc_dtag, dw->desc_dmap,
		    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
	}

	/* Enable RX queue */
	FUNC11(sc, MGE_RX_QUEUE_CMD, FUNC1(MGE_RX_DEFAULT_QUEUE));

	/* Enable port */
	reg_val = FUNC4(sc, MGE_PORT_SERIAL_CTRL);
	reg_val |= PORT_SERIAL_ENABLE;
	FUNC11(sc, MGE_PORT_SERIAL_CTRL, reg_val);
	count = 0x100000;
	for (;;) {
		reg_val = FUNC4(sc, MGE_PORT_STATUS);
		if (reg_val & MGE_STATUS_LINKUP)
			break;
		FUNC0(100);
		if (--count == 0) {
			FUNC16(sc->ifp, "Timeout on link-up\n");
			break;
		}
	}

	/* Setup interrupts coalescing */
	FUNC21(sc);
	FUNC22(sc);

	/* Enable interrupts */
#ifdef DEVICE_POLLING
        /*
	 * * ...only if polling is not turned on. Disable interrupts explicitly
	 * if polling is enabled.
	 */
	if (sc->ifp->if_capenable & IFCAP_POLLING)
		mge_intrs_ctrl(sc, 0);
	else
#endif /* DEVICE_POLLING */
	FUNC17(sc, 1);

	/* Activate network interface */
	sc->ifp->if_drv_flags |= IFF_DRV_RUNNING;
	sc->ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
	sc->wd_timer = 0;

	/* Schedule watchdog timeout */
	if (sc->phy_attached)
		FUNC15(&sc->wd_callout, hz, mge_tick, sc);
}