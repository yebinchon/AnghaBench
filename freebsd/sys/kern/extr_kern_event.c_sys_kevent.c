
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct kevent_copyops {int kevent_size; int k_copyin; int k_copyout; struct kevent_args* arg; } ;
struct kevent_args {int timeout; int nevents; int eventlist; int nchanges; int changelist; int fd; } ;
struct kevent {int dummy; } ;
struct g_kevent_args {int timeout; int nevents; int eventlist; int nchanges; int changelist; int fd; } ;


 int kern_kevent_generic (struct thread*,struct g_kevent_args*,struct kevent_copyops*,char*) ;
 int kevent_copyin ;
 int kevent_copyout ;

int
sys_kevent(struct thread *td, struct kevent_args *uap)
{
 struct kevent_copyops k_ops = {
  .arg = uap,
  .k_copyout = kevent_copyout,
  .k_copyin = kevent_copyin,
  .kevent_size = sizeof(struct kevent),
 };
 struct g_kevent_args gk_args = {
  .fd = uap->fd,
  .changelist = uap->changelist,
  .nchanges = uap->nchanges,
  .eventlist = uap->eventlist,
  .nevents = uap->nevents,
  .timeout = uap->timeout,
 };

 return (kern_kevent_generic(td, &gk_args, &k_ops, "kevent"));
}
