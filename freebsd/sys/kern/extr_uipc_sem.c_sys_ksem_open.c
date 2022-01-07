
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_proc; } ;
struct ksem_open_args {int oflag; int value; int mode; int idp; int name; } ;
struct TYPE_2__ {scalar_t__ p_pid; } ;


 int DP (char*) ;
 int EINVAL ;
 int O_CREAT ;
 int O_EXCL ;
 int ksem_create (struct thread*,int ,int ,int ,int ,int,int ) ;

int
sys_ksem_open(struct thread *td, struct ksem_open_args *uap)
{

 DP((">>> ksem_open start, pid=%d\n", (int)td->td_proc->p_pid));

 if ((uap->oflag & ~(O_CREAT | O_EXCL)) != 0)
  return (EINVAL);
 return (ksem_create(td, uap->name, uap->idp, uap->mode, uap->value,
     uap->oflag, 0));
}
