
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbus_ivar {scalar_t__ addr; } ;
typedef int device_t ;


 scalar_t__ bus_print_child_footer (int ,int ) ;
 int bus_print_child_header (int ,int ) ;
 struct smbus_ivar* device_get_ivars (int ) ;
 scalar_t__ printf (char*,scalar_t__) ;

__attribute__((used)) static int
smbus_print_child(device_t parent, device_t child)
{
 struct smbus_ivar *devi;
 int retval;

 devi = device_get_ivars(child);
 retval = bus_print_child_header(parent, child);
 if (devi->addr != 0)
  retval += printf(" at addr 0x%x", devi->addr);
 retval += bus_print_child_footer(parent, child);

 return (retval);
}
