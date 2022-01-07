
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 scalar_t__ device_get_desc (int ) ;
 char* device_get_nameunit (int ) ;
 scalar_t__ device_printf (int ,char*,scalar_t__) ;
 scalar_t__ printf (char*,char*) ;

int
bus_print_child_header(device_t dev, device_t child)
{
 int retval = 0;

 if (device_get_desc(child)) {
  retval += device_printf(child, "<%s>", device_get_desc(child));
 } else {
  retval += printf("%s", device_get_nameunit(child));
 }

 return (retval);
}
