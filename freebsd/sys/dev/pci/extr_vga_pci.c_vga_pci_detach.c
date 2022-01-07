
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int bus_generic_detach (int ) ;
 int device_delete_children (int ) ;

__attribute__((used)) static int
vga_pci_detach(device_t dev)
{
 int error;

 error = bus_generic_detach(dev);
 if (error == 0)
  error = device_delete_children(dev);
 return (error);
}
