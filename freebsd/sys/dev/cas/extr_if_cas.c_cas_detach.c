
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ifnet {int dummy; } ;
struct cas_softc {int sc_pdmatag; int sc_rdmatag; int sc_tdmatag; int sc_cdmatag; int * sc_cddmamap; int * sc_control_data; TYPE_2__* sc_txsoft; TYPE_1__* sc_rxdsoft; int sc_miibus; int sc_dev; int sc_tq; int sc_tx_task; int sc_intr_task; int sc_rx_ch; int sc_tick_ch; struct ifnet* sc_ifp; } ;
struct TYPE_4__ {int * txs_dmamap; } ;
struct TYPE_3__ {scalar_t__ rxds_paddr; int * rxds_dmamap; int * rxds_buf; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int CAS_CDSYNC (struct cas_softc*,int) ;
 int CAS_LOCK (struct cas_softc*) ;
 int CAS_NRXDESC ;
 int CAS_TXQUEUELEN ;
 int CAS_UNLOCK (struct cas_softc*) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_destroy (int ,int *) ;
 int bus_dmamap_sync (int ,int *,int) ;
 int bus_dmamap_unload (int ,int *) ;
 int bus_dmamem_free (int ,int *,int *) ;
 int callout_drain (int *) ;
 int cas_stop (struct ifnet*) ;
 int device_delete_child (int ,int ) ;
 int ether_ifdetach (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_free (int ) ;

__attribute__((used)) static void
cas_detach(struct cas_softc *sc)
{
 struct ifnet *ifp = sc->sc_ifp;
 int i;

 ether_ifdetach(ifp);
 CAS_LOCK(sc);
 cas_stop(ifp);
 CAS_UNLOCK(sc);
 callout_drain(&sc->sc_tick_ch);
 callout_drain(&sc->sc_rx_ch);
 taskqueue_drain(sc->sc_tq, &sc->sc_intr_task);
 taskqueue_drain(sc->sc_tq, &sc->sc_tx_task);
 if_free(ifp);
 taskqueue_free(sc->sc_tq);
 device_delete_child(sc->sc_dev, sc->sc_miibus);

 for (i = 0; i < CAS_NRXDESC; i++)
  if (sc->sc_rxdsoft[i].rxds_dmamap != ((void*)0))
   bus_dmamap_sync(sc->sc_rdmatag,
       sc->sc_rxdsoft[i].rxds_dmamap,
       BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
 for (i = 0; i < CAS_NRXDESC; i++)
  if (sc->sc_rxdsoft[i].rxds_paddr != 0)
   bus_dmamap_unload(sc->sc_rdmatag,
       sc->sc_rxdsoft[i].rxds_dmamap);
 for (i = 0; i < CAS_NRXDESC; i++)
  if (sc->sc_rxdsoft[i].rxds_buf != ((void*)0))
   bus_dmamem_free(sc->sc_rdmatag,
       sc->sc_rxdsoft[i].rxds_buf,
       sc->sc_rxdsoft[i].rxds_dmamap);
 for (i = 0; i < CAS_TXQUEUELEN; i++)
  if (sc->sc_txsoft[i].txs_dmamap != ((void*)0))
   bus_dmamap_destroy(sc->sc_tdmatag,
       sc->sc_txsoft[i].txs_dmamap);
 CAS_CDSYNC(sc, BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
 bus_dmamap_unload(sc->sc_cdmatag, sc->sc_cddmamap);
 bus_dmamem_free(sc->sc_cdmatag, sc->sc_control_data,
     sc->sc_cddmamap);
 bus_dma_tag_destroy(sc->sc_cdmatag);
 bus_dma_tag_destroy(sc->sc_tdmatag);
 bus_dma_tag_destroy(sc->sc_rdmatag);
 bus_dma_tag_destroy(sc->sc_pdmatag);
}
