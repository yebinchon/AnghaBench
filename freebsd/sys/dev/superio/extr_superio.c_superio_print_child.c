
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int superio_dev_type_t ;
typedef int device_t ;


 scalar_t__ bus_print_child_footer (int ,int ) ;
 int bus_print_child_header (int ,int ) ;
 char* devtype_to_str (int ) ;
 scalar_t__ printf (char*,char*,int) ;
 int superio_get_ldn (int ) ;
 int superio_get_type (int ) ;

__attribute__((used)) static int
superio_print_child(device_t parent, device_t child)
{
 superio_dev_type_t type;
 uint8_t ldn;
 int retval;

 ldn = superio_get_ldn(child);
 type = superio_get_type(child);

 retval = bus_print_child_header(parent, child);
 retval += printf(" at %s ldn 0x%02x", devtype_to_str(type), ldn);
 retval += bus_print_child_footer(parent, child);

 return (retval);
}
