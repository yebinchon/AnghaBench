
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;


 int EOPNOTSUPP ;

int
ptrace_clear_single_step(struct thread *td)
{


 return (EOPNOTSUPP);
}
