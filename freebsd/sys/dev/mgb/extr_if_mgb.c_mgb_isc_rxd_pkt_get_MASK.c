#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mgb_ring_data {size_t* head_wb; size_t last_head; struct mgb_ring_desc* ring; } ;
struct mgb_softc {int /*<<< orphan*/  dev; struct mgb_ring_data rx_ring_data; } ;
struct TYPE_5__ {void* high; void* low; } ;
struct mgb_ring_desc {int ctl; void* sts; TYPE_1__ addr; } ;
typedef  TYPE_3__* if_rxd_info_t ;
struct TYPE_7__ {scalar_t__ iri_qsidx; int iri_nfrags; int iri_len; TYPE_2__* iri_frags; } ;
struct TYPE_6__ {size_t irf_idx; int irf_len; scalar_t__ irf_flid; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MGB_DESC_CTL_OWN ; 
 int FUNC1 (struct mgb_ring_desc*) ; 
 size_t FUNC2 (size_t) ; 
 int MGB_RX_DESC_CTL_FS ; 
 int MGB_RX_DESC_CTL_LS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(void *xsc, if_rxd_info_t ri)
{
	struct mgb_softc *sc;
	struct mgb_ring_data *rdata;
	struct mgb_ring_desc rxd;
	int total_len;

	FUNC0(ri->iri_qsidx == 0,
	    ("tried to check availability in RX Channel %d\n", ri->iri_qsidx));
	sc = xsc;
	total_len = 0;
	rdata = &sc->rx_ring_data;

	while (*(rdata->head_wb) != rdata->last_head) {
		/* copy ring desc and do swapping */
		rxd = rdata->ring[rdata->last_head];
		rxd.ctl = FUNC4(rxd.ctl);
		rxd.addr.low = FUNC4(rxd.ctl);
		rxd.addr.high = FUNC4(rxd.ctl);
		rxd.sts = FUNC4(rxd.ctl);

		if ((rxd.ctl & MGB_DESC_CTL_OWN) != 0) {
			FUNC3(sc->dev,
			    "Tried to read descriptor ... "
			    "found that it's owned by the driver\n");
			return EINVAL;
		}
		if ((rxd.ctl & MGB_RX_DESC_CTL_FS) == 0) {
			FUNC3(sc->dev,
			    "Tried to read descriptor ... "
			    "found that FS is not set.\n");
			FUNC3(sc->dev, "Tried to read descriptor ... that it FS is not set.\n");
			return EINVAL;
		}
		/* XXX: Multi-packet support */
		if ((rxd.ctl & MGB_RX_DESC_CTL_LS) == 0) {
			FUNC3(sc->dev,
			    "Tried to read descriptor ... "
			    "found that LS is not set. (Multi-buffer packets not yet supported)\n");
			return EINVAL;
		}
		ri->iri_frags[0].irf_flid = 0;
		ri->iri_frags[0].irf_idx = rdata->last_head;
		ri->iri_frags[0].irf_len = FUNC1(&rxd);
		total_len += ri->iri_frags[0].irf_len;

		rdata->last_head = FUNC2(rdata->last_head);
		break;
	}
	ri->iri_nfrags = 1;
	ri->iri_len = total_len;

	return (0);
}