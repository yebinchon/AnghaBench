
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int bus_space_handle_t ;
typedef int bus_size_t ;
typedef int bus_addr_t ;


 int rd16 (int) ;

void
octopci_bs_rr_2(void *t, bus_space_handle_t bsh,
    bus_size_t offset, uint16_t *addr, size_t count)
{
 bus_addr_t baddr = bsh + offset;

 while (count--) {
  *addr++ = rd16(baddr);
  baddr += 2;
 }
}
