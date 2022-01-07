
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int bootverbose ;
 int device_get_ivars (int ) ;
 int device_printf (int ,char*,char const*) ;
 char* ofw_bus_get_compat (int ) ;
 char* ofw_bus_get_name (int ) ;
 char* ofw_bus_get_type (int ) ;
 int ofw_bus_status_okay (int ) ;
 int printf (char*,...) ;
 int simplebus_print_res (int ) ;

__attribute__((used)) static void
simplebus_probe_nomatch(device_t bus, device_t child)
{
 const char *name, *type, *compat;

 if (!bootverbose)
  return;

 compat = ofw_bus_get_compat(child);
 if (compat == ((void*)0))
  return;
 name = ofw_bus_get_name(child);
 type = ofw_bus_get_type(child);

 device_printf(bus, "<%s>", name != ((void*)0) ? name : "unknown");
 simplebus_print_res(device_get_ivars(child));
 if (!ofw_bus_status_okay(child))
  printf(" disabled");
 if (type)
  printf(" type %s", type);
 printf(" compat %s (no driver attached)\n", compat);
}
