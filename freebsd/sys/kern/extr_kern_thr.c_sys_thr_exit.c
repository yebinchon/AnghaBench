
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct thr_exit_args {scalar_t__ state; } ;


 int INT_MAX ;
 int kern_thr_exit (struct thread*) ;
 int kern_umtx_wake (struct thread*,scalar_t__,int ,int ) ;
 int suword_lwpid (scalar_t__,int) ;
 int umtx_thread_exit (struct thread*) ;

int
sys_thr_exit(struct thread *td, struct thr_exit_args *uap)

{

 umtx_thread_exit(td);


 if ((void *)uap->state != ((void*)0)) {
  suword_lwpid(uap->state, 1);
  kern_umtx_wake(td, uap->state, INT_MAX, 0);
 }

 return (kern_thr_exit(td));
}
