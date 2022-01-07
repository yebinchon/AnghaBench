
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int bus_space_handle_t ;


 int bus_space_unmap (int ,int ,int ) ;
 int fdtbus_bs_tag ;

void
paddr_unmap(void *phys, uint32_t size)
{

 bus_space_unmap(fdtbus_bs_tag, (bus_space_handle_t)phys, size);
}
