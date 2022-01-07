
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CTL_P1003_1B_SEMAPHORES ;
 int CTL_P1003_1B_SEM_NSEMS_MAX ;
 int CTL_P1003_1B_SEM_VALUE_MAX ;
 int M_KSEM ;
 int hashdestroy (int ,int ,int ) ;
 int ksem32_syscalls ;
 int ksem_count_lock ;
 int ksem_dict_lock ;
 int ksem_dictionary ;
 int ksem_hash ;
 int ksem_syscalls ;
 int mtx_destroy (int *) ;
 int p31b_setcfg (int ,int ) ;
 int p31b_unsetcfg (int ) ;
 int sem_lock ;
 int sx_destroy (int *) ;
 int syscall32_helper_unregister (int ) ;
 int syscall_helper_unregister (int ) ;

__attribute__((used)) static void
ksem_module_destroy(void)
{




 syscall_helper_unregister(ksem_syscalls);

 p31b_setcfg(CTL_P1003_1B_SEMAPHORES, 0);
 hashdestroy(ksem_dictionary, M_KSEM, ksem_hash);
 sx_destroy(&ksem_dict_lock);
 mtx_destroy(&ksem_count_lock);
 mtx_destroy(&sem_lock);
 p31b_unsetcfg(CTL_P1003_1B_SEM_VALUE_MAX);
 p31b_unsetcfg(CTL_P1003_1B_SEM_NSEMS_MAX);
}
