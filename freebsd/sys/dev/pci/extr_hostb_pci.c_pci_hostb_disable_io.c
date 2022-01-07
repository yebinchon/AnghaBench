
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int device_get_nameunit (int ) ;
 int device_printf (int ,char*,int ) ;
 int pci_disable_io (int ,int) ;

__attribute__((used)) static int
pci_hostb_disable_io(device_t dev, device_t child, int space)
{

 device_printf(dev, "child %s requested pci_disable_io\n",
     device_get_nameunit(child));
 return (pci_disable_io(dev, space));
}
