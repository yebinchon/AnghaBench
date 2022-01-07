
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct proc* td_proc; } ;
struct proc {int p_flag; } ;
struct __setugid_args {int flag; } ;


 int EINVAL ;
 int ENOSYS ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int P_SUGID ;

int
sys___setugid(struct thread *td, struct __setugid_args *uap)
{
 return (ENOSYS);

}
