
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SY_THR_STATIC_KLD ;
 int mq32_syscalls ;
 int mq_syscalls ;
 int syscall32_helper_register (int ,int ) ;
 int syscall_helper_register (int ,int ) ;

__attribute__((used)) static int
mqinit(void)
{
 int error;

 error = syscall_helper_register(mq_syscalls, SY_THR_STATIC_KLD);
 if (error != 0)
  return (error);





 return (0);
}
