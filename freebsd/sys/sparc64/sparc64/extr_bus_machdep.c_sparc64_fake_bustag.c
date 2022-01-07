
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_space_tag {int bst_type; int * bst_cookie; } ;
typedef int bus_space_handle_t ;
typedef int bus_addr_t ;



bus_space_handle_t
sparc64_fake_bustag(int space, bus_addr_t addr, struct bus_space_tag *ptag)
{

 ptag->bst_cookie = ((void*)0);
 ptag->bst_type = space;
 return (addr);
}
