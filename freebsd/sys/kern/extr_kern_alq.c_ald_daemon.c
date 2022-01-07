
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alq {int dummy; } ;


 int ALD_LOCK () ;
 int ALD_UNLOCK () ;
 int ALQ_LOCK (struct alq*) ;
 int ALQ_UNLOCK (struct alq*) ;
 int EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int FIRST_THREAD_IN_PROC (int ) ;
 struct alq* LIST_FIRST (int *) ;
 int PWAIT ;
 int SHUTDOWN_PRI_FIRST ;
 int ald_active ;
 int ald_deactivate (struct alq*) ;
 int ald_mtx ;
 int ald_proc ;
 int ald_shutdown ;
 scalar_t__ ald_shutingdown ;
 int ald_thread ;
 int alq_doio (struct alq*) ;
 int alq_eventhandler_tag ;
 int kproc_exit (int ) ;
 int mtx_sleep (int *,int *,int ,char*,int ) ;
 int shutdown_pre_sync ;
 int wakeup_one (struct alq*) ;

__attribute__((used)) static void
ald_daemon(void)
{
 int needwakeup;
 struct alq *alq;

 ald_thread = FIRST_THREAD_IN_PROC(ald_proc);

 alq_eventhandler_tag = EVENTHANDLER_REGISTER(shutdown_pre_sync,
     ald_shutdown, ((void*)0), SHUTDOWN_PRI_FIRST);

 ALD_LOCK();

 for (;;) {
  while ((alq = LIST_FIRST(&ald_active)) == ((void*)0) &&
      !ald_shutingdown)
   mtx_sleep(&ald_active, &ald_mtx, PWAIT, "aldslp", 0);


  if (ald_shutingdown && alq == ((void*)0)) {
   ALD_UNLOCK();
   break;
  }

  ALQ_LOCK(alq);
  ald_deactivate(alq);
  ALD_UNLOCK();
  needwakeup = alq_doio(alq);
  ALQ_UNLOCK(alq);
  if (needwakeup)
   wakeup_one(alq);
  ALD_LOCK();
 }

 kproc_exit(0);
}
