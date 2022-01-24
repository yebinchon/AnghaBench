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
struct malo_softc {int dummy; } ;
struct malo_rxdesc {int /*<<< orphan*/  rxcontrol; int /*<<< orphan*/  physbuffdata; scalar_t__ nf; int /*<<< orphan*/  pktlen; scalar_t__ channel; int /*<<< orphan*/  status; scalar_t__ snr; scalar_t__ qosctrl; } ;
struct malo_rxbuf {int /*<<< orphan*/  bf_data; int /*<<< orphan*/ * bf_m; struct malo_rxdesc* bf_desc; } ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct malo_softc*,struct malo_rxdesc*,int) ; 
 int /*<<< orphan*/  MALO_RXD_CTRL_DRIVER_OWN ; 
 int /*<<< orphan*/  MALO_RXD_CTRL_OS_OWN ; 
 int /*<<< orphan*/  MALO_RXD_STATUS_IDLE ; 
 int /*<<< orphan*/  MALO_RXSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct malo_softc*,struct malo_rxbuf*) ; 

__attribute__((used)) static int
FUNC4(struct malo_softc *sc, struct malo_rxbuf *bf)
{
	struct malo_rxdesc *ds;

	ds = bf->bf_desc;
	if (bf->bf_m == NULL) {
		bf->bf_m = FUNC3(sc, bf);
		if (bf->bf_m == NULL) {
			/* mark descriptor to be skipped */
			ds->rxcontrol = MALO_RXD_CTRL_OS_OWN;
			/* NB: don't need PREREAD */
			FUNC0(sc, ds, BUS_DMASYNC_PREWRITE);
			return ENOMEM;
		}
	}

	/*
	 * Setup descriptor.
	 */
	ds->qosctrl = 0;
	ds->snr = 0;
	ds->status = MALO_RXD_STATUS_IDLE;
	ds->channel = 0;
	ds->pktlen = FUNC1(MALO_RXSIZE);
	ds->nf = 0;
	ds->physbuffdata = FUNC2(bf->bf_data);
	/* NB: don't touch pPhysNext, set once */
	ds->rxcontrol = MALO_RXD_CTRL_DRIVER_OWN;
	FUNC0(sc, ds, BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

	return 0;
}