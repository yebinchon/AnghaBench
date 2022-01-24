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
struct dme_softc {int dme_txlen; int dme_txbusy; scalar_t__ dme_txready; TYPE_1__* dme_ifp; } ;
struct TYPE_2__ {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dme_softc*) ; 
 int /*<<< orphan*/  DME_ISR ; 
 int /*<<< orphan*/  DME_TCR ; 
 int /*<<< orphan*/  DME_TXPLH ; 
 int /*<<< orphan*/  DME_TXPLL ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*) ; 
 int TCR_TXREQ ; 
 int /*<<< orphan*/  FUNC3 (struct dme_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dme_softc*,int /*<<< orphan*/ ,int) ; 

void
FUNC5(struct dme_softc *sc)
{

	FUNC0(sc);
	FUNC2(sc->dme_txready, ("transmit without txready"));

	FUNC4(sc, DME_TXPLL, sc->dme_txlen & 0xff);
	FUNC4(sc, DME_TXPLH, (sc->dme_txlen >> 8) & 0xff );

	/* Request to send the packet */
	FUNC3(sc, DME_ISR);

	FUNC4(sc, DME_TCR, TCR_TXREQ);

	sc->dme_txready = 0;
	sc->dme_txbusy = 1;
	FUNC1("dme_transmit done, flags %#x busy %d ready %d",
	    sc->dme_ifp->if_drv_flags, sc->dme_txbusy, sc->dme_txready);
}