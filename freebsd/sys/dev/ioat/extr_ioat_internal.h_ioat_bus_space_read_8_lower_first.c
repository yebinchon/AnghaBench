
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;
typedef scalar_t__ bus_size_t ;


 int bus_space_read_4 (int ,int ,scalar_t__) ;

__attribute__((used)) static __inline uint64_t
ioat_bus_space_read_8_lower_first(bus_space_tag_t tag,
    bus_space_handle_t handle, bus_size_t offset)
{
 return (bus_space_read_4(tag, handle, offset) |
     ((uint64_t)bus_space_read_4(tag, handle, offset + 4)) << 32);
}
