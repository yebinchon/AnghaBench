
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int bus_space_handle_t ;
typedef int bus_size_t ;
typedef int bus_addr_t ;


 int wr16 (int,int ) ;

void
octopci_bs_sr_2(void *t, bus_space_handle_t bsh,
         bus_size_t offset, uint16_t value, size_t count)
{
 bus_addr_t addr = bsh + offset;

 for (; count != 0; count--, addr += 2)
  wr16(addr, value);
}
