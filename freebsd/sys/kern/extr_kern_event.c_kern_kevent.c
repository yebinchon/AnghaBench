
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct thread {int dummy; } ;
struct kevent_copyops {int dummy; } ;
struct file {int dummy; } ;
typedef int cap_rights_t ;


 int CAP_KQUEUE_CHANGE ;
 int CAP_KQUEUE_EVENT ;
 int cap_rights_init (int *) ;
 int cap_rights_set (int *,int ) ;
 int fdrop (struct file*,struct thread*) ;
 int fget (struct thread*,int,int *,struct file**) ;
 int kern_kevent_fp (struct thread*,struct file*,int,int,struct kevent_copyops*,struct timespec const*) ;

int
kern_kevent(struct thread *td, int fd, int nchanges, int nevents,
    struct kevent_copyops *k_ops, const struct timespec *timeout)
{
 cap_rights_t rights;
 struct file *fp;
 int error;

 cap_rights_init(&rights);
 if (nchanges > 0)
  cap_rights_set(&rights, CAP_KQUEUE_CHANGE);
 if (nevents > 0)
  cap_rights_set(&rights, CAP_KQUEUE_EVENT);
 error = fget(td, fd, &rights, &fp);
 if (error != 0)
  return (error);

 error = kern_kevent_fp(td, fp, nchanges, nevents, k_ops, timeout);
 fdrop(fp, td);

 return (error);
}
