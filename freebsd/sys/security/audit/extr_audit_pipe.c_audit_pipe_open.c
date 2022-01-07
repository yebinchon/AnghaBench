
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_proc; } ;
struct cdev {int dummy; } ;
struct audit_pipe {int ap_sigio; } ;
struct TYPE_2__ {int p_pid; } ;


 int ENOMEM ;
 struct audit_pipe* audit_pipe_alloc () ;
 int audit_pipe_dtor (struct audit_pipe*) ;
 int devfs_set_cdevpriv (struct audit_pipe*,int (*) (struct audit_pipe*)) ;
 int fsetown (int ,int *) ;

__attribute__((used)) static int
audit_pipe_open(struct cdev *dev, int oflags, int devtype, struct thread *td)
{
 struct audit_pipe *ap;
 int error;

 ap = audit_pipe_alloc();
 if (ap == ((void*)0))
  return (ENOMEM);
 fsetown(td->td_proc->p_pid, &ap->ap_sigio);
 error = devfs_set_cdevpriv(ap, audit_pipe_dtor);
 if (error != 0)
  audit_pipe_dtor(ap);
 return (error);
}
