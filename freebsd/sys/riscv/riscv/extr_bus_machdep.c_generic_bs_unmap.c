
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bus_space_handle_t ;
typedef int bus_size_t ;


 int pmap_unmapdev (int ,int ) ;

__attribute__((used)) static void
generic_bs_unmap(void *t, bus_space_handle_t bsh, bus_size_t size)
{

 pmap_unmapdev(bsh, size);
}
