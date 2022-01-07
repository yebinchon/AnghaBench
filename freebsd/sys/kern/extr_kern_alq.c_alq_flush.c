
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alq {int aq_flags; } ;


 int ALD_LOCK () ;
 int ALD_UNLOCK () ;
 int ALQ_LOCK (struct alq*) ;
 int ALQ_UNLOCK (struct alq*) ;
 int AQ_ACTIVE ;
 int AQ_FLUSHING ;
 scalar_t__ HAS_PENDING_DATA (struct alq*) ;
 int ald_deactivate (struct alq*) ;
 int alq_doio (struct alq*) ;
 int wakeup_one (struct alq*) ;

void
alq_flush(struct alq *alq)
{
 int needwakeup = 0;

 ALD_LOCK();
 ALQ_LOCK(alq);





 if (HAS_PENDING_DATA(alq) && !(alq->aq_flags & AQ_FLUSHING)) {
  if (alq->aq_flags & AQ_ACTIVE)
   ald_deactivate(alq);

  ALD_UNLOCK();
  needwakeup = alq_doio(alq);
 } else
  ALD_UNLOCK();

 ALQ_UNLOCK(alq);

 if (needwakeup)
  wakeup_one(alq);
}
