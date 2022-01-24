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
struct mgb_ring_data {scalar_t__* head_wb; } ;
struct mgb_softc {int /*<<< orphan*/  ctx; struct mgb_ring_data rx_ring_data; } ;
typedef  scalar_t__ qidx_t ;
typedef  int /*<<< orphan*/  if_softc_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(void *xsc, uint16_t rxqid, qidx_t idx, qidx_t budget)
{
	struct mgb_softc *sc;
	if_softc_ctx_t scctx;
	struct mgb_ring_data *rdata;
	int avail = 0;

	sc = xsc;
	FUNC0(rxqid == 0, ("tried to check availability in RX Channel %d.\n",
	    rxqid));

	rdata = &sc->rx_ring_data;
	scctx = FUNC2(sc->ctx);
	for (; idx != *(rdata->head_wb);
	    idx = FUNC1(idx)) {
		avail++;
		/* XXX: Could verify desc is device owned here */
		if (avail == budget)
			break;
	}
	return (avail);
}