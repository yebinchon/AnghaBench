
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alq {int dummy; } ;


 int ALD_LOCK () ;
 int ALD_UNLOCK () ;
 struct alq* LIST_FIRST (int *) ;
 int LIST_REMOVE (struct alq*,int ) ;
 int PWAIT ;
 int ald_active ;
 int ald_mtx ;
 int ald_proc ;
 int ald_queues ;
 int ald_shutingdown ;
 int alq_shutdown (struct alq*) ;
 int aq_link ;
 int mtx_sleep (int ,int *,int ,char*,int ) ;
 int wakeup (int *) ;

__attribute__((used)) static void
ald_shutdown(void *arg, int howto)
{
 struct alq *alq;

 ALD_LOCK();


 ald_shutingdown = 1;


 while ((alq = LIST_FIRST(&ald_queues)) != ((void*)0)) {
  LIST_REMOVE(alq, aq_link);
  ALD_UNLOCK();
  alq_shutdown(alq);
  ALD_LOCK();
 }







 wakeup(&ald_active);


 mtx_sleep(ald_proc, &ald_mtx, PWAIT, "aldslp", 0);

 ALD_UNLOCK();
}
