
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hifn_softc {int sc_mtx; int sc_bar0res; int sc_bar1res; int sc_dmat; int sc_dmamap; int sc_dma; int sc_irq; int sc_intrhand; int sc_cid; scalar_t__ sc_rndtest; int sc_rngto; int sc_tickto; } ;
typedef int device_t ;


 int HIFN_1_DMA_CNFG ;
 int HIFN_1_DMA_IER ;
 int HIFN_BAR0 ;
 int HIFN_BAR1 ;
 int HIFN_DMACNFG_DMARESET ;
 int HIFN_DMACNFG_MODE ;
 int HIFN_DMACNFG_MSTRESET ;
 int KASSERT (int ,char*) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int WRITE_REG_1 (struct hifn_softc*,int ,int) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int ,int ) ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int callout_stop (int *) ;
 int crypto_unregister_all (int ) ;
 struct hifn_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int rndtest_detach (scalar_t__) ;

__attribute__((used)) static int
hifn_detach(device_t dev)
{
 struct hifn_softc *sc = device_get_softc(dev);

 KASSERT(sc != ((void*)0), ("hifn_detach: null software carrier!"));


 WRITE_REG_1(sc, HIFN_1_DMA_IER, 0);


 callout_stop(&sc->sc_tickto);
 callout_stop(&sc->sc_rngto);






 WRITE_REG_1(sc, HIFN_1_DMA_CNFG, HIFN_DMACNFG_MSTRESET |
     HIFN_DMACNFG_DMARESET | HIFN_DMACNFG_MODE);

 crypto_unregister_all(sc->sc_cid);

 bus_generic_detach(dev);

 bus_teardown_intr(dev, sc->sc_irq, sc->sc_intrhand);

 bus_release_resource(dev, SYS_RES_IRQ, 0, sc->sc_irq);

 bus_dmamap_unload(sc->sc_dmat, sc->sc_dmamap);
 bus_dmamem_free(sc->sc_dmat, sc->sc_dma, sc->sc_dmamap);
 bus_dma_tag_destroy(sc->sc_dmat);

 bus_release_resource(dev, SYS_RES_MEMORY, HIFN_BAR1, sc->sc_bar1res);
 bus_release_resource(dev, SYS_RES_MEMORY, HIFN_BAR0, sc->sc_bar0res);

 mtx_destroy(&sc->sc_mtx);

 return (0);
}
