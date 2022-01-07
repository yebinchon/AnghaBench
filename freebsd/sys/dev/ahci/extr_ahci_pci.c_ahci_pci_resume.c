
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ahci_ctlr_setup (int ) ;
 int ahci_pci_ctlr_reset (int ) ;
 int bus_generic_resume (int ) ;

__attribute__((used)) static int
ahci_pci_resume(device_t dev)
{
 int res;

 if ((res = ahci_pci_ctlr_reset(dev)) != 0)
  return (res);
 ahci_ctlr_setup(dev);
 return (bus_generic_resume(dev));
}
