
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_usbmisc_softc {int * mmio; } ;
typedef int device_t ;


 int ENXIO ;
 int OF_device_register_xref (int ,int ) ;
 int OF_xref_from_node (int ) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 struct imx_usbmisc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
imx_usbmisc_attach(device_t dev)
{
 struct imx_usbmisc_softc *sc;
 int err, rid;

 sc = device_get_softc(dev);
 err = 0;


 rid = 0;
 sc->mmio = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->mmio == ((void*)0)) {
  device_printf(dev, "Cannot allocate memory resources\n");
  return (ENXIO);
 }

 OF_device_register_xref(OF_xref_from_node(ofw_bus_get_node(dev)), dev);

 return (0);
}
