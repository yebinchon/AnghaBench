
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sge_rx_ring; } ;
struct sge_chain_data {int sge_rx_dmamap; int sge_rx_tag; scalar_t__ sge_rx_cons; } ;
struct sge_softc {TYPE_1__ sge_ldata; struct sge_chain_data sge_cdata; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int ENOBUFS ;
 int SGE_LOCK_ASSERT (struct sge_softc*) ;
 int SGE_RX_RING_CNT ;
 int SGE_RX_RING_SZ ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bzero (int ,int ) ;
 scalar_t__ sge_newbuf (struct sge_softc*,int) ;

__attribute__((used)) static int
sge_list_rx_init(struct sge_softc *sc)
{
 struct sge_chain_data *cd;
 int i;

 SGE_LOCK_ASSERT(sc);
 cd = &sc->sge_cdata;
 cd->sge_rx_cons = 0;
 bzero(sc->sge_ldata.sge_rx_ring, SGE_RX_RING_SZ);
 for (i = 0; i < SGE_RX_RING_CNT; i++) {
  if (sge_newbuf(sc, i) != 0)
   return (ENOBUFS);
 }
 bus_dmamap_sync(cd->sge_rx_tag, cd->sge_rx_dmamap,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
 return (0);
}
