
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_proc; } ;
struct filedesc {int dummy; } ;
struct TYPE_2__ {struct filedesc* p_fd; } ;


 int fdescfree (struct thread*) ;

void
fdinstall_remapped(struct thread *td, struct filedesc *fdp)
{

 fdescfree(td);
 td->td_proc->p_fd = fdp;
}
