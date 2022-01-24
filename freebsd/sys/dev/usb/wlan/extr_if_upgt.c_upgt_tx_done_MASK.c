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
typedef  int /*<<< orphan*/  uint8_t ;
struct upgt_softc {scalar_t__ sc_tx_timer; struct upgt_data* sc_tx_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  reqid; } ;
struct upgt_lmac_tx_done_desc {int /*<<< orphan*/  seq; int /*<<< orphan*/  rssi; int /*<<< orphan*/  status; TYPE_1__ header2; } ;
struct upgt_data {scalar_t__ addr; int /*<<< orphan*/ * m; int /*<<< orphan*/ * ni; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct upgt_softc*,int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC1 (struct upgt_softc*) ; 
 int /*<<< orphan*/  UPGT_DEBUG_TX_PROC ; 
 int /*<<< orphan*/  FUNC2 (struct upgt_softc*) ; 
 int UPGT_TX_MAXCOUNT ; 
 int /*<<< orphan*/  FUNC3 (struct upgt_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct upgt_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct upgt_softc*) ; 

__attribute__((used)) static void
FUNC8(struct upgt_softc *sc, uint8_t *data)
{
	struct upgt_lmac_tx_done_desc *desc;
	int i, freed = 0;

	FUNC1(sc);

	desc = (struct upgt_lmac_tx_done_desc *)data;

	for (i = 0; i < UPGT_TX_MAXCOUNT; i++) {
		struct upgt_data *data_tx = &sc->sc_tx_data[i];

		if (data_tx->addr == FUNC5(desc->header2.reqid)) {
			FUNC6(sc, data_tx->addr);
			data_tx->ni = NULL;
			data_tx->addr = 0;
			data_tx->m = NULL;

			FUNC0(sc, UPGT_DEBUG_TX_PROC,
			    "TX done: memaddr=0x%08x, status=0x%04x, rssi=%d, ",
			    FUNC5(desc->header2.reqid),
			    FUNC4(desc->status), FUNC4(desc->rssi));
			FUNC0(sc, UPGT_DEBUG_TX_PROC, "seq=%d\n",
			    FUNC4(desc->seq));

			freed++;
		}
	}

	if (freed != 0) {
		FUNC3(sc);
		sc->sc_tx_timer = 0;
		FUNC7(sc);
		FUNC2(sc);
	}
}