
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saf1761_otg_softc {int sc_bus; scalar_t__ sc_irq_res; } ;
typedef int device_t ;


 int device_delete_children (int ) ;
 struct saf1761_otg_softc* device_get_softc (int ) ;
 int saf1761_otg_uninit (struct saf1761_otg_softc*) ;
 int usb_bus_mem_free_all (int *,int *) ;

__attribute__((used)) static int
saf1761_otg_fdt_detach(device_t dev)
{
 struct saf1761_otg_softc *sc = device_get_softc(dev);


 device_delete_children(dev);

 if (sc->sc_irq_res) {



  saf1761_otg_uninit(sc);
 }
 usb_bus_mem_free_all(&sc->sc_bus, ((void*)0));

 return (0);
}
