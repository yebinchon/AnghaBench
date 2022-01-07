
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int uint64_t ;
struct lpteg {int dummy; } ;
typedef int mmu_t ;


 int MTX_DEF ;
 int lv1_construct_virtual_address_space (int,int,unsigned long,int *,int*) ;
 int lv1_destruct_virtual_address_space (int ) ;
 int lv1_select_virtual_address_space (int ) ;
 int moea64_early_bootstrap (int ,int ,int ) ;
 int moea64_late_bootstrap (int ,int ,int ) ;
 int moea64_mid_bootstrap (int ,int ,int ) ;
 int moea64_pteg_count ;
 int mps3_table_lock ;
 int mps3_vas_id ;
 int mtx_init (int *,char*,int *,int ) ;

__attribute__((used)) static void
mps3_bootstrap(mmu_t mmup, vm_offset_t kernelstart, vm_offset_t kernelend)
{
 uint64_t final_pteg_count;

 mtx_init(&mps3_table_lock, "page table", ((void*)0), MTX_DEF);

 moea64_early_bootstrap(mmup, kernelstart, kernelend);


 lv1_destruct_virtual_address_space(0);


 lv1_construct_virtual_address_space(
     20 , 2 ,
     (24UL << 56) | (16UL << 48) ,
     &mps3_vas_id, &final_pteg_count
 );

 lv1_select_virtual_address_space(mps3_vas_id);

 moea64_pteg_count = final_pteg_count / sizeof(struct lpteg);

 moea64_mid_bootstrap(mmup, kernelstart, kernelend);
 moea64_late_bootstrap(mmup, kernelstart, kernelend);
}
