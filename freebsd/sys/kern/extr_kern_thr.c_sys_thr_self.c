
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {scalar_t__ td_tid; } ;
struct thr_self_args {int id; } ;


 int EFAULT ;
 int suword_lwpid (int ,unsigned int) ;

int
sys_thr_self(struct thread *td, struct thr_self_args *uap)

{
 int error;

 error = suword_lwpid(uap->id, (unsigned)td->td_tid);
 if (error == -1)
  return (EFAULT);
 return (0);
}
