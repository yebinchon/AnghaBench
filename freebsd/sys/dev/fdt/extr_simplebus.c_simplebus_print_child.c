
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 scalar_t__ bus_print_child_footer (int ,int ) ;
 int bus_print_child_header (int ,int ) ;
 int device_get_ivars (int ) ;
 int ofw_bus_status_okay (int ) ;
 scalar_t__ printf (char*) ;
 scalar_t__ simplebus_print_res (int ) ;

__attribute__((used)) static int
simplebus_print_child(device_t bus, device_t child)
{
 int rv;

 rv = bus_print_child_header(bus, child);
 rv += simplebus_print_res(device_get_ivars(child));
 if (!ofw_bus_status_okay(child))
  rv += printf(" disabled");
 rv += bus_print_child_footer(bus, child);
 return (rv);
}
