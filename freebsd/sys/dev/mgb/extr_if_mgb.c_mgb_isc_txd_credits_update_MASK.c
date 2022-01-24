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
struct mgb_ring_data {size_t* head_wb; size_t last_head; struct mgb_ring_desc* ring; } ;
struct mgb_softc {struct mgb_ring_data tx_ring_data; } ;
struct mgb_ring_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 size_t FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct mgb_ring_desc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(void *xsc, uint16_t txqid, bool clear)
{
	struct mgb_softc *sc;
	struct mgb_ring_desc *txd;
	struct mgb_ring_data *rdata;
	int processed = 0;

	/*
	 * > If clear is true, we need to report the number of TX command ring
	 * > descriptors that have been processed by the device.  If clear is
	 * > false, we just need to report whether or not at least one TX
	 * > command ring descriptor has been processed by the device.
	 * - vmx driver
	 */
	FUNC0(txqid == 0, ("tried to credits_update TX Channel %d.\n",
	    txqid));
	sc = xsc;
	rdata = &sc->tx_ring_data;

	while (*(rdata->head_wb) != rdata->last_head) {
		if (!clear)
			return 1;

		txd = &rdata->ring[rdata->last_head];
		FUNC2(txd, 0, sizeof(struct mgb_ring_desc));
		rdata->last_head = FUNC1(rdata->last_head);
		processed++;
	}

	return (processed);
}