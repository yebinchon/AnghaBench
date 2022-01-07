
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u_long ;
typedef int busdma_seg_t ;
typedef unsigned long bus_addr_t ;


 int bd_seg_get_addr (int ,unsigned long*) ;

bus_addr_t
busdma_seg_get_addr(busdma_seg_t seg)
{
 u_long addr;
 int error;

 error = bd_seg_get_addr(seg, &addr);
 return ((error) ? ~0UL : addr);
}
