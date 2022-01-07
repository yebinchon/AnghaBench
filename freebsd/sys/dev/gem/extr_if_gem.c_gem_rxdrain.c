
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gem_softc {int sc_rdmatag; struct gem_rxsoft* sc_rxsoft; } ;
struct gem_rxsoft {int * rxs_mbuf; int rxs_dmamap; } ;


 int BUS_DMASYNC_POSTREAD ;
 int GEM_NRXDESC ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int m_freem (int *) ;

__attribute__((used)) static void
gem_rxdrain(struct gem_softc *sc)
{
 struct gem_rxsoft *rxs;
 int i;

 for (i = 0; i < GEM_NRXDESC; i++) {
  rxs = &sc->sc_rxsoft[i];
  if (rxs->rxs_mbuf != ((void*)0)) {
   bus_dmamap_sync(sc->sc_rdmatag, rxs->rxs_dmamap,
       BUS_DMASYNC_POSTREAD);
   bus_dmamap_unload(sc->sc_rdmatag, rxs->rxs_dmamap);
   m_freem(rxs->rxs_mbuf);
   rxs->rxs_mbuf = ((void*)0);
  }
 }
}
