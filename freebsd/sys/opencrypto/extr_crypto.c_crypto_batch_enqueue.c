
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cryptop {int dummy; } ;


 int CRYPTO_Q_LOCK () ;
 int CRYPTO_Q_UNLOCK () ;
 int TAILQ_INSERT_TAIL (int *,struct cryptop*,int ) ;
 int crp_next ;
 int crp_q ;
 scalar_t__ crp_sleep ;
 int wakeup_one (int *) ;

void
crypto_batch_enqueue(struct cryptop *crp)
{

 CRYPTO_Q_LOCK();
 TAILQ_INSERT_TAIL(&crp_q, crp, crp_next);
 if (crp_sleep)
  wakeup_one(&crp_q);
 CRYPTO_Q_UNLOCK();
}
