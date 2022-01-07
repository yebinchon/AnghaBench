
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_flag; scalar_t__ p_profthreads; int p_mtx; } ;


 int MA_OWNED ;
 int PPAUSE ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int P_PROFIL ;
 int P_STOPPROF ;
 int cpu_stopprofclock () ;
 int msleep (scalar_t__*,int *,int ,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ profprocs ;
 int time_lock ;

void
stopprofclock(struct proc *p)
{

 PROC_LOCK_ASSERT(p, MA_OWNED);
 if (p->p_flag & P_PROFIL) {
  if (p->p_profthreads != 0) {
   while (p->p_profthreads != 0) {
    p->p_flag |= P_STOPPROF;
    msleep(&p->p_profthreads, &p->p_mtx, PPAUSE,
        "stopprof", 0);
   }
  }
  if ((p->p_flag & P_PROFIL) == 0)
   return;
  p->p_flag &= ~P_PROFIL;
  mtx_lock(&time_lock);
  if (--profprocs == 0)
   cpu_stopprofclock();
  mtx_unlock(&time_lock);
 }
}
