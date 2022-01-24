#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  status_error; } ;
struct TYPE_5__ {TYPE_1__ upper; } ;
union e1000_rx_desc_extended {TYPE_2__ wb; } ;
typedef  size_t uint16_t ;
typedef  int u32 ;
struct rx_ring {union e1000_rx_desc_extended* rx_base; } ;
struct em_rx_queue {struct rx_ring rxr; } ;
struct adapter {struct em_rx_queue* rx_queues; TYPE_3__* shared; } ;
typedef  int qidx_t ;
typedef  TYPE_3__* if_softc_ctx_t ;
struct TYPE_6__ {int* isc_nrxd; } ;

/* Variables and functions */
 int E1000_RXD_STAT_DD ; 
 int E1000_RXD_STAT_EOP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(void *arg, uint16_t rxqid, qidx_t idx, qidx_t budget)
{
	struct adapter *sc = arg;
	if_softc_ctx_t scctx = sc->shared;
	struct em_rx_queue *que = &sc->rx_queues[rxqid];
	struct rx_ring *rxr = &que->rxr;
	union e1000_rx_desc_extended *rxd;
	u32 staterr = 0;
	int cnt, i;

	for (cnt = 0, i = idx; cnt < scctx->isc_nrxd[0] && cnt <= budget;) {
		rxd = &rxr->rx_base[i];
		staterr = FUNC0(rxd->wb.upper.status_error);

		if ((staterr & E1000_RXD_STAT_DD) == 0)
			break;
		if (++i == scctx->isc_nrxd[0])
			i = 0;
		if (staterr & E1000_RXD_STAT_EOP)
			cnt++;
	}
	return (cnt);
}