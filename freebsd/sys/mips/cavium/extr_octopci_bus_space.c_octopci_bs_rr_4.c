
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int bus_space_handle_t ;
typedef int bus_size_t ;
typedef int bus_addr_t ;


 int rd32 (int) ;

void
octopci_bs_rr_4(void *t, bus_space_handle_t bsh,
    bus_size_t offset, uint32_t *addr, size_t count)
{
 bus_addr_t baddr = bsh + offset;

 while (count--) {
  *addr++ = rd32(baddr);
  baddr += 4;
 }
}
