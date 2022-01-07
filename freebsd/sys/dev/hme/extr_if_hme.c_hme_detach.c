
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ifnet {int dummy; } ;
struct TYPE_6__ {int rb_membase; TYPE_2__* rb_rxdesc; int rb_spare_dmamap; TYPE_1__* rb_txdesc; } ;
struct hme_softc {int sc_pdmatag; int sc_cdmatag; int sc_rdmatag; int sc_tdmatag; int sc_cdmamap; TYPE_3__ sc_rb; int sc_miibus; int sc_dev; int sc_tick_ch; struct ifnet* sc_ifp; } ;
struct TYPE_5__ {int hrx_dmamap; } ;
struct TYPE_4__ {int htx_dmamap; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int HME_LOCK (struct hme_softc*) ;
 int HME_NRXDESC ;
 int HME_NTXQ ;
 int HME_UNLOCK (struct hme_softc*) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_destroy (int ,int ) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int ,int ) ;
 int callout_drain (int *) ;
 int device_delete_child (int ,int ) ;
 int ether_ifdetach (struct ifnet*) ;
 int hme_stop (struct hme_softc*) ;
 int if_free (struct ifnet*) ;

void
hme_detach(struct hme_softc *sc)
{
 struct ifnet *ifp = sc->sc_ifp;
 int i;

 HME_LOCK(sc);
 hme_stop(sc);
 HME_UNLOCK(sc);
 callout_drain(&sc->sc_tick_ch);
 ether_ifdetach(ifp);
 if_free(ifp);
 device_delete_child(sc->sc_dev, sc->sc_miibus);

 for (i = 0; i < HME_NTXQ; i++) {
  bus_dmamap_destroy(sc->sc_tdmatag,
      sc->sc_rb.rb_txdesc[i].htx_dmamap);
 }
 bus_dmamap_destroy(sc->sc_rdmatag, sc->sc_rb.rb_spare_dmamap);
 for (i = 0; i < HME_NRXDESC; i++) {
  bus_dmamap_destroy(sc->sc_rdmatag,
      sc->sc_rb.rb_rxdesc[i].hrx_dmamap);
 }
 bus_dmamap_sync(sc->sc_cdmatag, sc->sc_cdmamap,
     BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
 bus_dmamap_unload(sc->sc_cdmatag, sc->sc_cdmamap);
 bus_dmamem_free(sc->sc_cdmatag, sc->sc_rb.rb_membase, sc->sc_cdmamap);
 bus_dma_tag_destroy(sc->sc_tdmatag);
 bus_dma_tag_destroy(sc->sc_rdmatag);
 bus_dma_tag_destroy(sc->sc_cdmatag);
 bus_dma_tag_destroy(sc->sc_pdmatag);
}
