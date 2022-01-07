
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
struct macio_devinfo {struct resource_list mdi_resources; } ;
typedef int device_t ;


 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 scalar_t__ bootverbose ;
 struct macio_devinfo* device_get_ivars (int ) ;
 int device_printf (int ,char*,char const*,int ) ;
 int ofw_bus_get_name (int ) ;
 char* ofw_bus_get_type (int ) ;
 int printf (char*) ;
 int resource_list_print_type (struct resource_list*,char*,int ,char*) ;

__attribute__((used)) static void
macio_probe_nomatch(device_t dev, device_t child)
{
        struct macio_devinfo *dinfo;
        struct resource_list *rl;
 const char *type;

 if (bootverbose) {
  dinfo = device_get_ivars(child);
  rl = &dinfo->mdi_resources;

  if ((type = ofw_bus_get_type(child)) == ((void*)0))
   type = "(unknown)";
  device_printf(dev, "<%s, %s>", type, ofw_bus_get_name(child));
  resource_list_print_type(rl, "mem", SYS_RES_MEMORY, "%#jx");
  resource_list_print_type(rl, "irq", SYS_RES_IRQ, "%jd");
  printf(" (no driver attached)\n");
 }
}
