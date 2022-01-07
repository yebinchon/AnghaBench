
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct kqueue {int kq_refcnt; } ;
struct kevent_copyops {int dummy; } ;


 int kqueue_destroy (struct kqueue*) ;
 int kqueue_drain (struct kqueue*,struct thread*) ;
 int kqueue_init (struct kqueue*) ;
 int kqueue_kevent (struct kqueue*,struct thread*,int,int,struct kevent_copyops*,int *) ;

int
kern_kevent_anonymous(struct thread *td, int nevents,
    struct kevent_copyops *k_ops)
{
 struct kqueue kq = {};
 int error;

 kqueue_init(&kq);
 kq.kq_refcnt = 1;
 error = kqueue_kevent(&kq, td, nevents, nevents, k_ops, ((void*)0));
 kqueue_drain(&kq, td);
 kqueue_destroy(&kq);
 return (error);
}
