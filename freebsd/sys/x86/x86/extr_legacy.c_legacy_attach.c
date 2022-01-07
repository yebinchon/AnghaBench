
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * device_t ;


 int * BUS_ADD_CHILD (int *,int ,char*,int ) ;
 int bus_generic_attach (int *) ;
 int bus_generic_probe (int *) ;
 int devclass_find (char*) ;
 int devclass_get_device (int ,int ) ;
 int device_probe_and_attach (int *) ;
 int legacy_pci_cfgregopen (int *) ;
 int panic (char*) ;

__attribute__((used)) static int
legacy_attach(device_t dev)
{
 device_t child;

 legacy_pci_cfgregopen(dev);






 bus_generic_probe(dev);
 bus_generic_attach(dev);




 if (!devclass_get_device(devclass_find("isa"), 0)) {
  child = BUS_ADD_CHILD(dev, 0, "isa", 0);
  if (child == ((void*)0))
   panic("legacy_attach isa");
  device_probe_and_attach(child);
 }

 return 0;
}
