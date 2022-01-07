
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;
typedef int bus_size_t ;


 int sparc64_bus_mem_unmap (int ,int ,int ) ;

void
bus_space_unmap(bus_space_tag_t tag, bus_space_handle_t handle,
    bus_size_t size)
{

 sparc64_bus_mem_unmap(tag, handle, size);
}
