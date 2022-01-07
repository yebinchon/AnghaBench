
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef scalar_t__ bus_space_handle_t ;
typedef scalar_t__ bus_size_t ;


 int bswap32 (int const) ;
 int mips_sync () ;

__attribute__((used)) static void
rmi_pci_bus_space_write_multi_4(void *tag, bus_space_handle_t handle,
    bus_size_t offset, const u_int32_t * addr, size_t count)
{
 mips_sync();
 while (count--) {
  (*(volatile u_int32_t *)(handle + offset)) = bswap32(*addr);
  addr++;
 }
}
