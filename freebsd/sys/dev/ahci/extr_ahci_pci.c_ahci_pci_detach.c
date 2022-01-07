
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ahci_detach (int ) ;
 int pci_release_msi (int ) ;

__attribute__((used)) static int
ahci_pci_detach(device_t dev)
{

 ahci_detach(dev);
 pci_release_msi(dev);
 return (0);
}
