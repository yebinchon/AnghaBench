
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 scalar_t__ bus_print_child_header (int ,int ) ;
 int device_get_flags (int ) ;
 scalar_t__ nexus_print_all_resources (int ) ;
 scalar_t__ printf (char*,...) ;

__attribute__((used)) static int
nexus_print_child(device_t bus, device_t child)
{
 int retval = 0;

 retval += bus_print_child_header(bus, child);
 retval += nexus_print_all_resources(child);
 if (device_get_flags(child))
  retval += printf(" flags %#x", device_get_flags(child));
 retval += printf("\n");

 return (retval);
}
