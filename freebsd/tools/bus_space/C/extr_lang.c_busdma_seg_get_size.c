
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u_long ;
typedef int busdma_seg_t ;
typedef unsigned long bus_size_t ;


 int bd_seg_get_size (int ,unsigned long*) ;

bus_size_t
busdma_seg_get_size(busdma_seg_t seg)
{
 u_long size;
 int error;

 error = bd_seg_get_size(seg, &size);
 return ((error) ? ~0UL : size);
}
