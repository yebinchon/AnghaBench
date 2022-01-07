
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct thread {struct proc* td_proc; } ;
struct TYPE_8__ {int sival_int; } ;
struct sigevent {scalar_t__ sigev_notify; TYPE_3__ sigev_value; int sigev_signo; } ;
struct proc {TYPE_2__* p_itimers; } ;
struct TYPE_10__ {int ksi_flags; int ksi_timerid; TYPE_3__ ksi_value; int ksi_code; int ksi_signo; } ;
struct TYPE_6__ {int it_interval; int it_value; } ;
struct itimer {size_t it_clockid; int it_timerid; TYPE_5__ it_ksi; struct sigevent it_sigev; struct proc* it_proc; scalar_t__ it_overrun_last; scalar_t__ it_overrun; TYPE_1__ it_time; scalar_t__ it_active; scalar_t__ it_usecount; scalar_t__ it_flags; } ;
typedef size_t clockid_t ;
struct TYPE_9__ {int * timer_create; } ;
struct TYPE_7__ {struct itimer** its_timers; } ;


 int CLOCK_CALL (size_t,int ,struct itimer*) ;



 int EAGAIN ;
 int EINVAL ;
 int ITIMER_LOCK (struct itimer*) ;
 int ITIMER_UNLOCK (struct itimer*) ;
 int KASSERT (int,char*) ;
 int KSI_EXT ;
 int KSI_INS ;
 size_t MAX_CLOCKS ;
 int M_WAITOK ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int SIGALRM ;
 scalar_t__ SIGEV_NONE ;
 scalar_t__ SIGEV_SIGNAL ;
 scalar_t__ SIGEV_THREAD_ID ;
 int SIGPROF ;
 int SIGVTALRM ;
 int SI_TIMER ;
 int TIMER_MAX ;
 int _SIG_VALID (int ) ;
 int itimer_zone ;
 int itimers_alloc (struct proc*) ;
 int ksiginfo_init (TYPE_5__*) ;
 TYPE_4__* posix_clocks ;
 int timer_create ;
 int timer_delete ;
 int timespecclear (int *) ;
 struct itimer* uma_zalloc (int ,int ) ;
 int uma_zfree (int ,struct itimer*) ;

int
kern_ktimer_create(struct thread *td, clockid_t clock_id, struct sigevent *evp,
    int *timerid, int preset_id)
{
 struct proc *p = td->td_proc;
 struct itimer *it;
 int id;
 int error;

 if (clock_id < 0 || clock_id >= MAX_CLOCKS)
  return (EINVAL);

 if (posix_clocks[clock_id].timer_create == ((void*)0))
  return (EINVAL);

 if (evp != ((void*)0)) {
  if (evp->sigev_notify != SIGEV_NONE &&
      evp->sigev_notify != SIGEV_SIGNAL &&
      evp->sigev_notify != SIGEV_THREAD_ID)
   return (EINVAL);
  if ((evp->sigev_notify == SIGEV_SIGNAL ||
       evp->sigev_notify == SIGEV_THREAD_ID) &&
   !_SIG_VALID(evp->sigev_signo))
   return (EINVAL);
 }

 if (p->p_itimers == ((void*)0))
  itimers_alloc(p);

 it = uma_zalloc(itimer_zone, M_WAITOK);
 it->it_flags = 0;
 it->it_usecount = 0;
 it->it_active = 0;
 timespecclear(&it->it_time.it_value);
 timespecclear(&it->it_time.it_interval);
 it->it_overrun = 0;
 it->it_overrun_last = 0;
 it->it_clockid = clock_id;
 it->it_timerid = -1;
 it->it_proc = p;
 ksiginfo_init(&it->it_ksi);
 it->it_ksi.ksi_flags |= KSI_INS | KSI_EXT;
 error = CLOCK_CALL(clock_id, timer_create, (it));
 if (error != 0)
  goto out;

 PROC_LOCK(p);
 if (preset_id != -1) {
  KASSERT(preset_id >= 0 && preset_id < 3, ("invalid preset_id"));
  id = preset_id;
  if (p->p_itimers->its_timers[id] != ((void*)0)) {
   PROC_UNLOCK(p);
   error = 0;
   goto out;
  }
 } else {




  for (id = 3; id < TIMER_MAX; id++)
   if (p->p_itimers->its_timers[id] == ((void*)0))
    break;
  if (id == TIMER_MAX) {
   PROC_UNLOCK(p);
   error = EAGAIN;
   goto out;
  }
 }
 it->it_timerid = id;
 p->p_itimers->its_timers[id] = it;
 if (evp != ((void*)0))
  it->it_sigev = *evp;
 else {
  it->it_sigev.sigev_notify = SIGEV_SIGNAL;
  switch (clock_id) {
  default:
  case 129:
   it->it_sigev.sigev_signo = SIGALRM;
   break;
  case 128:
    it->it_sigev.sigev_signo = SIGVTALRM;
   break;
  case 130:
   it->it_sigev.sigev_signo = SIGPROF;
   break;
  }
  it->it_sigev.sigev_value.sival_int = id;
 }

 if (it->it_sigev.sigev_notify == SIGEV_SIGNAL ||
     it->it_sigev.sigev_notify == SIGEV_THREAD_ID) {
  it->it_ksi.ksi_signo = it->it_sigev.sigev_signo;
  it->it_ksi.ksi_code = SI_TIMER;
  it->it_ksi.ksi_value = it->it_sigev.sigev_value;
  it->it_ksi.ksi_timerid = id;
 }
 PROC_UNLOCK(p);
 *timerid = id;
 return (0);

out:
 ITIMER_LOCK(it);
 CLOCK_CALL(it->it_clockid, timer_delete, (it));
 ITIMER_UNLOCK(it);
 uma_zfree(itimer_zone, it);
 return (error);
}
