
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ess_info {void* gp; void* mpu; void* vc; void* sb; void* io; void* irq; scalar_t__ lock; } ;
typedef int device_t ;


 int ENXIO ;
 int PCIR_BAR (int) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int device_get_nameunit (int ) ;
 scalar_t__ snd_mtxcreate (int ,char*) ;

__attribute__((used)) static int
ess_alloc_resources(struct ess_info *sc, device_t dev)
{
 int rid;

 rid = PCIR_BAR(0);
     sc->io = bus_alloc_resource_any(dev, SYS_RES_IOPORT, &rid, RF_ACTIVE);

 rid = PCIR_BAR(1);
     sc->sb = bus_alloc_resource_any(dev, SYS_RES_IOPORT, &rid, RF_ACTIVE);

 rid = PCIR_BAR(2);
     sc->vc = bus_alloc_resource_any(dev, SYS_RES_IOPORT, &rid, RF_ACTIVE);

 rid = PCIR_BAR(3);
     sc->mpu = bus_alloc_resource_any(dev, SYS_RES_IOPORT, &rid, RF_ACTIVE);

 rid = PCIR_BAR(4);
     sc->gp = bus_alloc_resource_any(dev, SYS_RES_IOPORT, &rid, RF_ACTIVE);

 rid = 0;
 sc->irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
  RF_ACTIVE | RF_SHAREABLE);







 return (sc->irq && sc->io && sc->sb && sc->vc && sc->mpu && sc->gp)? 0 : ENXIO;

}
