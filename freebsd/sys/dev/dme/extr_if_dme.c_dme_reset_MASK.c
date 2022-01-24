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
typedef  int u_int ;
struct dme_softc {scalar_t__ dme_txready; scalar_t__ dme_txbusy; TYPE_1__* dme_ifp; int /*<<< orphan*/  dme_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DME_NCR ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int NCR_LBK_MAC ; 
 int NCR_RST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct dme_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dme_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct dme_softc *sc)
{
	u_int ncr;

	/* Send a soft reset #1 */
	FUNC4(sc, DME_NCR, NCR_RST | NCR_LBK_MAC);
	FUNC0(100); /* Wait for the MAC to reset */
	ncr = FUNC3(sc, DME_NCR);
	if (ncr & NCR_RST)
		FUNC2(sc->dme_dev, "device did not complete first reset\n");

	/* Send a soft reset #2 per Application Notes v1.22 */
	FUNC4(sc, DME_NCR, 0);
	FUNC4(sc, DME_NCR, NCR_RST | NCR_LBK_MAC);
	FUNC0(100); /* Wait for the MAC to reset */
	ncr = FUNC3(sc, DME_NCR);
	if (ncr & NCR_RST)
		FUNC2(sc->dme_dev, "device did not complete second reset\n");

	/* Reset trasmit state */
	sc->dme_txbusy = 0;
	sc->dme_txready = 0;

	FUNC1("dme_reset, flags %#x busy %d ready %d",
	    sc->dme_ifp ? sc->dme_ifp->if_drv_flags : 0,
	    sc->dme_txbusy, sc->dme_txready);
}