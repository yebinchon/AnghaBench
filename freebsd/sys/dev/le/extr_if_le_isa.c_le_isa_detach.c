
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lance_softc {int sc_mem; } ;
struct TYPE_2__ {struct lance_softc lsc; } ;
struct le_isa_softc {int sc_rres; int sc_dres; int sc_ires; int sc_pdmat; int sc_dmat; int sc_dmam; TYPE_1__ sc_am7990; int sc_ih; } ;
typedef int device_t ;


 int LE_LOCK_DESTROY (struct lance_softc*) ;
 int SYS_RES_DRQ ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int am7990_detach (TYPE_1__*) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int ,int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 struct le_isa_softc* device_get_softc (int ) ;
 int rman_get_rid (int ) ;

__attribute__((used)) static int
le_isa_detach(device_t dev)
{
 struct le_isa_softc *lesc;
 struct lance_softc *sc;

 lesc = device_get_softc(dev);
 sc = &lesc->sc_am7990.lsc;

 bus_teardown_intr(dev, lesc->sc_ires, lesc->sc_ih);
 am7990_detach(&lesc->sc_am7990);
 bus_dmamap_unload(lesc->sc_dmat, lesc->sc_dmam);
 bus_dmamem_free(lesc->sc_dmat, sc->sc_mem, lesc->sc_dmam);
 bus_dma_tag_destroy(lesc->sc_dmat);
 bus_dma_tag_destroy(lesc->sc_pdmat);
 bus_release_resource(dev, SYS_RES_IRQ,
     rman_get_rid(lesc->sc_ires), lesc->sc_ires);
 bus_release_resource(dev, SYS_RES_DRQ,
     rman_get_rid(lesc->sc_dres), lesc->sc_dres);
 bus_release_resource(dev, SYS_RES_IOPORT,
     rman_get_rid(lesc->sc_rres), lesc->sc_rres);
 LE_LOCK_DESTROY(sc);

 return (0);
}
