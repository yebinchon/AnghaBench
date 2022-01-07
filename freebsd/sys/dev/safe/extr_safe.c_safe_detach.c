
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct safe_softc {int sc_sr; int sc_dstdmat; int sc_srcdmat; int sc_irq; int sc_ih; int sc_ringalloc; int sc_ringmtx; int sc_spalloc; int sc_dpalloc; scalar_t__ sc_rndtest; int sc_cid; int sc_rngto; } ;
typedef int device_t ;


 int BS_BAR ;
 int SAFE_HI_MASK ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int WRITE_REG (struct safe_softc*,int ,int ) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int callout_stop (int *) ;
 int crypto_unregister_all (int ) ;
 struct safe_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int rndtest_detach (scalar_t__) ;
 int safe_cleanchip (struct safe_softc*) ;
 int safe_dma_free (struct safe_softc*,int *) ;

__attribute__((used)) static int
safe_detach(device_t dev)
{
 struct safe_softc *sc = device_get_softc(dev);



 WRITE_REG(sc, SAFE_HI_MASK, 0);

 callout_stop(&sc->sc_rngto);

 crypto_unregister_all(sc->sc_cid);






 safe_cleanchip(sc);
 safe_dma_free(sc, &sc->sc_dpalloc);
 safe_dma_free(sc, &sc->sc_spalloc);
 mtx_destroy(&sc->sc_ringmtx);
 safe_dma_free(sc, &sc->sc_ringalloc);

 bus_generic_detach(dev);
 bus_teardown_intr(dev, sc->sc_irq, sc->sc_ih);
 bus_release_resource(dev, SYS_RES_IRQ, 0, sc->sc_irq);

 bus_dma_tag_destroy(sc->sc_srcdmat);
 bus_dma_tag_destroy(sc->sc_dstdmat);
 bus_release_resource(dev, SYS_RES_MEMORY, BS_BAR, sc->sc_sr);

 return (0);
}
