
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 scalar_t__ bus_print_child_footer (int ,int ) ;
 scalar_t__ bus_print_child_header (int ,int ) ;
 scalar_t__ isa_print_all_resources (int ) ;

__attribute__((used)) static int
isa_print_child(device_t bus, device_t dev)
{
 int retval = 0;

 retval += bus_print_child_header(bus, dev);
 retval += isa_print_all_resources(dev);
 retval += bus_print_child_footer(bus, dev);

 return (retval);
}
