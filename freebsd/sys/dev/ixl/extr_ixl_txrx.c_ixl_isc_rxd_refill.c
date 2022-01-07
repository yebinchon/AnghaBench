
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
typedef size_t uint32_t ;
typedef int uint16_t ;
struct rx_ring {TYPE_3__* rx_base; } ;
struct ixl_vsi {TYPE_1__* rx_queues; TYPE_4__* shared; } ;
typedef TYPE_4__* if_softc_ctx_t ;
typedef TYPE_5__* if_rxd_update_t ;
struct TYPE_11__ {size_t iru_qsidx; size_t iru_pidx; int iru_count; int * iru_paddrs; } ;
struct TYPE_10__ {size_t* isc_nrxd; } ;
struct TYPE_8__ {int pkt_addr; } ;
struct TYPE_9__ {TYPE_2__ read; } ;
struct TYPE_7__ {struct rx_ring rxr; } ;


 int htole64 (int ) ;

__attribute__((used)) static void
ixl_isc_rxd_refill(void *arg, if_rxd_update_t iru)
{
 struct ixl_vsi *vsi = arg;
 if_softc_ctx_t scctx = vsi->shared;
 struct rx_ring *rxr = &((vsi->rx_queues[iru->iru_qsidx]).rxr);
 uint64_t *paddrs;
 uint32_t next_pidx, pidx;
 uint16_t count;
 int i;

 paddrs = iru->iru_paddrs;
 pidx = iru->iru_pidx;
 count = iru->iru_count;

 for (i = 0, next_pidx = pidx; i < count; i++) {
  rxr->rx_base[next_pidx].read.pkt_addr = htole64(paddrs[i]);
  if (++next_pidx == scctx->isc_nrxd[0])
   next_pidx = 0;
  }
}
