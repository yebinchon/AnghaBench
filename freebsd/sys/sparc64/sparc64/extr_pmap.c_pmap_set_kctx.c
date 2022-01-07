
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AA_DMMU_SCXR ;
 int ASI_DMMU ;
 int KERNBASE ;
 int TLB_CTX_KERNEL ;
 int TLB_CXR_PGSZ_MASK ;
 int flush (int ) ;
 int ldxa (int ,int ) ;
 int stxa (int ,int ,int) ;

void
pmap_set_kctx(void)
{

 stxa(AA_DMMU_SCXR, ASI_DMMU, (ldxa(AA_DMMU_SCXR, ASI_DMMU) &
     TLB_CXR_PGSZ_MASK) | TLB_CTX_KERNEL);
 flush(KERNBASE);
}
