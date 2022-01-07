
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_devinfo {int address; } ;
typedef int device_t ;


 scalar_t__ bus_print_child_footer (int ,int ) ;
 scalar_t__ bus_print_child_header (int ,int ) ;
 struct adb_devinfo* device_get_ivars (int ) ;
 int printf (char*,int) ;

__attribute__((used)) static int
adb_print_child(device_t dev, device_t child)
{
 struct adb_devinfo *dinfo;
 int retval = 0;

 dinfo = device_get_ivars(child);

 retval += bus_print_child_header(dev,child);
 printf(" at device %d",dinfo->address);
 retval += bus_print_child_footer(dev, child);

 return (retval);
}
