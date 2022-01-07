
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int pci_disable_busmaster (int ) ;

__attribute__((used)) static int
vga_pci_disable_busmaster(device_t dev, device_t child)
{

 return (pci_disable_busmaster(dev));
}
