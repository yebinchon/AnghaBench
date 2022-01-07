
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int busdma_seg_t ;
typedef int busdma_md_t ;


 int bd_md_next_seg (int ,int ) ;

busdma_seg_t
busdma_md_next_seg(busdma_md_t md, busdma_seg_t seg)
{

 seg = bd_md_next_seg(md, seg);
 return (seg);
}
