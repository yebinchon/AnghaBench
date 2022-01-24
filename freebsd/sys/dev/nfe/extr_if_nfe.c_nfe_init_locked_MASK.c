#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  physaddr; } ;
struct TYPE_5__ {int /*<<< orphan*/  physaddr; } ;
struct TYPE_6__ {int /*<<< orphan*/  jphysaddr; } ;
struct nfe_softc {int nfe_framesize; int nfe_flags; int rxtxctl; int mii_phyaddr; int /*<<< orphan*/  nfe_stat_ch; scalar_t__ nfe_link; TYPE_1__ txq; TYPE_2__ rxq; TYPE_3__ jrxq; int /*<<< orphan*/  nfe_dev; int /*<<< orphan*/  nfe_miibus; int /*<<< orphan*/  nfe_ifp; } ;
struct mii_data {int dummy; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ETHER_HDR_LEN ; 
 int IFCAP_POLLING ; 
 int IFCAP_RXCSUM ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int MCLBYTES ; 
 int NFE_40BIT_ADDR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int NFE_CORRECT_MACADDR ; 
 int /*<<< orphan*/  NFE_IMTIMER ; 
 int NFE_IM_DEFAULT ; 
 int NFE_JUMBO_SUP ; 
 int /*<<< orphan*/  FUNC3 (struct nfe_softc*) ; 
 int NFE_MAC_ADDR_INORDER ; 
 int /*<<< orphan*/  NFE_PHY_STATUS ; 
 int /*<<< orphan*/  NFE_PWR_STATE ; 
 int NFE_PWR_VALID ; 
 int NFE_PWR_WAKEUP ; 
 int NFE_R1_MAGIC_10_100 ; 
 int NFE_R2_MAGIC ; 
 int NFE_R4_MAGIC ; 
 int NFE_R6_MAGIC ; 
 int FUNC4 (struct nfe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFE_RING_SIZE ; 
 int /*<<< orphan*/  NFE_RXBUFSZ ; 
 int NFE_RXTX_BIT1 ; 
 int NFE_RXTX_BIT2 ; 
 int /*<<< orphan*/  NFE_RXTX_CTL ; 
 int NFE_RXTX_RESET ; 
 int NFE_RXTX_RXCSUM ; 
 int NFE_RXTX_V2MAGIC ; 
 int NFE_RXTX_V3MAGIC ; 
 int NFE_RXTX_VTAG_INSERT ; 
 int NFE_RXTX_VTAG_STRIP ; 
 int /*<<< orphan*/  NFE_RX_CTL ; 
 int NFE_RX_HEADERS ; 
 int /*<<< orphan*/  NFE_RX_RING_ADDR_HI ; 
 int /*<<< orphan*/  NFE_RX_RING_ADDR_LO ; 
 int NFE_RX_RING_COUNT ; 
 int NFE_RX_START ; 
 int /*<<< orphan*/  NFE_SETUP_R1 ; 
 int /*<<< orphan*/  NFE_SETUP_R2 ; 
 int /*<<< orphan*/  NFE_SETUP_R4 ; 
 int /*<<< orphan*/  NFE_SETUP_R6 ; 
 int /*<<< orphan*/  NFE_STATUS ; 
 int NFE_STATUS_MAGIC ; 
 int /*<<< orphan*/  NFE_TX_CTL ; 
 int NFE_TX_FLOW_CTRL ; 
 int /*<<< orphan*/  NFE_TX_PAUSE_FRAME ; 
 int NFE_TX_PAUSE_FRAME_DISABLE ; 
 int /*<<< orphan*/  NFE_TX_RING_ADDR_HI ; 
 int /*<<< orphan*/  NFE_TX_RING_ADDR_LO ; 
 int NFE_TX_RING_COUNT ; 
 int NFE_TX_START ; 
 int /*<<< orphan*/  NFE_TX_UNK ; 
 int /*<<< orphan*/  NFE_VTAG_CTL ; 
 int NFE_VTAG_ENABLE ; 
 int /*<<< orphan*/  NFE_WOL_CTL ; 
 int /*<<< orphan*/  FUNC5 (struct nfe_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfe_softc*) ; 
 struct mii_data* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hz ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct mii_data*) ; 
 int /*<<< orphan*/  FUNC15 (struct nfe_softc*) ; 
 int /*<<< orphan*/  FUNC16 (struct nfe_softc*) ; 
 int FUNC17 (struct nfe_softc*,TYPE_3__*) ; 
 int FUNC18 (struct nfe_softc*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (struct nfe_softc*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (struct nfe_softc*) ; 
 int /*<<< orphan*/  FUNC21 (struct nfe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct nfe_softc*) ; 
 int /*<<< orphan*/  FUNC23 (struct nfe_softc*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfe_tick ; 

__attribute__((used)) static void
FUNC25(void *xsc)
{
	struct nfe_softc *sc = xsc;
	if_t ifp = sc->nfe_ifp;
	struct mii_data *mii;
	uint32_t val;
	int error;

	FUNC3(sc);

	mii = FUNC7(sc->nfe_miibus);

	if (FUNC10(ifp) & IFF_DRV_RUNNING)
		return;

	FUNC24(ifp);

	sc->nfe_framesize = FUNC12(ifp) + NFE_RX_HEADERS;

	FUNC19(sc, &sc->txq);
	if (sc->nfe_framesize > (MCLBYTES - ETHER_HDR_LEN))
		error = FUNC17(sc, &sc->jrxq);
	else
		error = FUNC18(sc, &sc->rxq);
	if (error != 0) {
		FUNC8(sc->nfe_dev,
		    "initialization failed: no memory for rx buffers\n");
		FUNC24(ifp);
		return;
	}

	val = 0;
	if ((sc->nfe_flags & NFE_CORRECT_MACADDR) != 0)
		val |= NFE_MAC_ADDR_INORDER;
	FUNC5(sc, NFE_TX_UNK, val);
	FUNC5(sc, NFE_STATUS, 0);

	if ((sc->nfe_flags & NFE_TX_FLOW_CTRL) != 0)
		FUNC5(sc, NFE_TX_PAUSE_FRAME, NFE_TX_PAUSE_FRAME_DISABLE);

	sc->rxtxctl = NFE_RXTX_BIT2;
	if (sc->nfe_flags & NFE_40BIT_ADDR)
		sc->rxtxctl |= NFE_RXTX_V3MAGIC;
	else if (sc->nfe_flags & NFE_JUMBO_SUP)
		sc->rxtxctl |= NFE_RXTX_V2MAGIC;

	if ((FUNC9(ifp) & IFCAP_RXCSUM) != 0)
		sc->rxtxctl |= NFE_RXTX_RXCSUM;
	if ((FUNC9(ifp) & IFCAP_VLAN_HWTAGGING) != 0)
		sc->rxtxctl |= NFE_RXTX_VTAG_INSERT | NFE_RXTX_VTAG_STRIP;

	FUNC5(sc, NFE_RXTX_CTL, NFE_RXTX_RESET | sc->rxtxctl);
	FUNC0(10);
	FUNC5(sc, NFE_RXTX_CTL, sc->rxtxctl);

	if ((FUNC9(ifp) & IFCAP_VLAN_HWTAGGING) != 0)
		FUNC5(sc, NFE_VTAG_CTL, NFE_VTAG_ENABLE);
	else
		FUNC5(sc, NFE_VTAG_CTL, 0);

	FUNC5(sc, NFE_SETUP_R6, 0);

	/* set MAC address */
	FUNC21(sc, FUNC11(ifp));

	/* tell MAC where rings are in memory */
	if (sc->nfe_framesize > MCLBYTES - ETHER_HDR_LEN) {
		FUNC5(sc, NFE_RX_RING_ADDR_HI,
		    FUNC1(sc->jrxq.jphysaddr));
		FUNC5(sc, NFE_RX_RING_ADDR_LO,
		    FUNC2(sc->jrxq.jphysaddr));
	} else {
		FUNC5(sc, NFE_RX_RING_ADDR_HI,
		    FUNC1(sc->rxq.physaddr));
		FUNC5(sc, NFE_RX_RING_ADDR_LO,
		    FUNC2(sc->rxq.physaddr));
	}
	FUNC5(sc, NFE_TX_RING_ADDR_HI, FUNC1(sc->txq.physaddr));
	FUNC5(sc, NFE_TX_RING_ADDR_LO, FUNC2(sc->txq.physaddr));

	FUNC5(sc, NFE_RING_SIZE,
	    (NFE_RX_RING_COUNT - 1) << 16 |
	    (NFE_TX_RING_COUNT - 1));

	FUNC5(sc, NFE_RXBUFSZ, sc->nfe_framesize);

	/* force MAC to wakeup */
	val = FUNC4(sc, NFE_PWR_STATE);
	if ((val & NFE_PWR_WAKEUP) == 0)
		FUNC5(sc, NFE_PWR_STATE, val | NFE_PWR_WAKEUP);
	FUNC0(10);
	val = FUNC4(sc, NFE_PWR_STATE);
	FUNC5(sc, NFE_PWR_STATE, val | NFE_PWR_VALID);

#if 1
	/* configure interrupts coalescing/mitigation */
	FUNC5(sc, NFE_IMTIMER, NFE_IM_DEFAULT);
#else
	/* no interrupt mitigation: one interrupt per packet */
	NFE_WRITE(sc, NFE_IMTIMER, 970);
#endif

	FUNC5(sc, NFE_SETUP_R1, NFE_R1_MAGIC_10_100);
	FUNC5(sc, NFE_SETUP_R2, NFE_R2_MAGIC);
	FUNC5(sc, NFE_SETUP_R6, NFE_R6_MAGIC);

	/* update MAC knowledge of PHY; generates a NFE_IRQ_LINK interrupt */
	FUNC5(sc, NFE_STATUS, sc->mii_phyaddr << 24 | NFE_STATUS_MAGIC);

	FUNC5(sc, NFE_SETUP_R4, NFE_R4_MAGIC);
	/* Disable WOL. */
	FUNC5(sc, NFE_WOL_CTL, 0);

	sc->rxtxctl &= ~NFE_RXTX_BIT2;
	FUNC5(sc, NFE_RXTX_CTL, sc->rxtxctl);
	FUNC0(10);
	FUNC5(sc, NFE_RXTX_CTL, NFE_RXTX_BIT1 | sc->rxtxctl);

	/* set Rx filter */
	FUNC22(sc);

	/* enable Rx */
	FUNC5(sc, NFE_RX_CTL, NFE_RX_START);

	/* enable Tx */
	FUNC5(sc, NFE_TX_CTL, NFE_TX_START);

	FUNC5(sc, NFE_PHY_STATUS, 0xf);

	/* Clear hardware stats. */
	FUNC23(sc);

#ifdef DEVICE_POLLING
	if (if_getcapenable(ifp) & IFCAP_POLLING)
		nfe_disable_intr(sc);
	else
#endif
	FUNC20(sc);
	FUNC16(sc); /* enable interrupts */

	FUNC13(ifp, IFF_DRV_RUNNING, 0);
	FUNC13(ifp, 0, IFF_DRV_OACTIVE);

	sc->nfe_link = 0;
	FUNC14(mii);

	FUNC6(&sc->nfe_stat_ch, hz, nfe_tick, sc);
}