
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwmbus_ivars {int pi_channel; } ;
typedef int device_t ;


 scalar_t__ bus_print_child_footer (int ,int ) ;
 int bus_print_child_header (int ,int ) ;
 struct pwmbus_ivars* device_get_ivars (int ) ;
 scalar_t__ printf (char*,int) ;

__attribute__((used)) static int
pwmbus_print_child(device_t dev, device_t child)
{
 struct pwmbus_ivars *ivars;
 int rv;

 ivars = device_get_ivars(child);

 rv = bus_print_child_header(dev, child);
 rv += printf(" channel %u", ivars->pi_channel);
 rv += bus_print_child_footer(dev, child);

 return (rv);
}
