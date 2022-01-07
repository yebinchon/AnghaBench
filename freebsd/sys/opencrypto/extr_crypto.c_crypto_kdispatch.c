
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cryptkop {int krp_crid; } ;
struct TYPE_2__ {int cs_kops; } ;


 int CRYPTO_Q_LOCK () ;
 int CRYPTO_Q_UNLOCK () ;
 int ERESTART ;
 int TAILQ_INSERT_TAIL (int *,struct cryptkop*,int ) ;
 int crp_kq ;
 int crp_q ;
 scalar_t__ crp_sleep ;
 int crypto_kinvoke (struct cryptkop*,int ) ;
 TYPE_1__ cryptostats ;
 int krp_next ;
 int wakeup_one (int *) ;

int
crypto_kdispatch(struct cryptkop *krp)
{
 int error;

 cryptostats.cs_kops++;

 error = crypto_kinvoke(krp, krp->krp_crid);
 if (error == ERESTART) {
  CRYPTO_Q_LOCK();
  TAILQ_INSERT_TAIL(&crp_kq, krp, krp_next);
  if (crp_sleep)
   wakeup_one(&crp_q);
  CRYPTO_Q_UNLOCK();
  error = 0;
 }
 return error;
}
