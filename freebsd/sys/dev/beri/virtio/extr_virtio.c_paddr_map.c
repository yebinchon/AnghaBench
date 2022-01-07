
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ bus_space_handle_t ;


 scalar_t__ bus_space_map (int ,scalar_t__,scalar_t__,int ,scalar_t__*) ;
 int fdtbus_bs_tag ;
 int panic (char*,scalar_t__) ;

void *
paddr_map(uint32_t offset, uint32_t phys, uint32_t size)
{
 bus_space_handle_t bsh;

 if (bus_space_map(fdtbus_bs_tag, (phys + offset),
   size, 0, &bsh) != 0) {
  panic("Couldn't map 0x%08x\n", (phys + offset));
 }

 return (void *)(bsh);
}
