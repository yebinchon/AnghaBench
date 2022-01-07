
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 scalar_t__ bus_print_child_footer (int ,int ) ;
 int bus_print_child_header (int ,int ) ;
 scalar_t__ device_get_ivars (int ) ;
 scalar_t__ printf (char*,int) ;

__attribute__((used)) static int
mvs_print_child(device_t dev, device_t child)
{
 int retval;

 retval = bus_print_child_header(dev, child);
 retval += printf(" at channel %d",
     (int)(intptr_t)device_get_ivars(child));
 retval += bus_print_child_footer(dev, child);

 return (retval);
}
