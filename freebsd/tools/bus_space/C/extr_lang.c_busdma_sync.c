
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int busdma_md_t ;


 int bd_sync (int ,int,unsigned long,unsigned long) ;

int
busdma_sync(busdma_md_t md, int op)
{

 return (bd_sync(md, op, 0UL, ~0UL));
}
