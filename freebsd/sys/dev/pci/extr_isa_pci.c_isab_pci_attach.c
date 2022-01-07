
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int bus_generic_probe (int ) ;
 int isab_attach (int ) ;

__attribute__((used)) static int
isab_pci_attach(device_t dev)
{

 bus_generic_probe(dev);
 return (isab_attach(dev));
}
