
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmem_btag {int dummy; } ;


 int BT_MAXALLOC ;
 int UMA_SLAB_SPACE ;
 int howmany (int ,int) ;

int
vmem_startup_count(void)
{

 return (howmany(BT_MAXALLOC,
     UMA_SLAB_SPACE / sizeof(struct vmem_btag)));
}
