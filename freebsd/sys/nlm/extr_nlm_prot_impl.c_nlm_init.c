
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MTX_DEF ;
 int NLM_ERR (char*) ;
 int SY_THR_STATIC_KLD ;
 int TAILQ_INIT (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int nlm_global_lock ;
 int nlm_hosts ;
 int nlm_syscalls ;
 int nlm_waiting_locks ;
 int syscall_helper_register (int ,int ) ;

__attribute__((used)) static int
nlm_init(void)
{
 int error;

 mtx_init(&nlm_global_lock, "nlm_global_lock", ((void*)0), MTX_DEF);
 TAILQ_INIT(&nlm_waiting_locks);
 TAILQ_INIT(&nlm_hosts);

 error = syscall_helper_register(nlm_syscalls, SY_THR_STATIC_KLD);
 if (error != 0)
  NLM_ERR("Can't register NLM syscall\n");
 return (error);
}
