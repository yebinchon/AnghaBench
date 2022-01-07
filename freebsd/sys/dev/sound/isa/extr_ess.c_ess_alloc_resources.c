
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ess_info {int bufsize; void* drq2; void* drq1; void* irq; void* io_base; } ;
typedef int device_t ;


 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_DRQ ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int isa_dma_acquire (int ) ;
 int isa_dmainit (int ,int ) ;
 int rman_get_start (void*) ;

__attribute__((used)) static int
ess_alloc_resources(struct ess_info *sc, device_t dev)
{
 int rid;

 rid = 0;
 if (!sc->io_base)
      sc->io_base = bus_alloc_resource_any(dev, SYS_RES_IOPORT,
           &rid, RF_ACTIVE);
 rid = 0;
 if (!sc->irq)
      sc->irq = bus_alloc_resource_any(dev, SYS_RES_IRQ,
       &rid, RF_ACTIVE);
 rid = 0;
 if (!sc->drq1)
      sc->drq1 = bus_alloc_resource_any(dev, SYS_RES_DRQ,
        &rid, RF_ACTIVE);
 rid = 1;
 if (!sc->drq2)
         sc->drq2 = bus_alloc_resource_any(dev, SYS_RES_DRQ,
        &rid, RF_ACTIVE);

     if (sc->io_base && sc->drq1 && sc->irq) {
    isa_dma_acquire(rman_get_start(sc->drq1));
  isa_dmainit(rman_get_start(sc->drq1), sc->bufsize);

  if (sc->drq2) {
   isa_dma_acquire(rman_get_start(sc->drq2));
   isa_dmainit(rman_get_start(sc->drq2), sc->bufsize);
  }

  return 0;
 } else return ENXIO;
}
