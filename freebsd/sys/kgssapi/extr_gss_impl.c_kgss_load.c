
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIST_INIT (int *) ;
 int SY_THR_STATIC_KLD ;
 int gssd_syscalls ;
 int kgss_mechs ;
 int syscall_helper_register (int ,int ) ;

__attribute__((used)) static int
kgss_load(void)
{
 int error;

 LIST_INIT(&kgss_mechs);
 error = syscall_helper_register(gssd_syscalls, SY_THR_STATIC_KLD);
 if (error != 0)
  return (error);
 return (0);
}
