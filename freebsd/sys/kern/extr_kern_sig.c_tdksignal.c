
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_proc; } ;
typedef int ksiginfo_t ;


 int tdsendsignal (int ,struct thread*,int,int *) ;

void
tdksignal(struct thread *td, int sig, ksiginfo_t *ksi)
{

 (void) tdsendsignal(td->td_proc, td, sig, ksi);
}
