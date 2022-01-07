
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {long* td_retval; } ;
struct fpathconf_args {int name; int fd; } ;


 int kern_fpathconf (struct thread*,int ,int ,long*) ;

int
sys_fpathconf(struct thread *td, struct fpathconf_args *uap)
{
 long value;
 int error;

 error = kern_fpathconf(td, uap->fd, uap->name, &value);
 if (error == 0)
  td->td_retval[0] = value;
 return (error);
}
