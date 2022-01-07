
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cardbus_softc {int * sc_bus; int sc_dev; } ;
typedef int device_t ;


 int ENXIO ;
 int PCI_RES_BUS ;
 int * bus_alloc_resource (int ,int ,int*,int ,int ,int,int ) ;
 struct cardbus_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int pcib_get_bus (int ) ;

__attribute__((used)) static int
cardbus_attach(device_t cbdev)
{
 struct cardbus_softc *sc;




 sc = device_get_softc(cbdev);
 sc->sc_dev = cbdev;
 device_printf(cbdev, "Your bus numbers may be AFU\n");

 return (0);
}
