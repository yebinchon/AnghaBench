
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASI_DMMU_DEMAP ;
 int ASI_IMMU_DEMAP ;
 int KERNBASE ;
 int TLB_DEMAP_ALL ;
 int flush (int ) ;
 int stxa (int ,int ,int ) ;

void
zeus_tlb_flush_nonlocked(void)
{

 stxa(TLB_DEMAP_ALL, ASI_DMMU_DEMAP, 0);
 stxa(TLB_DEMAP_ALL, ASI_IMMU_DEMAP, 0);
 flush(KERNBASE);
}
