
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CTL_P1003_1B_SEMAPHORES ;
 int CTL_P1003_1B_SEM_NSEMS_MAX ;
 int CTL_P1003_1B_SEM_VALUE_MAX ;
 int MTX_DEF ;
 int M_KSEM ;
 long SEM_MAX ;
 long SEM_VALUE_MAX ;
 int SY_THR_STATIC_KLD ;
 int hashinit (int,int ,int *) ;
 int ksem32_syscalls ;
 int ksem_count_lock ;
 int ksem_dict_lock ;
 int ksem_dictionary ;
 int ksem_hash ;
 int ksem_syscalls ;
 int mtx_init (int *,char*,int *,int ) ;
 int p31b_setcfg (int ,long) ;
 int sem_lock ;
 int sx_init (int *,char*) ;
 int syscall32_helper_register (int ,int ) ;
 int syscall_helper_register (int ,int ) ;

__attribute__((used)) static int
ksem_module_init(void)
{
 int error;

 mtx_init(&sem_lock, "sem", ((void*)0), MTX_DEF);
 mtx_init(&ksem_count_lock, "ksem count", ((void*)0), MTX_DEF);
 sx_init(&ksem_dict_lock, "ksem dictionary");
 ksem_dictionary = hashinit(1024, M_KSEM, &ksem_hash);
 p31b_setcfg(CTL_P1003_1B_SEMAPHORES, 200112L);
 p31b_setcfg(CTL_P1003_1B_SEM_NSEMS_MAX, SEM_MAX);
 p31b_setcfg(CTL_P1003_1B_SEM_VALUE_MAX, SEM_VALUE_MAX);

 error = syscall_helper_register(ksem_syscalls, SY_THR_STATIC_KLD);
 if (error)
  return (error);





 return (0);
}
