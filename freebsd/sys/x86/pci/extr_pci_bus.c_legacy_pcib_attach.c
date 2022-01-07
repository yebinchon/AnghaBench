
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * device_t ;


 int * BUS_ADD_CHILD (int ,int ,char*,int ) ;
 int bus_generic_attach (int *) ;
 int device_add_child (int *,char*,int) ;
 int device_get_parent (int *) ;
 int device_probe_and_attach (int *) ;
 scalar_t__ pci_pir_probe (int,int ) ;
 int pcib_get_bus (int *) ;

__attribute__((used)) static int
legacy_pcib_attach(device_t dev)
{



 int bus;

 bus = pcib_get_bus(dev);
 device_add_child(dev, "pci", -1);
 return bus_generic_attach(dev);
}
