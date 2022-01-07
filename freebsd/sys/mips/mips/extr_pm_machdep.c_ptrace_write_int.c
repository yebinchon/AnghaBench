
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v ;
struct thread {int td_proc; } ;


 int EFAULT ;
 int proc_writemem (struct thread*,int ,uintptr_t,int*,int) ;

__attribute__((used)) static int
ptrace_write_int(struct thread *td, uintptr_t addr, int v)
{

 if (proc_writemem(td, td->td_proc, addr, &v, sizeof(v)) != sizeof(v))
  return (EFAULT);
 return (0);
}
