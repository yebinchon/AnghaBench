
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmx_softc {int mtx; int ch; int ih; void* irq; int irq_rid; void* ioport; int bsh; int bst; int ioport_rid; } ;
typedef int device_t ;


 int ENOMEM ;
 int INTR_TYPE_TTY ;
 int MTX_DEF ;
 int MTX_RECURSE ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 void* bus_alloc_resource_any (int ,int ,int *,int ) ;
 int bus_setup_intr (int ,void*,int ,int ,struct cmx_softc*,int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int cmx_intr ;
 int device_get_nameunit (int ) ;
 struct cmx_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mtx_init (int *,int ,char*,int) ;
 int rman_get_bushandle (void*) ;
 int rman_get_bustag (void*) ;

int
cmx_alloc_resources(device_t dev)
{
 struct cmx_softc *sc = device_get_softc(dev);




 sc->ioport = bus_alloc_resource_any(dev, SYS_RES_IOPORT,
   &sc->ioport_rid, RF_ACTIVE);
 if (!sc->ioport) {
  device_printf(dev, "failed to allocate io port\n");
  return ENOMEM;
 }
 sc->bst = rman_get_bustag(sc->ioport);
 sc->bsh = rman_get_bushandle(sc->ioport);
 mtx_init(&sc->mtx, device_get_nameunit(dev),
   "cmx softc lock",
   MTX_DEF | MTX_RECURSE);
 callout_init_mtx(&sc->ch, &sc->mtx, 0);

 return 0;
}
