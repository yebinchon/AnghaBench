
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
typedef scalar_t__ bus_space_handle_t ;
typedef scalar_t__ bus_size_t ;


 int bswap16 (int ) ;

__attribute__((used)) static u_int16_t
rmi_pci_bus_space_read_2(void *tag, bus_space_handle_t handle,
    bus_size_t offset)
{
 u_int16_t value;

 value = *(volatile u_int16_t *)(handle + offset);
 return bswap16(value);
}
