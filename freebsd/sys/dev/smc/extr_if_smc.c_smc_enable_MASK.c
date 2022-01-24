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
struct smc_softc {int smc_mask; struct ifnet* smc_ifp; } ;
struct ifnet {int if_capenable; } ;

/* Variables and functions */
 int EPH_INT ; 
 int IFCAP_POLLING ; 
 int /*<<< orphan*/  MSK ; 
 int /*<<< orphan*/  RCR ; 
 int RCR_RXEN ; 
 int RCR_STRIP_CRC ; 
 int RCV_INT ; 
 int /*<<< orphan*/  RPCR ; 
 int RPCR_ANEG ; 
 int RPCR_LED_ACT_ANY ; 
 int RPCR_LED_LINK_ANY ; 
 int RPCR_LSA_SHIFT ; 
 int RPCR_LSB_SHIFT ; 
 int RX_OVRN_INT ; 
 int /*<<< orphan*/  FUNC0 (struct smc_softc*) ; 
 int /*<<< orphan*/  TCR ; 
 int TCR_PAD_EN ; 
 int TCR_TXENA ; 
 int TX_INT ; 
 int /*<<< orphan*/  FUNC1 (struct smc_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct smc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct smc_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct smc_softc *sc)
{
	struct ifnet		*ifp;

	FUNC0(sc);
	ifp = sc->smc_ifp;

	/*
	 * Set up the receive/PHY control register.
	 */
	FUNC1(sc, 0);
	FUNC3(sc, RPCR, RPCR_ANEG | (RPCR_LED_LINK_ANY << RPCR_LSA_SHIFT)
	    | (RPCR_LED_ACT_ANY << RPCR_LSB_SHIFT));

	/*
	 * Set up the transmit and receive control registers.
	 */
	FUNC3(sc, TCR, TCR_TXENA | TCR_PAD_EN);
	FUNC3(sc, RCR, RCR_RXEN | RCR_STRIP_CRC);

	/*
	 * Set up the interrupt mask.
	 */
	FUNC1(sc, 2);
	sc->smc_mask = EPH_INT | RX_OVRN_INT | RCV_INT | TX_INT;
	if ((ifp->if_capenable & IFCAP_POLLING) != 0)
		FUNC2(sc, MSK, sc->smc_mask);
}