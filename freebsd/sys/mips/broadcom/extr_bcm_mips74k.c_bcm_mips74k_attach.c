
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct bcm_mips74k_softc {int * mem; scalar_t__ mem_rid; int dev; } ;
typedef int device_t ;


 size_t BCM_MIPS74K_GET_TIMER_IRQ () ;
 int BCM_MIPS74K_INTR_SEL (size_t) ;
 size_t BCM_MIPS74K_NUM_INTR ;
 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int bcm_mips74k_pic_intr ;
 int bcm_mips_attach (int ,size_t,size_t,int ) ;
 int * bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 int bus_release_resource (int ,int ,scalar_t__,int *) ;
 int bus_write_4 (int *,int ,int ) ;
 struct bcm_mips74k_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
bcm_mips74k_attach(device_t dev)
{
 struct bcm_mips74k_softc *sc;
 u_int timer_irq;
 int error;

 sc = device_get_softc(dev);
 sc->dev = dev;


 sc->mem_rid = 0;
 sc->mem = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &sc->mem_rid,
     RF_ACTIVE);
 if (sc->mem == ((void*)0)) {
  device_printf(dev, "failed to allocate cpu register block\n");
  return (ENXIO);
 }


 timer_irq = BCM_MIPS74K_GET_TIMER_IRQ();
 for (size_t i = 0; i < BCM_MIPS74K_NUM_INTR; i++) {


  if (i == timer_irq)
   continue;

  bus_write_4(sc->mem, BCM_MIPS74K_INTR_SEL(i), 0);
 }


 error = bcm_mips_attach(dev, BCM_MIPS74K_NUM_INTR, timer_irq,
     bcm_mips74k_pic_intr);
 if (error) {
  bus_release_resource(dev, SYS_RES_MEMORY, sc->mem_rid, sc->mem);
  return (error);
 }

 return (0);
}
