
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device_ivars {char* xd_node; } ;
typedef int device_t ;


 scalar_t__ bus_print_child_footer (int ,int ) ;
 scalar_t__ bus_print_child_header (int ,int ) ;
 struct xenbus_device_ivars* device_get_ivars (int ) ;
 scalar_t__ printf (char*,char*) ;

int
xenbusb_print_child(device_t dev, device_t child)
{
 struct xenbus_device_ivars *ivars = device_get_ivars(child);
 int retval = 0;

 retval += bus_print_child_header(dev, child);
 retval += printf(" at %s", ivars->xd_node);
 retval += bus_print_child_footer(dev, child);

 return (retval);
}
