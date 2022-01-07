
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 scalar_t__ bus_print_child_header (int ,int ) ;
 int device_get_flags (int ) ;
 char* device_get_nameunit (int ) ;
 int fdc_get_fdunit (int ) ;
 scalar_t__ printf (char*,...) ;

int
fdc_print_child(device_t me, device_t child)
{
 int retval = 0, flags;

 retval += bus_print_child_header(me, child);
 retval += printf(" on %s drive %d", device_get_nameunit(me),
        fdc_get_fdunit(child));
 if ((flags = device_get_flags(me)) != 0)
  retval += printf(" flags %#x", flags);
 retval += printf("\n");

 return (retval);
}
