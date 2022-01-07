
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * bge_rx_std_ring; } ;
struct TYPE_3__ {int ** bge_rx_std_chain; int * bge_rx_std_dmamap; int bge_rx_mtag; } ;
struct bge_softc {TYPE_2__ bge_ldata; TYPE_1__ bge_cdata; } ;
struct bge_rx_bd {int dummy; } ;


 int BGE_STD_RX_RING_CNT ;
 int BUS_DMASYNC_POSTREAD ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bzero (char*,int) ;
 int m_freem (int *) ;

__attribute__((used)) static void
bge_free_rx_ring_std(struct bge_softc *sc)
{
 int i;

 for (i = 0; i < BGE_STD_RX_RING_CNT; i++) {
  if (sc->bge_cdata.bge_rx_std_chain[i] != ((void*)0)) {
   bus_dmamap_sync(sc->bge_cdata.bge_rx_mtag,
       sc->bge_cdata.bge_rx_std_dmamap[i],
       BUS_DMASYNC_POSTREAD);
   bus_dmamap_unload(sc->bge_cdata.bge_rx_mtag,
       sc->bge_cdata.bge_rx_std_dmamap[i]);
   m_freem(sc->bge_cdata.bge_rx_std_chain[i]);
   sc->bge_cdata.bge_rx_std_chain[i] = ((void*)0);
  }
  bzero((char *)&sc->bge_ldata.bge_rx_std_ring[i],
      sizeof(struct bge_rx_bd));
 }
}
