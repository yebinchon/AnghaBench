
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int device_get_ivars (int ) ;
 int device_printf (int ,char*,int ) ;
 int nexus_print_res (int ) ;
 int ofw_bus_get_name (int ) ;
 char* ofw_bus_get_type (int ) ;
 int printf (char*,char const*) ;

__attribute__((used)) static void
nexus_probe_nomatch(device_t bus, device_t child)
{
 const char *type;

 device_printf(bus, "<%s>", ofw_bus_get_name(child));
 nexus_print_res(device_get_ivars(child));
 type = ofw_bus_get_type(child);
 printf(" type %s (no driver attached)\n",
     type != ((void*)0) ? type : "unknown");
}
