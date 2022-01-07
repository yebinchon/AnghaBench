
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int pci_msi_count (int ) ;

__attribute__((used)) static int
vga_pci_msi_count(device_t dev, device_t child)
{

 return (pci_msi_count(dev));
}
