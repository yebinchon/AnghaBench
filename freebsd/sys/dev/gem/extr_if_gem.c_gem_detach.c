
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ifnet {int dummy; } ;
struct gem_softc {int sc_pdmatag; int sc_rdmatag; int sc_tdmatag; int sc_cdmatag; int sc_cddmamap; int sc_control_data; TYPE_2__* sc_txsoft; TYPE_1__* sc_rxsoft; int sc_miibus; int sc_dev; int sc_rx_ch; int sc_tick_ch; struct ifnet* sc_ifp; } ;
struct TYPE_4__ {int * txs_dmamap; } ;
struct TYPE_3__ {int * rxs_dmamap; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int GEM_CDSYNC (struct gem_softc*,int) ;
 int GEM_LOCK (struct gem_softc*) ;
 int GEM_NRXDESC ;
 int GEM_TXQUEUELEN ;
 int GEM_UNLOCK (struct gem_softc*) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_destroy (int ,int *) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int ,int ) ;
 int callout_drain (int *) ;
 int device_delete_child (int ,int ) ;
 int ether_ifdetach (struct ifnet*) ;
 int gem_stop (struct ifnet*,int) ;
 int if_free (struct ifnet*) ;

void
gem_detach(struct gem_softc *sc)
{
 struct ifnet *ifp = sc->sc_ifp;
 int i;

 ether_ifdetach(ifp);
 GEM_LOCK(sc);
 gem_stop(ifp, 1);
 GEM_UNLOCK(sc);
 callout_drain(&sc->sc_tick_ch);



 if_free(ifp);
 device_delete_child(sc->sc_dev, sc->sc_miibus);

 for (i = 0; i < GEM_NRXDESC; i++)
  if (sc->sc_rxsoft[i].rxs_dmamap != ((void*)0))
   bus_dmamap_destroy(sc->sc_rdmatag,
       sc->sc_rxsoft[i].rxs_dmamap);
 for (i = 0; i < GEM_TXQUEUELEN; i++)
  if (sc->sc_txsoft[i].txs_dmamap != ((void*)0))
   bus_dmamap_destroy(sc->sc_tdmatag,
       sc->sc_txsoft[i].txs_dmamap);
 GEM_CDSYNC(sc, BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
 bus_dmamap_unload(sc->sc_cdmatag, sc->sc_cddmamap);
 bus_dmamem_free(sc->sc_cdmatag, sc->sc_control_data,
     sc->sc_cddmamap);
 bus_dma_tag_destroy(sc->sc_cdmatag);
 bus_dma_tag_destroy(sc->sc_tdmatag);
 bus_dma_tag_destroy(sc->sc_rdmatag);
 bus_dma_tag_destroy(sc->sc_pdmatag);
}
