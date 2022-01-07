
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct mgb_ring_data {size_t* head_wb; size_t last_head; struct mgb_ring_desc* ring; } ;
struct mgb_softc {struct mgb_ring_data tx_ring_data; } ;
struct mgb_ring_desc {int dummy; } ;


 int KASSERT (int,char*) ;
 size_t MGB_NEXT_RING_IDX (size_t) ;
 int memset (struct mgb_ring_desc*,int ,int) ;

__attribute__((used)) static int
mgb_isc_txd_credits_update(void *xsc, uint16_t txqid, bool clear)
{
 struct mgb_softc *sc;
 struct mgb_ring_desc *txd;
 struct mgb_ring_data *rdata;
 int processed = 0;
 KASSERT(txqid == 0, ("tried to credits_update TX Channel %d.\n",
     txqid));
 sc = xsc;
 rdata = &sc->tx_ring_data;

 while (*(rdata->head_wb) != rdata->last_head) {
  if (!clear)
   return 1;

  txd = &rdata->ring[rdata->last_head];
  memset(txd, 0, sizeof(struct mgb_ring_desc));
  rdata->last_head = MGB_NEXT_RING_IDX(rdata->last_head);
  processed++;
 }

 return (processed);
}
