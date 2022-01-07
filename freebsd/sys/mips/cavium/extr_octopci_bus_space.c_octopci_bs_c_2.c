
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bus_space_handle_t ;
typedef scalar_t__ bus_size_t ;
typedef scalar_t__ bus_addr_t ;


 int rd16 (scalar_t__) ;
 int wr16 (scalar_t__,int ) ;

void
octopci_bs_c_2(void *t, bus_space_handle_t bsh1,
    bus_size_t off1, bus_space_handle_t bsh2,
    bus_size_t off2, size_t count)
{
 bus_addr_t addr1 = bsh1 + off1;
 bus_addr_t addr2 = bsh2 + off2;

 if (addr1 >= addr2) {

  for (; count != 0; count--, addr1 += 2, addr2 += 2)
   wr16(addr2, rd16(addr1));
 } else {

  for (addr1 += 2 * (count - 1), addr2 += 2 * (count - 1);
      count != 0; count--, addr1 -= 2, addr2 -= 2)
   wr16(addr2, rd16(addr1));
 }
}
