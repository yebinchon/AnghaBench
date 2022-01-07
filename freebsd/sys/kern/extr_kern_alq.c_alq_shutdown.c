
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alq {int aq_flags; int aq_cred; int aq_vp; int aq_mtx; } ;


 int ALD_LOCK () ;
 int ALD_UNLOCK () ;
 int ALQ_LOCK (struct alq*) ;
 int ALQ_UNLOCK (struct alq*) ;
 int AQ_ACTIVE ;
 int AQ_SHUTDOWN ;
 int AQ_WANTED ;
 int FWRITE ;
 scalar_t__ HAS_PENDING_DATA (struct alq*) ;
 int ald_activate (struct alq*) ;
 int crfree (int ) ;
 int curthread ;
 int msleep_spin (struct alq*,int *,char*,int ) ;
 int vn_close (int ,int ,int ,int ) ;

__attribute__((used)) static void
alq_shutdown(struct alq *alq)
{
 ALQ_LOCK(alq);


 alq->aq_flags |= AQ_SHUTDOWN;






 if (!(alq->aq_flags & AQ_ACTIVE) && HAS_PENDING_DATA(alq)) {
  alq->aq_flags |= AQ_ACTIVE;
  ALQ_UNLOCK(alq);
  ALD_LOCK();
  ald_activate(alq);
  ALD_UNLOCK();
  ALQ_LOCK(alq);
 }


 while (alq->aq_flags & AQ_ACTIVE) {
  alq->aq_flags |= AQ_WANTED;
  msleep_spin(alq, &alq->aq_mtx, "aldclose", 0);
 }
 ALQ_UNLOCK(alq);

 vn_close(alq->aq_vp, FWRITE, alq->aq_cred,
     curthread);
 crfree(alq->aq_cred);
}
