
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {struct proc* td_proc; } ;
struct proc {TYPE_1__* p_session; } ;
struct TYPE_4__ {int sc_dev_opened; scalar_t__ sc_dev_sid; } ;
struct TYPE_3__ {scalar_t__ s_sid; } ;


 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 TYPE_2__* autofs_softc ;

bool
autofs_ignore_thread(const struct thread *td)
{
 struct proc *p;

 p = td->td_proc;

 if (autofs_softc->sc_dev_opened == 0)
  return (0);

 PROC_LOCK(p);
 if (p->p_session->s_sid == autofs_softc->sc_dev_sid) {
  PROC_UNLOCK(p);
  return (1);
 }
 PROC_UNLOCK(p);

 return (0);
}
