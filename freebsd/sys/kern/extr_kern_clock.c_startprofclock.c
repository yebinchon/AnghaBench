
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_flag; } ;


 int MA_OWNED ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int P_PROFIL ;
 int P_STOPPROF ;
 int cpu_startprofclock () ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int profprocs ;
 int time_lock ;

void
startprofclock(struct proc *p)
{

 PROC_LOCK_ASSERT(p, MA_OWNED);
 if (p->p_flag & P_STOPPROF)
  return;
 if ((p->p_flag & P_PROFIL) == 0) {
  p->p_flag |= P_PROFIL;
  mtx_lock(&time_lock);
  if (++profprocs == 1)
   cpu_startprofclock();
  mtx_unlock(&time_lock);
 }
}
