
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int kobj_t ;


 int MMU_BOOTSTRAP (int *,int ,int ) ;
 int kobj_class_compile_static (int ,int *) ;
 int kobj_init_static (int ,int ) ;
 int mmu_def_impl ;
 int mmu_kernel_kops ;
 int mmu_kernel_obj ;
 int * mmu_obj ;

void
pmap_bootstrap(vm_offset_t start, vm_offset_t end)
{
 mmu_obj = &mmu_kernel_obj;





 kobj_class_compile_static(mmu_def_impl, &mmu_kernel_kops);
 kobj_init_static((kobj_t)mmu_obj, mmu_def_impl);

 MMU_BOOTSTRAP(mmu_obj, start, end);
}
