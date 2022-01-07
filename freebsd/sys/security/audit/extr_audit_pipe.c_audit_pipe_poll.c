
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;
struct audit_pipe {int ap_selinfo; int ap_queue; } ;


 int AUDIT_PIPE_LOCK (struct audit_pipe*) ;
 int AUDIT_PIPE_UNLOCK (struct audit_pipe*) ;
 int POLLIN ;
 int POLLRDNORM ;
 int * TAILQ_FIRST (int *) ;
 int devfs_get_cdevpriv (void**) ;
 int selrecord (struct thread*,int *) ;

__attribute__((used)) static int
audit_pipe_poll(struct cdev *dev, int events, struct thread *td)
{
 struct audit_pipe *ap;
 int error, revents;

 revents = 0;
 error = devfs_get_cdevpriv((void **)&ap);
 if (error != 0)
  return (error);
 if (events & (POLLIN | POLLRDNORM)) {
  AUDIT_PIPE_LOCK(ap);
  if (TAILQ_FIRST(&ap->ap_queue) != ((void*)0))
   revents |= events & (POLLIN | POLLRDNORM);
  else
   selrecord(td, &ap->ap_selinfo);
  AUDIT_PIPE_UNLOCK(ap);
 }
 return (revents);
}
