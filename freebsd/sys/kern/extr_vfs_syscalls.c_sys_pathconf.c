
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {long* td_retval; } ;
struct pathconf_args {int name; int path; } ;


 int FOLLOW ;
 int UIO_USERSPACE ;
 int kern_pathconf (struct thread*,int ,int ,int ,int ,long*) ;

int
sys_pathconf(struct thread *td, struct pathconf_args *uap)
{
 long value;
 int error;

 error = kern_pathconf(td, uap->path, UIO_USERSPACE, uap->name, FOLLOW,
     &value);
 if (error == 0)
  td->td_retval[0] = value;
 return (error);
}
