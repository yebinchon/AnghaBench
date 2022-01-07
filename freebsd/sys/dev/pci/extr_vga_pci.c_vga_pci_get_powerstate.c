
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int device_get_nameunit (int ) ;
 int device_printf (int ,char*,int ) ;
 int pci_get_powerstate (int ) ;

__attribute__((used)) static int
vga_pci_get_powerstate(device_t dev, device_t child)
{

 device_printf(dev, "child %s requested pci_get_powerstate\n",
     device_get_nameunit(child));
 return (pci_get_powerstate(dev));
}
