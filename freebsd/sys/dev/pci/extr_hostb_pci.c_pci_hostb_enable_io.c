
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int device_get_nameunit (int ) ;
 int device_printf (int ,char*,int ) ;
 int pci_enable_io (int ,int) ;

__attribute__((used)) static int
pci_hostb_enable_io(device_t dev, device_t child, int space)
{

 device_printf(dev, "child %s requested pci_enable_io\n",
     device_get_nameunit(child));
 return (pci_enable_io(dev, space));
}
