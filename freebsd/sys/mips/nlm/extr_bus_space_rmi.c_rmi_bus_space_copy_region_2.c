
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bus_space_handle_t ;
typedef int bus_size_t ;


 int printf (char*) ;

__attribute__((used)) static void
rmi_bus_space_copy_region_2(void *t, bus_space_handle_t bsh1,
    bus_size_t off1, bus_space_handle_t bsh2,
    bus_size_t off2, size_t count)
{
 printf("bus_space_copy_region_2 - unimplemented\n");
}
