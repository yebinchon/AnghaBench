
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
typedef scalar_t__ bus_space_handle_t ;
typedef scalar_t__ bus_size_t ;
typedef scalar_t__ bus_addr_t ;



void
rmi_pci_bus_space_read_region_2(void *t, bus_space_handle_t bsh,
    bus_size_t offset, u_int16_t * addr, size_t count)
{
 bus_addr_t baddr = bsh + offset;

 while (count--) {
  *addr++ = (*(volatile u_int16_t *)(baddr));
  baddr += 2;
 }
}
