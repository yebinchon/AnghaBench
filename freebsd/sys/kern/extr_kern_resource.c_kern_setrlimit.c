
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct thread {int td_proc; } ;
struct rlimit {int dummy; } ;


 int kern_proc_setrlimit (struct thread*,int ,int ,struct rlimit*) ;

int
kern_setrlimit(struct thread *td, u_int which, struct rlimit *limp)
{

 return (kern_proc_setrlimit(td, td->td_proc, which, limp));
}
