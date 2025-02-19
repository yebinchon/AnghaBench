
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef size_t uint32_t ;
typedef int uint16_t ;
struct rx_ring {int * rx_base; } ;
struct em_rx_queue {struct rx_ring rxr; } ;
struct e1000_rx_desc {scalar_t__ status; int buffer_addr; } ;
struct adapter {struct em_rx_queue* rx_queues; TYPE_1__* shared; } ;
typedef TYPE_1__* if_softc_ctx_t ;
typedef TYPE_2__* if_rxd_update_t ;
struct TYPE_5__ {size_t iru_qsidx; size_t iru_pidx; int iru_count; int * iru_paddrs; } ;
struct TYPE_4__ {size_t* isc_nrxd; } ;


 int htole64 (int ) ;

__attribute__((used)) static void
lem_isc_rxd_refill(void *arg, if_rxd_update_t iru)
{
 struct adapter *sc = arg;
 if_softc_ctx_t scctx = sc->shared;
 struct em_rx_queue *que = &sc->rx_queues[iru->iru_qsidx];
 struct rx_ring *rxr = &que->rxr;
 struct e1000_rx_desc *rxd;
 uint64_t *paddrs;
 uint32_t next_pidx, pidx;
 uint16_t count;
 int i;

 paddrs = iru->iru_paddrs;
 pidx = iru->iru_pidx;
 count = iru->iru_count;

 for (i = 0, next_pidx = pidx; i < count; i++) {
  rxd = (struct e1000_rx_desc *)&rxr->rx_base[next_pidx];
  rxd->buffer_addr = htole64(paddrs[i]);

  rxd->status = 0;

  if (++next_pidx == scctx->isc_nrxd[0])
   next_pidx = 0;
 }
}
