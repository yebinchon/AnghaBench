
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rx_rdesc {scalar_t__ index; scalar_t__ len; } ;
struct TYPE_4__ {int age_rr_cons; int age_rx_cons; int age_rr_ring_map; int age_rr_ring_tag; int age_rx_ring_map; int age_rx_ring_tag; } ;
struct TYPE_3__ {struct rx_rdesc* age_rr_ring; } ;
struct age_softc {TYPE_2__ age_cdata; TYPE_1__ age_rdata; } ;


 int AGE_COMMIT_MBOX (struct age_softc*) ;
 int AGE_DESC_INC (int,int ) ;
 int AGE_LOCK_ASSERT (struct age_softc*) ;
 int AGE_RR_RING_CNT ;
 int AGE_RX_BUF_SIZE ;
 int AGE_RX_BYTES (int ) ;
 int AGE_RX_NSEGS (int ) ;
 int AGE_RX_RING_CNT ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int EAGAIN ;
 int age_rxeof (struct age_softc*,struct rx_rdesc*) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int howmany (int,int ) ;
 int le32toh (scalar_t__) ;

__attribute__((used)) static int
age_rxintr(struct age_softc *sc, int rr_prod, int count)
{
 struct rx_rdesc *rxrd;
 int rr_cons, nsegs, pktlen, prog;

 AGE_LOCK_ASSERT(sc);

 rr_cons = sc->age_cdata.age_rr_cons;
 if (rr_cons == rr_prod)
  return (0);

 bus_dmamap_sync(sc->age_cdata.age_rr_ring_tag,
     sc->age_cdata.age_rr_ring_map,
     BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
 bus_dmamap_sync(sc->age_cdata.age_rx_ring_tag,
     sc->age_cdata.age_rx_ring_map, BUS_DMASYNC_POSTWRITE);

 for (prog = 0; rr_cons != rr_prod; prog++) {
  if (count-- <= 0)
   break;
  rxrd = &sc->age_rdata.age_rr_ring[rr_cons];
  nsegs = AGE_RX_NSEGS(le32toh(rxrd->index));
  if (nsegs == 0)
   break;






  pktlen = AGE_RX_BYTES(le32toh(rxrd->len));
  if (nsegs != howmany(pktlen, AGE_RX_BUF_SIZE))
   break;


  age_rxeof(sc, rxrd);

  rxrd->index = 0;
  AGE_DESC_INC(rr_cons, AGE_RR_RING_CNT);
  sc->age_cdata.age_rx_cons += nsegs;
  sc->age_cdata.age_rx_cons %= AGE_RX_RING_CNT;
 }

 if (prog > 0) {

  sc->age_cdata.age_rr_cons = rr_cons;

  bus_dmamap_sync(sc->age_cdata.age_rx_ring_tag,
      sc->age_cdata.age_rx_ring_map, BUS_DMASYNC_PREWRITE);

  bus_dmamap_sync(sc->age_cdata.age_rr_ring_tag,
      sc->age_cdata.age_rr_ring_map,
      BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);


  AGE_COMMIT_MBOX(sc);
 }

 return (count > 0 ? 0 : EAGAIN);
}
