
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int alc_rx_cons; int alc_rx_ring_map; int alc_rx_ring_tag; struct alc_rxdesc* alc_rxdesc; } ;
struct alc_ring_data {int * alc_rx_ring; } ;
struct alc_softc {TYPE_1__ alc_cdata; struct alc_ring_data alc_rdata; scalar_t__ alc_morework; } ;
struct alc_rxdesc {int * rx_desc; int * rx_m; } ;


 int ALC_LOCK_ASSERT (struct alc_softc*) ;
 int ALC_MBOX_RD0_PROD_IDX ;
 int ALC_RX_RING_CNT ;
 int ALC_RX_RING_SZ ;
 int BUS_DMASYNC_PREWRITE ;
 int CSR_WRITE_4 (struct alc_softc*,int ,int) ;
 int ENOBUFS ;
 scalar_t__ alc_newbuf (struct alc_softc*,struct alc_rxdesc*) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bzero (int *,int ) ;

__attribute__((used)) static int
alc_init_rx_ring(struct alc_softc *sc)
{
 struct alc_ring_data *rd;
 struct alc_rxdesc *rxd;
 int i;

 ALC_LOCK_ASSERT(sc);

 sc->alc_cdata.alc_rx_cons = ALC_RX_RING_CNT - 1;
 sc->alc_morework = 0;
 rd = &sc->alc_rdata;
 bzero(rd->alc_rx_ring, ALC_RX_RING_SZ);
 for (i = 0; i < ALC_RX_RING_CNT; i++) {
  rxd = &sc->alc_cdata.alc_rxdesc[i];
  rxd->rx_m = ((void*)0);
  rxd->rx_desc = &rd->alc_rx_ring[i];
  if (alc_newbuf(sc, rxd) != 0)
   return (ENOBUFS);
 }






 bus_dmamap_sync(sc->alc_cdata.alc_rx_ring_tag,
     sc->alc_cdata.alc_rx_ring_map, BUS_DMASYNC_PREWRITE);

 CSR_WRITE_4(sc, ALC_MBOX_RD0_PROD_IDX, sc->alc_cdata.alc_rx_cons);

 return (0);
}
