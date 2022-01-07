
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct altera_jtag_uart_softc {int * ajus_mem_res; scalar_t__ ajus_mem_rid; int * ajus_irq_res; scalar_t__ ajus_irq_rid; int ajus_unit; int ajus_dev; } ;
typedef int device_t ;


 int ENXIO ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int altera_jtag_uart_attach (struct altera_jtag_uart_softc*) ;
 void* bus_alloc_resource_any (int ,int ,scalar_t__*,int) ;
 int bus_release_resource (int ,int ,scalar_t__,int *) ;
 struct altera_jtag_uart_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
altera_jtag_uart_nexus_attach(device_t dev)
{
 struct altera_jtag_uart_softc *sc;
 int error;

 error = 0;
 sc = device_get_softc(dev);
 sc->ajus_dev = dev;
 sc->ajus_unit = device_get_unit(dev);
 sc->ajus_mem_rid = 0;
 sc->ajus_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &sc->ajus_mem_rid, RF_ACTIVE);
 if (sc->ajus_mem_res == ((void*)0)) {
  device_printf(dev, "couldn't map memory\n");
  error = ENXIO;
  goto out;
 }





 sc->ajus_irq_rid = 0;
 sc->ajus_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ,
     &sc->ajus_irq_rid, RF_ACTIVE | RF_SHAREABLE);
 if (sc->ajus_irq_res == ((void*)0))
  device_printf(dev,
      "IRQ unavailable; selecting polled operation\n");
 error = altera_jtag_uart_attach(sc);
out:
 if (error) {
  if (sc->ajus_irq_res != ((void*)0))
   bus_release_resource(dev, SYS_RES_IRQ,
       sc->ajus_irq_rid, sc->ajus_irq_res);
  if (sc->ajus_mem_res != ((void*)0))
   bus_release_resource(dev, SYS_RES_MEMORY,
       sc->ajus_mem_rid, sc->ajus_mem_res);
 }
 return (error);
}
