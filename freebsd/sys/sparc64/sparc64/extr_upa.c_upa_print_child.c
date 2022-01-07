
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 scalar_t__ bus_print_child_footer (int ,int ) ;
 int bus_print_child_header (int ,int ) ;
 int device_get_ivars (int ) ;
 scalar_t__ upa_print_res (int ) ;

__attribute__((used)) static int
upa_print_child(device_t dev, device_t child)
{
 int rv;

 rv = bus_print_child_header(dev, child);
 rv += upa_print_res(device_get_ivars(child));
 rv += bus_print_child_footer(dev, child);
 return (rv);
}
