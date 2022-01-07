
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gssd_syscalls ;
 int syscall_helper_unregister (int ) ;

__attribute__((used)) static void
kgss_unload(void)
{

 syscall_helper_unregister(gssd_syscalls);
}
