
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int p_numthreads; int * p_ksi; int * td_su; int p_ktr; } ;
struct proc {int p_numthreads; int * p_ksi; int * td_su; int p_ktr; } ;


 int EVENTHANDLER_DIRECT_INVOKE (int ,struct thread*) ;
 struct thread* FIRST_THREAD_IN_PROC (struct thread*) ;
 int KASSERT (int,char*) ;
 int KSI_ONQ (int *) ;
 int MPASS (int ) ;
 int STAILQ_EMPTY (int *) ;
 int osd_thread_exit (struct thread*) ;
 int process_dtor ;
 int td_softdep_cleanup (struct thread*) ;
 int thread_dtor ;

__attribute__((used)) static void
proc_dtor(void *mem, int size, void *arg)
{
 struct proc *p;
 struct thread *td;


 p = (struct proc *)mem;
 td = FIRST_THREAD_IN_PROC(p);
 if (td != ((void*)0)) {






  osd_thread_exit(td);
  td_softdep_cleanup(td);
  MPASS(td->td_su == ((void*)0));


  EVENTHANDLER_DIRECT_INVOKE(thread_dtor, td);
 }
 EVENTHANDLER_DIRECT_INVOKE(process_dtor, p);
 if (p->p_ksi != ((void*)0))
  KASSERT(! KSI_ONQ(p->p_ksi), ("SIGCHLD queue"));
}
