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
struct dme_softc {scalar_t__ dme_rev; int* dme_macaddr; int /*<<< orphan*/  dme_dev; } ;

/* Variables and functions */
 int BMCR_RESET ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  DME_BPTR ; 
 scalar_t__ DME_CHIP_DM9000B ; 
 int /*<<< orphan*/  DME_FCR ; 
 int /*<<< orphan*/  DME_FCTR ; 
 int /*<<< orphan*/  DME_GPCR ; 
 int /*<<< orphan*/  DME_GPR ; 
 int /*<<< orphan*/  DME_IMR ; 
 int /*<<< orphan*/  DME_INT_PHY ; 
 int /*<<< orphan*/  DME_ISR ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  DME_NCR ; 
 int /*<<< orphan*/  DME_NSR ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  DME_RCR ; 
 int /*<<< orphan*/  DME_SMCR ; 
 int /*<<< orphan*/  DME_TCR ; 
 int DSPCR_INIT ; 
 int ETHER_ADDR_LEN ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int IMR_PAR ; 
 int IMR_PRI ; 
 int IMR_PTI ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  MII_DME_DSPCR ; 
 int NCR_LBK_NORMAL ; 
 int NSR_TX1END ; 
 int NSR_TX2END ; 
 int NSR_WAKEST ; 
 int RCR_DIS_CRC ; 
 int RCR_DIS_LONG ; 
 int RCR_RXEN ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct dme_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC10(struct dme_softc *sc)
{
	int i;

	/* Mask all interrupts and reset receive pointer */
	FUNC9(sc, DME_IMR, IMR_PAR);

	/* Disable GPIO0 to enable the internal PHY */
	FUNC9(sc, DME_GPCR, 1);
	FUNC9(sc, DME_GPR, 0);

#if 0
	/*
	 * Supposedly requires special initialization for DSP PHYs
	 * used by DM9000B. Maybe belongs in dedicated PHY driver?
	 */
	if (sc->dme_rev == DME_CHIP_DM9000B) {
		dme_miibus_writereg(sc->dme_dev, DME_INT_PHY, MII_BMCR,
		    BMCR_RESET);
		dme_miibus_writereg(sc->dme_dev, DME_INT_PHY, MII_DME_DSPCR,
		    DSPCR_INIT);
		/* Wait 100ms for it to complete. */
		for (i = 0; i < 100; i++) {
			int reg;

			reg = dme_miibus_readreg(sc->dme_dev, DME_INT_PHY, MII_BMCR);
			if ((reg & BMCR_RESET) == 0)
				break;
			DELAY(1000);
		}
	}
#endif

	/* Select the internal PHY and normal loopback */
	FUNC9(sc, DME_NCR, NCR_LBK_NORMAL);
	/* Clear any TX requests */
	FUNC9(sc, DME_TCR, 0);
	/* Setup backpressure thresholds to 4k and 600us */
	FUNC9(sc, DME_BPTR, FUNC0(3) | FUNC1(0x0f));
	/* Setup flow control */
	FUNC9(sc, DME_FCTR, FUNC5(0x3) | FUNC6(0x08));
	/* Enable flow control */
	FUNC9(sc, DME_FCR, 0xff);
	/* Clear special modes */
	FUNC9(sc, DME_SMCR, 0);
	/* Clear TX status */
	FUNC9(sc, DME_NSR, NSR_WAKEST | NSR_TX2END | NSR_TX1END);
	/* Clear interrrupts */
	FUNC9(sc, DME_ISR, 0xff);
	/* Set multicast address filter */
	for (i = 0; i < 8; i++)
		FUNC9(sc, FUNC3(i), 0xff);
	/* Set the MAC address */
	for (i = 0; i < ETHER_ADDR_LEN; i++)
		FUNC9(sc, FUNC4(i), sc->dme_macaddr[i]);
	/* Enable the RX buffer */
	FUNC9(sc, DME_RCR, RCR_DIS_LONG | RCR_DIS_CRC | RCR_RXEN);

	/* Enable interrupts we care about */
	FUNC9(sc, DME_IMR, IMR_PAR | IMR_PRI | IMR_PTI);
}