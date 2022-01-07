
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int32_t ;
typedef scalar_t__ bus_space_handle_t ;
typedef scalar_t__ bus_size_t ;


 int bswap32 (int ) ;

__attribute__((used)) static u_int32_t
rmi_pci_bus_space_read_4(void *tag, bus_space_handle_t handle,
    bus_size_t offset)
{
 uint32_t value;

 value = *(volatile u_int32_t *)(handle + offset);
 return bswap32(value);
}
