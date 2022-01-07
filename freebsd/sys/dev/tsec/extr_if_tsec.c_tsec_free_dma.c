
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tsec_softc {int tsec_rx_vaddr; int tsec_rx_dmap; int tsec_rx_dtag; int tsec_tx_vaddr; int tsec_tx_dmap; int tsec_tx_dtag; int tsec_rx_mtag; TYPE_2__* rx_data; int tsec_tx_mtag; TYPE_1__* tx_bufmap; } ;
struct TYPE_4__ {int * map; scalar_t__ mbuf; } ;
struct TYPE_3__ {int * map; scalar_t__ map_initialized; } ;


 int BUS_DMASYNC_POSTREAD ;
 int TSEC_RX_NUM_DESC ;
 int TSEC_TX_NUM_DESC ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_destroy (int ,int *) ;
 int bus_dmamap_sync (int ,int *,int ) ;
 int bus_dmamap_unload (int ,int *) ;
 int m_freem (scalar_t__) ;
 int tsec_free_dma_desc (int ,int ,int ) ;

__attribute__((used)) static void
tsec_free_dma(struct tsec_softc *sc)
{
 int i;


 for (i = 0; i < TSEC_TX_NUM_DESC; i++)
  if (sc->tx_bufmap[i].map_initialized)
   bus_dmamap_destroy(sc->tsec_tx_mtag,
       sc->tx_bufmap[i].map);

 bus_dma_tag_destroy(sc->tsec_tx_mtag);


 for (i = 0; i < TSEC_RX_NUM_DESC; i++) {
  if (sc->rx_data[i].mbuf) {

   bus_dmamap_sync(sc->tsec_rx_mtag, sc->rx_data[i].map,
       BUS_DMASYNC_POSTREAD);
   bus_dmamap_unload(sc->tsec_rx_mtag,
       sc->rx_data[i].map);


   m_freem(sc->rx_data[i].mbuf);
  }

  if (sc->rx_data[i].map != ((void*)0))
   bus_dmamap_destroy(sc->tsec_rx_mtag,
       sc->rx_data[i].map);
 }

 bus_dma_tag_destroy(sc->tsec_rx_mtag);


 tsec_free_dma_desc(sc->tsec_tx_dtag, sc->tsec_tx_dmap,
     sc->tsec_tx_vaddr);
 tsec_free_dma_desc(sc->tsec_rx_dtag, sc->tsec_rx_dmap,
     sc->tsec_rx_vaddr);
}
