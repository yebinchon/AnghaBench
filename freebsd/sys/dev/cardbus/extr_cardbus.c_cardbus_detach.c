
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cardbus_softc {int sc_bus; } ;
typedef int device_t ;


 int PCI_RES_BUS ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int cardbus_detach_card (int ) ;
 struct cardbus_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
cardbus_detach(device_t cbdev)
{




 cardbus_detach_card(cbdev);





 return (0);
}
