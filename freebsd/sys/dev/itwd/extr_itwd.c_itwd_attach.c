
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct itwd_softc {int wd_ev; int * intr_res; scalar_t__ intr_rid; int intr_handle; } ;
typedef int device_t ;


 int ENXIO ;
 int EVENTHANDLER_REGISTER (int ,int ,int ,int ) ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int TUNABLE_INT_FETCH (char*,int*) ;
 int * bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 int bus_release_resource (int ,int ,scalar_t__,int *) ;
 int bus_set_resource (int ,int ,scalar_t__,int,int) ;
 int bus_setup_intr (int ,int *,int,int *,int ,int ,int *) ;
 struct itwd_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int itwd_intr ;
 int superio_write (int ,int,int) ;
 int watchdog_list ;
 int wd_func ;

__attribute__((used)) static int
itwd_attach(device_t dev)
{
 struct itwd_softc *sc = device_get_softc(dev);
 int irq = 0;
 int nmi = 0;
 int error;


 superio_write(dev, 0x74, 0);
 superio_write(dev, 0x73, 0);

 TUNABLE_INT_FETCH("dev.itwd.irq", &irq);
 TUNABLE_INT_FETCH("dev.itwd.nmi", &nmi);
 if (irq < 0 || irq > 15) {
  device_printf(dev, "Ignoring invalid IRQ value %d\n", irq);
  irq = 0;
 }
 if (irq == 0 && nmi) {
  device_printf(dev, "Ignoring NMI mode if IRQ is not set\n");
  nmi = 0;
 }
 if (irq != 0 && !nmi) {
  sc->intr_rid = 0;
  bus_set_resource(dev, SYS_RES_IRQ, sc->intr_rid, irq, 1);

  sc->intr_res = bus_alloc_resource_any(dev, SYS_RES_IRQ,
      &sc->intr_rid, RF_ACTIVE);
  if (sc->intr_res == ((void*)0)) {
   device_printf(dev, "unable to map interrupt\n");
   return (ENXIO);
  }
  error = bus_setup_intr(dev, sc->intr_res,
      INTR_TYPE_MISC | INTR_MPSAFE, ((void*)0), itwd_intr, dev,
      &sc->intr_handle);
  if (error != 0) {
   bus_release_resource(dev, SYS_RES_IRQ,
       sc->intr_rid, sc->intr_res);
   device_printf(dev, "Unable to setup irq: error %d\n",
       error);
   return (ENXIO);
  }
 }
 if (irq != 0) {
  device_printf(dev, "Using IRQ%d to signal timeout\n", irq);
 } else {

  irq = 0x40;
  device_printf(dev, "Configured for system reset on timeout\n");
 }

 superio_write(dev, 0x71, 0);
 superio_write(dev, 0x72, 0x80 | (uint8_t)irq);

 sc->wd_ev = EVENTHANDLER_REGISTER(watchdog_list, wd_func, dev, 0);
 return (0);
}
