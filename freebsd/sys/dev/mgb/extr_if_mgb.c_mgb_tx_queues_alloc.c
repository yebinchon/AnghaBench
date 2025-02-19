
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint64_t ;
typedef int uint32_t ;
struct mgb_ring_data {void* head_wb_bus_addr; int * head_wb; void* ring_bus_addr; struct mgb_ring_desc* ring; } ;
struct mgb_softc {struct mgb_ring_data tx_ring_data; } ;
struct mgb_ring_desc {int dummy; } ;
typedef int if_ctx_t ;
typedef scalar_t__ caddr_t ;


 int KASSERT (int,char*) ;
 struct mgb_softc* iflib_get_softc (int ) ;

__attribute__((used)) static int
mgb_tx_queues_alloc(if_ctx_t ctx, caddr_t *vaddrs, uint64_t *paddrs, int ntxqs,
    int ntxqsets)
{
 struct mgb_softc *sc;
 struct mgb_ring_data *rdata;
 int q;

 sc = iflib_get_softc(ctx);
 KASSERT(ntxqsets == 1, ("ntxqsets = %d", ntxqsets));
 rdata = &sc->tx_ring_data;
 for (q = 0; q < ntxqsets; q++) {
  KASSERT(ntxqs == 2, ("ntxqs = %d", ntxqs));

  rdata->ring = (struct mgb_ring_desc *) vaddrs[q * ntxqs + 0];
  rdata->ring_bus_addr = paddrs[q * ntxqs + 0];


  rdata->head_wb = (uint32_t *) vaddrs[q * ntxqs + 1];
  rdata->head_wb_bus_addr = paddrs[q * ntxqs + 1];
 }
 return 0;
}
