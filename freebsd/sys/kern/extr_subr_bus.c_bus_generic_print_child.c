
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 scalar_t__ bus_print_child_domain (int ,int ) ;
 scalar_t__ bus_print_child_footer (int ,int ) ;
 scalar_t__ bus_print_child_header (int ,int ) ;

int
bus_generic_print_child(device_t dev, device_t child)
{
 int retval = 0;

 retval += bus_print_child_header(dev, child);
 retval += bus_print_child_domain(dev, child);
 retval += bus_print_child_footer(dev, child);

 return (retval);
}
