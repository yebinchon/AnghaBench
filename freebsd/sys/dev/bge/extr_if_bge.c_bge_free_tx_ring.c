
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bge_tx_bd {int dummy; } ;
struct TYPE_4__ {int * bge_tx_ring; } ;
struct TYPE_3__ {int ** bge_tx_chain; int * bge_tx_dmamap; int bge_tx_mtag; } ;
struct bge_softc {TYPE_2__ bge_ldata; TYPE_1__ bge_cdata; } ;


 int BGE_TX_RING_CNT ;
 int BUS_DMASYNC_POSTWRITE ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bzero (char*,int) ;
 int m_freem (int *) ;

__attribute__((used)) static void
bge_free_tx_ring(struct bge_softc *sc)
{
 int i;

 if (sc->bge_ldata.bge_tx_ring == ((void*)0))
  return;

 for (i = 0; i < BGE_TX_RING_CNT; i++) {
  if (sc->bge_cdata.bge_tx_chain[i] != ((void*)0)) {
   bus_dmamap_sync(sc->bge_cdata.bge_tx_mtag,
       sc->bge_cdata.bge_tx_dmamap[i],
       BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(sc->bge_cdata.bge_tx_mtag,
       sc->bge_cdata.bge_tx_dmamap[i]);
   m_freem(sc->bge_cdata.bge_tx_chain[i]);
   sc->bge_cdata.bge_tx_chain[i] = ((void*)0);
  }
  bzero((char *)&sc->bge_ldata.bge_tx_ring[i],
      sizeof(struct bge_tx_bd));
 }
}
