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
typedef  int u_char ;
struct cgem_softc {int net_ctl_shadow; scalar_t__ txring_physaddr; scalar_t__ rxring_physaddr; int /*<<< orphan*/  ifp; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cgem_softc*) ; 
 int /*<<< orphan*/  CGEM_DMA_CFG ; 
 int CGEM_DMA_CFG_AHB_FIXED_BURST_LEN_16 ; 
 int CGEM_DMA_CFG_CHKSUM_GEN_OFFLOAD_EN ; 
 int CGEM_DMA_CFG_DISC_WHEN_NO_AHB ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int CGEM_DMA_CFG_RX_PKTBUF_MEMSZ_SEL_8K ; 
 int CGEM_DMA_CFG_TX_PKTBUF_MEMSZ_SEL ; 
 int /*<<< orphan*/  CGEM_INTR_EN ; 
 int CGEM_INTR_HRESP_NOT_OK ; 
 int CGEM_INTR_RX_COMPLETE ; 
 int CGEM_INTR_RX_OVERRUN ; 
 int CGEM_INTR_RX_USED_READ ; 
 int CGEM_INTR_TX_USED_READ ; 
 int /*<<< orphan*/  CGEM_NET_CFG ; 
 int CGEM_NET_CFG_1536RXEN ; 
 int CGEM_NET_CFG_DBUS_WIDTH_32 ; 
 int CGEM_NET_CFG_FCS_REMOVE ; 
 int CGEM_NET_CFG_FULL_DUPLEX ; 
 int CGEM_NET_CFG_GIGE_EN ; 
 int CGEM_NET_CFG_MDC_CLK_DIV_64 ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int CGEM_NET_CFG_RX_CHKSUM_OFFLD_EN ; 
 int CGEM_NET_CFG_SPEED100 ; 
 int /*<<< orphan*/  CGEM_NET_CTRL ; 
 int CGEM_NET_CTRL_RX_EN ; 
 int CGEM_NET_CTRL_TX_EN ; 
 int /*<<< orphan*/  CGEM_RX_QBAR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CGEM_TX_QBAR ; 
 int /*<<< orphan*/  ETHER_ALIGN ; 
 int IFCAP_RXCSUM ; 
 int IFCAP_TXCSUM ; 
 int /*<<< orphan*/  MCLBYTES ; 
 int /*<<< orphan*/  FUNC5 (struct cgem_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct cgem_softc *sc)
{
	if_t ifp = sc->ifp;
	uint32_t net_cfg;
	uint32_t dma_cfg;
	u_char *eaddr = FUNC7(ifp);

	FUNC0(sc);

	/* Program Net Config Register. */
	net_cfg = CGEM_NET_CFG_DBUS_WIDTH_32 |
		CGEM_NET_CFG_MDC_CLK_DIV_64 |
		CGEM_NET_CFG_FCS_REMOVE |
		FUNC2(ETHER_ALIGN) |
		CGEM_NET_CFG_GIGE_EN |
		CGEM_NET_CFG_1536RXEN |
		CGEM_NET_CFG_FULL_DUPLEX |
		CGEM_NET_CFG_SPEED100;

	/* Enable receive checksum offloading? */
	if ((FUNC6(ifp) & IFCAP_RXCSUM) != 0)
		net_cfg |=  CGEM_NET_CFG_RX_CHKSUM_OFFLD_EN;

	FUNC5(sc, CGEM_NET_CFG, net_cfg);

	/* Program DMA Config Register. */
	dma_cfg = FUNC1(MCLBYTES) |
		CGEM_DMA_CFG_RX_PKTBUF_MEMSZ_SEL_8K |
		CGEM_DMA_CFG_TX_PKTBUF_MEMSZ_SEL |
		CGEM_DMA_CFG_AHB_FIXED_BURST_LEN_16 |
		CGEM_DMA_CFG_DISC_WHEN_NO_AHB;

	/* Enable transmit checksum offloading? */
	if ((FUNC6(ifp) & IFCAP_TXCSUM) != 0)
		dma_cfg |= CGEM_DMA_CFG_CHKSUM_GEN_OFFLOAD_EN;

	FUNC5(sc, CGEM_DMA_CFG, dma_cfg);

	/* Write the rx and tx descriptor ring addresses to the QBAR regs. */
	FUNC5(sc, CGEM_RX_QBAR, (uint32_t) sc->rxring_physaddr);
	FUNC5(sc, CGEM_TX_QBAR, (uint32_t) sc->txring_physaddr);
	
	/* Enable rx and tx. */
	sc->net_ctl_shadow |= (CGEM_NET_CTRL_TX_EN | CGEM_NET_CTRL_RX_EN);
	FUNC5(sc, CGEM_NET_CTRL, sc->net_ctl_shadow);

	/* Set receive address in case it changed. */
	FUNC5(sc, FUNC4(0), (eaddr[3] << 24) |
	    (eaddr[2] << 16) | (eaddr[1] << 8) | eaddr[0]);
	FUNC5(sc, FUNC3(0), (eaddr[5] << 8) | eaddr[4]);

	/* Set up interrupts. */
	FUNC5(sc, CGEM_INTR_EN,
	    CGEM_INTR_RX_COMPLETE | CGEM_INTR_RX_OVERRUN |
	    CGEM_INTR_TX_USED_READ | CGEM_INTR_RX_USED_READ |
	    CGEM_INTR_HRESP_NOT_OK);
}