
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct proc {scalar_t__ p_numthreads; int p_mqnotifier; TYPE_1__* p_ksi; int p_sigqueue; } ;
struct TYPE_2__ {int ksi_flags; } ;


 int KSI_EXT ;
 int KSI_INS ;
 int LIST_INIT (int *) ;
 TYPE_1__* ksiginfo_alloc (int) ;
 int sigqueue_init (int *,struct proc*) ;
 int thread_link (struct thread*,struct proc*) ;

void
proc_linkup(struct proc *p, struct thread *td)
{

 sigqueue_init(&p->p_sigqueue, p);
 p->p_ksi = ksiginfo_alloc(1);
 if (p->p_ksi != ((void*)0)) {

  p->p_ksi->ksi_flags = KSI_EXT | KSI_INS;
 }
 LIST_INIT(&p->p_mqnotifier);
 p->p_numthreads = 0;
 thread_link(td, p);
}
