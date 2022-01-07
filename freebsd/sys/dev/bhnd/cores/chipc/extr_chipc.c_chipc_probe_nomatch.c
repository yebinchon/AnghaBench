
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
typedef int device_t ;


 struct resource_list* BUS_GET_RESOURCE_LIST (int ,int ) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 char* device_get_name (int ) ;
 int device_printf (int ,char*,char const*) ;
 int printf (char*) ;
 int resource_list_print_type (struct resource_list*,char*,int ,char*) ;

__attribute__((used)) static void
chipc_probe_nomatch(device_t dev, device_t child)
{
 struct resource_list *rl;
 const char *name;

 name = device_get_name(child);
 if (name == ((void*)0))
  name = "unknown device";

 device_printf(dev, "<%s> at", name);

 rl = BUS_GET_RESOURCE_LIST(dev, child);
 if (rl != ((void*)0)) {
  resource_list_print_type(rl, "mem", SYS_RES_MEMORY, "%#jx");
  resource_list_print_type(rl, "irq", SYS_RES_IRQ, "%jd");
 }

 printf(" (no driver attached)\n");
}
