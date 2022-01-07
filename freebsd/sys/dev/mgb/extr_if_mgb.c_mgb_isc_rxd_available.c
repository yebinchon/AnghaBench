
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct mgb_ring_data {scalar_t__* head_wb; } ;
struct mgb_softc {int ctx; struct mgb_ring_data rx_ring_data; } ;
typedef scalar_t__ qidx_t ;
typedef int if_softc_ctx_t ;


 int KASSERT (int,char*) ;
 scalar_t__ MGB_NEXT_RING_IDX (scalar_t__) ;
 int iflib_get_softc_ctx (int ) ;

__attribute__((used)) static int
mgb_isc_rxd_available(void *xsc, uint16_t rxqid, qidx_t idx, qidx_t budget)
{
 struct mgb_softc *sc;
 if_softc_ctx_t scctx;
 struct mgb_ring_data *rdata;
 int avail = 0;

 sc = xsc;
 KASSERT(rxqid == 0, ("tried to check availability in RX Channel %d.\n",
     rxqid));

 rdata = &sc->rx_ring_data;
 scctx = iflib_get_softc_ctx(sc->ctx);
 for (; idx != *(rdata->head_wb);
     idx = MGB_NEXT_RING_IDX(idx)) {
  avail++;

  if (avail == budget)
   break;
 }
 return (avail);
}
