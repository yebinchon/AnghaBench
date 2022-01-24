#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct dme_softc {scalar_t__ dme_txready; TYPE_1__* dme_ifp; scalar_t__ dme_txbusy; } ;
struct TYPE_2__ {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DME_ISR ; 
 int /*<<< orphan*/  FUNC0 (struct dme_softc*) ; 
 int /*<<< orphan*/  DME_NSR ; 
 int /*<<< orphan*/  DME_TSR1 ; 
 int /*<<< orphan*/  DME_TSR2 ; 
 int /*<<< orphan*/  FUNC1 (struct dme_softc*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int ISR_PR ; 
 int ISR_PT ; 
 int NSR_TX1END ; 
 int NSR_TX2END ; 
 int /*<<< orphan*/  FUNC3 (struct dme_softc*) ; 
 int FUNC4 (struct dme_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct dme_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct dme_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct dme_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(void *arg)
{
	struct dme_softc *sc;
	uint32_t intr_status;

	sc = (struct dme_softc *)arg;

	FUNC0(sc);

	intr_status = FUNC4(sc, DME_ISR);
	FUNC7(sc, DME_ISR, intr_status);

	FUNC2("dme_intr flags %#x busy %d ready %d intr %#x",
	    sc->dme_ifp->if_drv_flags, sc->dme_txbusy,
	    sc->dme_txready, intr_status);

	if (intr_status & ISR_PT) {
		uint8_t nsr, tx_status;

		sc->dme_txbusy = 0;

		nsr = FUNC4(sc, DME_NSR);

		if (nsr & NSR_TX1END)
			tx_status = FUNC4(sc, DME_TSR1);
		else if (nsr & NSR_TX2END)
			tx_status = FUNC4(sc, DME_TSR2);
		else
			tx_status = 1;

		FUNC2("dme_intr flags %#x busy %d ready %d nsr %#x",
		    sc->dme_ifp->if_drv_flags, sc->dme_txbusy,
		    sc->dme_txready, nsr);

		/* Prepare packet to send if none is currently pending */
		if (sc->dme_txready == 0)
			FUNC3(sc);
		/* Send the packet out of one is waiting for transmit */
		if (sc->dme_txready != 0) {
			/* Initiate transmission of the prepared packet */
			FUNC6(sc);
			/* Prepare next packet to send */
			FUNC3(sc);
			/*
			 * We need to wait until the current packet has
			 * been transmitted.
			 */
			if (sc->dme_txready != 0)
				sc->dme_ifp->if_drv_flags |= IFF_DRV_OACTIVE;
		}
	}

	if (intr_status & ISR_PR) {
		/* Read the packets off the device */
		while (FUNC5(sc) == 0)
			continue;
	}
	FUNC1(sc);
}