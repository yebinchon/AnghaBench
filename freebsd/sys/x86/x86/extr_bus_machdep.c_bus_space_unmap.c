
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bus_space_tag_t ;
typedef int bus_space_handle_t ;
typedef int bus_size_t ;


 scalar_t__ X86_BUS_SPACE_MEM ;
 int pmap_unmapdev (int ,int ) ;

void
bus_space_unmap(bus_space_tag_t tag, bus_space_handle_t bsh, bus_size_t size)
{

 if (tag == X86_BUS_SPACE_MEM)
  pmap_unmapdev(bsh, size);
}
