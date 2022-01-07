
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trapframe {int tf_tpc; } ;
struct thread {TYPE_1__* td_pcb; int * td_proc; struct trapframe* td_frame; } ;
struct TYPE_2__ {int pcb_tpc; } ;


 int KASSERT (int ,char*) ;
 int TF_DONE (struct trapframe*) ;
 struct thread* curthread ;
 int syscallenter (struct thread*) ;
 int syscallret (struct thread*) ;

void
syscall(struct trapframe *tf)
{
 struct thread *td;

 td = curthread;
 td->td_frame = tf;

 KASSERT(td != ((void*)0), ("trap: curthread NULL"));
 KASSERT(td->td_proc != ((void*)0), ("trap: curproc NULL"));





 td->td_pcb->pcb_tpc = tf->tf_tpc;
 TF_DONE(tf);

 syscallenter(td);
 syscallret(td);
}
