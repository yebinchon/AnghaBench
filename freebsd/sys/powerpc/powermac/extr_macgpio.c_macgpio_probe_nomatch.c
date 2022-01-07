
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macgpio_devinfo {scalar_t__ gpio_num; int mdi_resources; } ;
typedef int device_t ;


 int SYS_RES_IRQ ;
 scalar_t__ bootverbose ;
 struct macgpio_devinfo* device_get_ivars (int ) ;
 int device_printf (int ,char*,char const*,int ) ;
 int ofw_bus_get_name (int ) ;
 char* ofw_bus_get_type (int ) ;
 int printf (char*,...) ;
 int resource_list_print_type (int *,char*,int ,char*) ;

__attribute__((used)) static void
macgpio_probe_nomatch(device_t dev, device_t child)
{
        struct macgpio_devinfo *dinfo;
 const char *type;

 if (bootverbose) {
  dinfo = device_get_ivars(child);

  if ((type = ofw_bus_get_type(child)) == ((void*)0))
   type = "(unknown)";
  device_printf(dev, "<%s, %s>", type, ofw_bus_get_name(child));
  if (dinfo->gpio_num >= 0)
   printf(" gpio %d",dinfo->gpio_num);
  resource_list_print_type(&dinfo->mdi_resources, "irq",
      SYS_RES_IRQ, "%jd");
  printf(" (no driver attached)\n");
 }
}
