
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int16_t ;
typedef scalar_t__ bus_space_handle_t ;
typedef scalar_t__ bus_size_t ;
typedef scalar_t__ bus_addr_t ;



__attribute__((used)) static void
rmi_bus_space_set_region_2(void *t, bus_space_handle_t bsh,
    bus_size_t offset, u_int16_t value, size_t count)
{
 bus_addr_t addr = bsh + offset;

 for (; count != 0; count--, addr += 2)
  (*(volatile u_int32_t *)(addr)) = value;
}
