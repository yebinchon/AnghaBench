
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int age_rx_cons; int age_rx_ring_map; int age_rx_ring_tag; struct age_rxdesc* age_rxdesc; } ;
struct age_ring_data {int * age_rx_ring; } ;
struct age_softc {TYPE_1__ age_cdata; struct age_ring_data age_rdata; scalar_t__ age_morework; } ;
struct age_rxdesc {int * rx_desc; int * rx_m; } ;


 int AGE_LOCK_ASSERT (struct age_softc*) ;
 int AGE_RX_RING_CNT ;
 int AGE_RX_RING_SZ ;
 int BUS_DMASYNC_PREWRITE ;
 int ENOBUFS ;
 scalar_t__ age_newbuf (struct age_softc*,struct age_rxdesc*) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bzero (int *,int ) ;

__attribute__((used)) static int
age_init_rx_ring(struct age_softc *sc)
{
 struct age_ring_data *rd;
 struct age_rxdesc *rxd;
 int i;

 AGE_LOCK_ASSERT(sc);

 sc->age_cdata.age_rx_cons = AGE_RX_RING_CNT - 1;
 sc->age_morework = 0;
 rd = &sc->age_rdata;
 bzero(rd->age_rx_ring, AGE_RX_RING_SZ);
 for (i = 0; i < AGE_RX_RING_CNT; i++) {
  rxd = &sc->age_cdata.age_rxdesc[i];
  rxd->rx_m = ((void*)0);
  rxd->rx_desc = &rd->age_rx_ring[i];
  if (age_newbuf(sc, rxd) != 0)
   return (ENOBUFS);
 }

 bus_dmamap_sync(sc->age_cdata.age_rx_ring_tag,
     sc->age_cdata.age_rx_ring_map, BUS_DMASYNC_PREWRITE);

 return (0);
}
