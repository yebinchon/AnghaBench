
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;
typedef int bus_size_t ;
typedef int bus_addr_t ;


 int sparc64_bus_mem_map (int ,int ,int ,int,int ,int *) ;

int
bus_space_map(bus_space_tag_t tag, bus_addr_t address, bus_size_t size,
    int flags, bus_space_handle_t *handlep)
{

 return (sparc64_bus_mem_map(tag, address, size, flags, 0, handlep));
}
