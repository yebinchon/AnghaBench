
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_select_args {int timeout; int exceptfds; int writefds; int readfds; int nfds; } ;
struct linux_old_select_args {int ptr; } ;
struct l_old_select_argv {int timeout; int exceptfds; int writefds; int readfds; int nfds; } ;
typedef int linux_args ;


 int copyin (int ,struct l_old_select_argv*,int) ;
 int linux_select (struct thread*,struct linux_select_args*) ;

int
linux_old_select(struct thread *td, struct linux_old_select_args *args)
{
 struct l_old_select_argv linux_args;
 struct linux_select_args newsel;
 int error;

 error = copyin(args->ptr, &linux_args, sizeof(linux_args));
 if (error)
  return (error);

 newsel.nfds = linux_args.nfds;
 newsel.readfds = linux_args.readfds;
 newsel.writefds = linux_args.writefds;
 newsel.exceptfds = linux_args.exceptfds;
 newsel.timeout = linux_args.timeout;
 return (linux_select(td, &newsel));
}
