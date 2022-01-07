
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cryptocap {scalar_t__ cc_koperations; int cc_flags; } ;
struct crypto_ret_worker {int crp_ret_kq; int crp_ret_q; } ;
struct cryptkop {scalar_t__ krp_status; size_t krp_hid; } ;
struct TYPE_2__ {int cs_kerrs; } ;


 int CRYPTOCAP_F_CLEANUP ;
 int CRYPTO_DRIVER_LOCK () ;
 int CRYPTO_DRIVER_UNLOCK () ;
 struct crypto_ret_worker* CRYPTO_RETW (int ) ;
 scalar_t__ CRYPTO_RETW_EMPTY (struct crypto_ret_worker*) ;
 int CRYPTO_RETW_LOCK (struct crypto_ret_worker*) ;
 int CRYPTO_RETW_UNLOCK (struct crypto_ret_worker*) ;
 int KASSERT (int,char*) ;
 int TAILQ_INSERT_TAIL (int *,struct cryptkop*,int ) ;
 struct cryptocap* crypto_drivers ;
 size_t crypto_drivers_num ;
 int crypto_remove (struct cryptocap*) ;
 TYPE_1__ cryptostats ;
 int krp_next ;
 int wakeup_one (int *) ;

void
crypto_kdone(struct cryptkop *krp)
{
 struct crypto_ret_worker *ret_worker;
 struct cryptocap *cap;

 if (krp->krp_status != 0)
  cryptostats.cs_kerrs++;
 CRYPTO_DRIVER_LOCK();

 if (krp->krp_hid < crypto_drivers_num) {
  cap = &crypto_drivers[krp->krp_hid];
  KASSERT(cap->cc_koperations > 0, ("cc_koperations == 0"));
  cap->cc_koperations--;
  if (cap->cc_flags & CRYPTOCAP_F_CLEANUP)
   crypto_remove(cap);
 }
 CRYPTO_DRIVER_UNLOCK();

 ret_worker = CRYPTO_RETW(0);

 CRYPTO_RETW_LOCK(ret_worker);
 if (CRYPTO_RETW_EMPTY(ret_worker))
  wakeup_one(&ret_worker->crp_ret_q);
 TAILQ_INSERT_TAIL(&ret_worker->crp_ret_kq, krp, krp_next);
 CRYPTO_RETW_UNLOCK(ret_worker);
}
