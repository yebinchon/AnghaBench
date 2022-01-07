
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 int device_add_child (int ,char*,int) ;
 int device_printf (int ,char*) ;
 scalar_t__ vga_pci_is_boot_display (int ) ;

__attribute__((used)) static int
vga_pci_attach(device_t dev)
{

 bus_generic_probe(dev);


 device_add_child(dev, "drm", -1);
 device_add_child(dev, "drmn", -1);
 bus_generic_attach(dev);

 if (vga_pci_is_boot_display(dev))
  device_printf(dev, "Boot video device\n");

 return (0);
}
