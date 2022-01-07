
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dbg_bus_mem_addr {scalar_t__ hi; scalar_t__ lo; } ;



__attribute__((used)) static u32 ecore_phys_addr_diff(struct dbg_bus_mem_addr *a,
        struct dbg_bus_mem_addr *b)
{
 return a->hi == b->hi ? a->lo - b->lo : b->lo - a->lo;
}
