
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int PCIY_AGP ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 int device_add_child (int ,char*,int) ;
 scalar_t__ pci_find_cap (int ,int ,int *) ;

__attribute__((used)) static int
pci_hostb_attach(device_t dev)
{

 bus_generic_probe(dev);





 if (pci_find_cap(dev, PCIY_AGP, ((void*)0)) == 0)
  device_add_child(dev, "agp", -1);
 bus_generic_attach(dev);
 return (0);
}
