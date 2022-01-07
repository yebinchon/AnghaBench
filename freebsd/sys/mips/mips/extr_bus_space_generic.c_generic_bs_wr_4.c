
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int bus_space_handle_t ;
typedef int bus_size_t ;
typedef int bus_addr_t ;


 int wr32 (int,int ) ;

void
generic_bs_wr_4(void *t, bus_space_handle_t bsh,
    bus_size_t offset, const uint32_t *addr, size_t count)
{
 bus_addr_t baddr = bsh + offset;

 while (count--) {
  wr32(baddr, *addr++);
  baddr += 4;
 }
}
