
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int device_get_ivars (int ) ;
 int device_printf (int ,char*,int ) ;
 int ebus_print_res (int ) ;
 int ofw_bus_get_name (int ) ;
 int printf (char*) ;

__attribute__((used)) static void
ebus_probe_nomatch(device_t dev, device_t child)
{

 device_printf(dev, "<%s>", ofw_bus_get_name(child));
 ebus_print_res(device_get_ivars(child));
 printf(" (no driver attached)\n");
}
