
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int device_t ;


 int bus_generic_teardown_intr (int ,int ,struct resource*,void*) ;
 int device_get_name (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int
mips_platform_pcib_teardown_intr(device_t dev, device_t child,
    struct resource *irq, void *cookie)
{
 if (strcmp(device_get_name(child), "pci") == 0) {

  device_printf(dev, "teardown intr\n");
 }
 return (bus_generic_teardown_intr(dev, child, irq, cookie));
}
