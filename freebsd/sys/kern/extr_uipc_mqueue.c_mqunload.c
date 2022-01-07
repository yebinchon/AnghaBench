
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mq32_syscalls ;
 int mq_syscalls ;
 int syscall32_helper_unregister (int ) ;
 int syscall_helper_unregister (int ) ;

__attribute__((used)) static int
mqunload(void)
{




 syscall_helper_unregister(mq_syscalls);
 return (0);
}
