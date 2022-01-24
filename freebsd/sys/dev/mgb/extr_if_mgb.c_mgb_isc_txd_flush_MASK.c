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
typedef  scalar_t__ uint16_t ;
struct mgb_ring_data {scalar_t__ last_tail; } ;
struct mgb_softc {struct mgb_ring_data tx_ring_data; } ;
typedef  scalar_t__ qidx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mgb_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void
FUNC3(void *xsc, uint16_t txqid, qidx_t pidx)
{
	struct mgb_softc *sc;
	struct mgb_ring_data *rdata;

	FUNC1(txqid == 0, ("tried to flush TX Channel %d.\n", txqid));
	sc = xsc;
	rdata = &sc->tx_ring_data;

	if (rdata->last_tail != pidx) {
		rdata->last_tail = pidx;
		FUNC0(sc, FUNC2(txqid), rdata->last_tail);
	}
}