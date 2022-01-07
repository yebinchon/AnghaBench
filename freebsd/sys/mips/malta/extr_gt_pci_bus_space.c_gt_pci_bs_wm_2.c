
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef scalar_t__ bus_space_handle_t ;
typedef scalar_t__ bus_size_t ;
typedef scalar_t__ bus_addr_t ;


 int wr16 (scalar_t__,int ) ;

void
gt_pci_bs_wm_2(void *t, bus_space_handle_t bsh,
    bus_size_t offset, const uint16_t *addr, size_t count)
{
 bus_addr_t baddr = bsh + offset;

 while (count--)
  wr16(baddr, *addr++);
}
