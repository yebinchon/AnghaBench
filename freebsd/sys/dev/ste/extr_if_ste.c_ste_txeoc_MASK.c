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
typedef  int uint16_t ;
struct ste_softc {scalar_t__ ste_tx_thresh; int /*<<< orphan*/  ste_dev; struct ifnet* ste_ifp; } ;
struct ifnet {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int FUNC0 (struct ste_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ste_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  STE_DMACTL ; 
 int /*<<< orphan*/  STE_DMACTL_TXDMA_STALL ; 
 int /*<<< orphan*/  STE_ERR_BITS ; 
 int /*<<< orphan*/  FUNC2 (struct ste_softc*) ; 
 scalar_t__ STE_MIN_FRAMELEN ; 
 scalar_t__ STE_PACKET_SIZE ; 
 int /*<<< orphan*/  FUNC3 (struct ste_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int STE_TXSTATUS_EXCESSCOLLS ; 
 int STE_TXSTATUS_RECLAIMERR ; 
 int STE_TXSTATUS_STATSOFLOW ; 
 int STE_TXSTATUS_TXDONE ; 
 int STE_TXSTATUS_UNDERRUN ; 
 int /*<<< orphan*/  STE_TX_STATUS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ste_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ste_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct ste_softc*) ; 

__attribute__((used)) static void
FUNC9(struct ste_softc *sc)
{
	uint16_t txstat;
	struct ifnet *ifp;

	FUNC2(sc);

	ifp = sc->ste_ifp;

	/*
	 * STE_TX_STATUS register implements a queue of up to 31
	 * transmit status byte. Writing an arbitrary value to the
	 * register will advance the queue to the next transmit
	 * status byte. This means if driver does not read
	 * STE_TX_STATUS register after completing sending more
	 * than 31 frames the controller would be stalled so driver
	 * should re-wake the Tx MAC. This is the most severe
	 * limitation of ST201 based controller.
	 */
	for (;;) {
		txstat = FUNC0(sc, STE_TX_STATUS);
		if ((txstat & STE_TXSTATUS_TXDONE) == 0)
			break;
		if ((txstat & (STE_TXSTATUS_UNDERRUN |
		    STE_TXSTATUS_EXCESSCOLLS | STE_TXSTATUS_RECLAIMERR |
		    STE_TXSTATUS_STATSOFLOW)) != 0) {
			FUNC5(ifp, IFCOUNTER_OERRORS, 1);
#ifdef	STE_SHOW_TXERRORS
			device_printf(sc->ste_dev, "TX error : 0x%b\n",
			    txstat & 0xFF, STE_ERR_BITS);
#endif
			if ((txstat & STE_TXSTATUS_UNDERRUN) != 0 &&
			    sc->ste_tx_thresh < STE_PACKET_SIZE) {
				sc->ste_tx_thresh += STE_MIN_FRAMELEN;
				if (sc->ste_tx_thresh > STE_PACKET_SIZE)
					sc->ste_tx_thresh = STE_PACKET_SIZE;
				FUNC4(sc->ste_dev,
				    "TX underrun, increasing TX"
				    " start threshold to %d bytes\n",
				    sc->ste_tx_thresh);
				/* Make sure to disable active DMA cycles. */
				FUNC3(sc, STE_DMACTL,
				    STE_DMACTL_TXDMA_STALL);
				FUNC8(sc);
				ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
				FUNC6(sc);
				break;
			}
			/* Restart Tx. */
			FUNC7(sc);
		}
		/*
		 * Advance to next status and ACK TxComplete
		 * interrupt. ST201 data sheet was wrong here, to
		 * get next Tx status, we have to write both
		 * STE_TX_STATUS and STE_TX_FRAMEID register.
		 * Otherwise controller returns the same status
		 * as well as not acknowledge Tx completion
		 * interrupt.
		 */
		FUNC1(sc, STE_TX_STATUS, txstat);
	}
}