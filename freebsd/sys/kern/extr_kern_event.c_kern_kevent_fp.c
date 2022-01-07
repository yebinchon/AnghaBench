
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct thread {int dummy; } ;
struct kqueue {int dummy; } ;
struct kevent_copyops {int dummy; } ;
struct file {int dummy; } ;


 int kqueue_acquire (struct file*,struct kqueue**) ;
 int kqueue_kevent (struct kqueue*,struct thread*,int,int,struct kevent_copyops*,struct timespec const*) ;
 int kqueue_release (struct kqueue*,int ) ;

int
kern_kevent_fp(struct thread *td, struct file *fp, int nchanges, int nevents,
    struct kevent_copyops *k_ops, const struct timespec *timeout)
{
 struct kqueue *kq;
 int error;

 error = kqueue_acquire(fp, &kq);
 if (error != 0)
  return (error);
 error = kqueue_kevent(kq, td, nchanges, nevents, k_ops, timeout);
 kqueue_release(kq, 0);
 return (error);
}
