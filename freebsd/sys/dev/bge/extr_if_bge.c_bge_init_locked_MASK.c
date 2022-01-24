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
typedef  int /*<<< orphan*/  uint16_t ;
struct bge_softc {scalar_t__ bge_forced_udpcsum; int bge_csum_features; scalar_t__ bge_chipid; scalar_t__ bge_asicrev; int /*<<< orphan*/  bge_stat_ch; scalar_t__ bge_tx_collisions; scalar_t__ bge_tx_discards; scalar_t__ bge_rx_discards; scalar_t__ bge_rx_saved_considx; int /*<<< orphan*/  bge_dev; int /*<<< orphan*/  bge_ifp; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 scalar_t__ BGE_ASICREV_BCM5720 ; 
 scalar_t__ BGE_ASICREV_BCM5762 ; 
 scalar_t__ BGE_ASICREV_BCM5906 ; 
 scalar_t__ BGE_CHIPID_BCM5705_A0 ; 
 int /*<<< orphan*/  FUNC0 (struct bge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int BGE_CSUM_FEATURES ; 
 scalar_t__ FUNC1 (struct bge_softc*) ; 
 scalar_t__ FUNC2 (struct bge_softc*) ; 
 scalar_t__ FUNC3 (struct bge_softc*) ; 
 scalar_t__ FUNC4 (struct bge_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct bge_softc*) ; 
 int /*<<< orphan*/  BGE_MAC_ADDR1_HI ; 
 int /*<<< orphan*/  BGE_MAC_ADDR1_LO ; 
 int /*<<< orphan*/  BGE_MAX_RX_FRAME_LOWAT ; 
 int /*<<< orphan*/  BGE_MBX_IRQ0_LO ; 
 int /*<<< orphan*/  BGE_MODECTL_STACKUP ; 
 int /*<<< orphan*/  BGE_MODE_CTL ; 
 int /*<<< orphan*/  BGE_PCIMISCCTL_CLEAR_INTA ; 
 int /*<<< orphan*/  BGE_PCIMISCCTL_MASK_PCI_INTR ; 
 int /*<<< orphan*/  BGE_PCI_MISC_CTL ; 
 int /*<<< orphan*/  BGE_RESET_START ; 
 int BGE_RXMODE_ENABLE ; 
 int BGE_RXMODE_IPV4_FRAG_FIX ; 
 int BGE_RXMODE_IPV6_ENABLE ; 
 int /*<<< orphan*/  BGE_RX_MODE ; 
 int /*<<< orphan*/  BGE_RX_MTU ; 
 int /*<<< orphan*/  FUNC6 (struct bge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ BGE_STD_RX_RINGS ; 
 int BGE_TXMODE_CNT_DN_MODE ; 
 int BGE_TXMODE_ENABLE ; 
 int BGE_TXMODE_JMB_FRM_LEN ; 
 int BGE_TXMODE_MBUF_LOCKUP_FIX ; 
 int /*<<< orphan*/  BGE_TX_MODE ; 
 int FUNC7 (struct bge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bge_softc*,int /*<<< orphan*/ ,int) ; 
 int CSUM_UDP ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int ETHER_ALIGN ; 
 int ETHER_CRC_LEN ; 
 int ETHER_HDR_LEN ; 
 int ETHER_VLAN_ENCAP_LEN ; 
 int IFCAP_POLLING ; 
 int IFCAP_TXCSUM ; 
 int IFCAP_VLAN_MTU ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int MCLBYTES ; 
 scalar_t__ FUNC11 (struct bge_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct bge_softc*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct bge_softc*) ; 
 scalar_t__ FUNC15 (struct bge_softc*) ; 
 int /*<<< orphan*/  FUNC16 (struct bge_softc*) ; 
 int FUNC17 (struct bge_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct bge_softc*) ; 
 int /*<<< orphan*/  FUNC19 (struct bge_softc*) ; 
 int /*<<< orphan*/  FUNC20 (struct bge_softc*) ; 
 int /*<<< orphan*/  FUNC21 (struct bge_softc*) ; 
 int /*<<< orphan*/  FUNC22 (struct bge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct bge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct bge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct bge_softc*) ; 
 int /*<<< orphan*/  FUNC26 (struct bge_softc*) ; 
 int /*<<< orphan*/  FUNC27 (struct bge_softc*) ; 
 int /*<<< orphan*/  bge_tick ; 
 int /*<<< orphan*/  FUNC28 (struct bge_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bge_softc*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,char*) ; 
 int FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int FUNC32 (int /*<<< orphan*/ ) ; 
 int FUNC33 (int /*<<< orphan*/ ) ; 
 int FUNC34 (int /*<<< orphan*/ ) ; 
 int FUNC35 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC38(struct bge_softc *sc)
{
	if_t ifp;
	uint16_t *m;
	uint32_t mode;

	FUNC5(sc);

	ifp = sc->bge_ifp;

	if (FUNC34(ifp) & IFF_DRV_RUNNING)
		return;

	/* Cancel pending I/O and flush buffers. */
	FUNC26(sc);

	FUNC27(sc);
	FUNC24(sc, BGE_RESET_START);
	FUNC18(sc);
	FUNC22(sc, BGE_RESET_START);
	FUNC23(sc, BGE_RESET_START);

	FUNC12(sc);

	/*
	 * Init the various state machines, ring
	 * control blocks and firmware.
	 */
	if (FUNC11(sc)) {
		FUNC30(sc->bge_dev, "initialization failure\n");
		return;
	}

	ifp = sc->bge_ifp;

	/* Specify MTU. */
	FUNC8(sc, BGE_RX_MTU, FUNC35(ifp) +
	    ETHER_HDR_LEN + ETHER_CRC_LEN +
	    (FUNC33(ifp) & IFCAP_VLAN_MTU ? ETHER_VLAN_ENCAP_LEN : 0));

	/* Load our MAC address. */
	m = (uint16_t *)FUNC10(sc->bge_ifp);
	FUNC8(sc, BGE_MAC_ADDR1_LO, FUNC31(m[0]));
	FUNC8(sc, BGE_MAC_ADDR1_HI, (FUNC31(m[1]) << 16) | FUNC31(m[2]));

	/* Program promiscuous mode. */
	FUNC20(sc);

	/* Program multicast filter. */
	FUNC19(sc);

	/* Program VLAN tag stripping. */
	FUNC21(sc);

	/* Override UDP checksum offloading. */
	if (sc->bge_forced_udpcsum == 0)
		sc->bge_csum_features &= ~CSUM_UDP;
	else
		sc->bge_csum_features |= CSUM_UDP;
	if (FUNC32(ifp) & IFCAP_TXCSUM &&
	    FUNC33(ifp) & IFCAP_TXCSUM) {
		FUNC37(ifp, 0, (BGE_CSUM_FEATURES | CSUM_UDP));
		FUNC37(ifp, sc->bge_csum_features, 0);
	}

	/* Init RX ring. */
	if (FUNC15(sc) != 0) {
		FUNC30(sc->bge_dev, "no memory for std Rx buffers.\n");
		FUNC26(sc);
		return;
	}

	/*
	 * Workaround for a bug in 5705 ASIC rev A0. Poll the NIC's
	 * memory to insure that the chip has in fact read the first
	 * entry of the ring.
	 */
	if (sc->bge_chipid == BGE_CHIPID_BCM5705_A0) {
		uint32_t		v, i;
		for (i = 0; i < 10; i++) {
			FUNC9(20);
			v = FUNC17(sc, BGE_STD_RX_RINGS + 8);
			if (v == (MCLBYTES - ETHER_ALIGN))
				break;
		}
		if (i == 10)
			FUNC30 (sc->bge_dev,
			    "5705 A0 chip failed to load RX ring\n");
	}

	/* Init jumbo RX ring. */
	if (FUNC4(sc) &&
	    FUNC35(ifp) + ETHER_HDR_LEN + ETHER_CRC_LEN + 
     	    ETHER_VLAN_ENCAP_LEN > (MCLBYTES - ETHER_ALIGN)) {
		if (FUNC14(sc) != 0) {
			FUNC30(sc->bge_dev,
			    "no memory for jumbo Rx buffers.\n");
			FUNC26(sc);
			return;
		}
	}

	/* Init our RX return ring index. */
	sc->bge_rx_saved_considx = 0;

	/* Init our RX/TX stat counters. */
	sc->bge_rx_discards = sc->bge_tx_discards = sc->bge_tx_collisions = 0;

	/* Init TX ring. */
	FUNC16(sc);

	/* Enable TX MAC state machine lockup fix. */
	mode = FUNC7(sc, BGE_TX_MODE);
	if (FUNC2(sc) || sc->bge_asicrev == BGE_ASICREV_BCM5906)
		mode |= BGE_TXMODE_MBUF_LOCKUP_FIX;
	if (sc->bge_asicrev == BGE_ASICREV_BCM5720 ||
	    sc->bge_asicrev == BGE_ASICREV_BCM5762) {
		mode &= ~(BGE_TXMODE_JMB_FRM_LEN | BGE_TXMODE_CNT_DN_MODE);
		mode |= FUNC7(sc, BGE_TX_MODE) &
		    (BGE_TXMODE_JMB_FRM_LEN | BGE_TXMODE_CNT_DN_MODE);
	}
	/* Turn on transmitter. */
	FUNC8(sc, BGE_TX_MODE, mode | BGE_TXMODE_ENABLE);
	FUNC9(100);

	/* Turn on receiver. */
	mode = FUNC7(sc, BGE_RX_MODE);
	if (FUNC2(sc))
		mode |= BGE_RXMODE_IPV6_ENABLE;
	if (sc->bge_asicrev == BGE_ASICREV_BCM5762)
		mode |= BGE_RXMODE_IPV4_FRAG_FIX;
	FUNC8(sc,BGE_RX_MODE, mode | BGE_RXMODE_ENABLE);
	FUNC9(10);

	/*
	 * Set the number of good frames to receive after RX MBUF
	 * Low Watermark has been reached. After the RX MAC receives
	 * this number of frames, it will drop subsequent incoming
	 * frames until the MBUF High Watermark is reached.
	 */
	if (FUNC3(sc))
		FUNC8(sc, BGE_MAX_RX_FRAME_LOWAT, 1);
	else
		FUNC8(sc, BGE_MAX_RX_FRAME_LOWAT, 2);

	/* Clear MAC statistics. */
	if (FUNC1(sc))
		FUNC25(sc);

	/* Tell firmware we're alive. */
	FUNC6(sc, BGE_MODE_CTL, BGE_MODECTL_STACKUP);

#ifdef DEVICE_POLLING
	/* Disable interrupts if we are polling. */
	if (if_getcapenable(ifp) & IFCAP_POLLING) {
		BGE_SETBIT(sc, BGE_PCI_MISC_CTL,
		    BGE_PCIMISCCTL_MASK_PCI_INTR);
		bge_writembx(sc, BGE_MBX_IRQ0_LO, 1);
	} else
#endif

	/* Enable host interrupts. */
	{
	FUNC6(sc, BGE_PCI_MISC_CTL, BGE_PCIMISCCTL_CLEAR_INTA);
	FUNC0(sc, BGE_PCI_MISC_CTL, BGE_PCIMISCCTL_MASK_PCI_INTR);
	FUNC28(sc, BGE_MBX_IRQ0_LO, 0);
	}

	FUNC36(ifp, IFF_DRV_RUNNING, 0);
	FUNC36(ifp, 0, IFF_DRV_OACTIVE);

	FUNC13(ifp);

	FUNC29(&sc->bge_stat_ch, hz, bge_tick, sc);
}