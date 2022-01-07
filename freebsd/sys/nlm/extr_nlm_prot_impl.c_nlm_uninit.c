
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nlm_syscalls ;
 int syscall_helper_unregister (int ) ;

__attribute__((used)) static void
nlm_uninit(void)
{

 syscall_helper_unregister(nlm_syscalls);
}
