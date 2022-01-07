
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ bus_space_handle_t ;
typedef scalar_t__ bus_size_t ;
typedef scalar_t__ bus_addr_t ;


 int wr8 (scalar_t__,int ) ;

void
octopci_bs_wm_1(void *t, bus_space_handle_t bsh,
    bus_size_t offset, const uint8_t *addr, size_t count)
{
 bus_addr_t baddr = bsh + offset;

 while (count--)
  wr8(baddr, *addr++);
}
