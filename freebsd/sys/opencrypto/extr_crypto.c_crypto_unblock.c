
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct cryptocap {scalar_t__ cc_kqblocked; scalar_t__ cc_qblocked; } ;


 int CRYPTO_ASYMQ ;
 int CRYPTO_Q_LOCK () ;
 int CRYPTO_Q_UNLOCK () ;
 int CRYPTO_SYMQ ;
 int EINVAL ;
 int crp_q ;
 scalar_t__ crp_sleep ;
 struct cryptocap* crypto_checkdriver (int ) ;
 int wakeup_one (int *) ;

int
crypto_unblock(u_int32_t driverid, int what)
{
 struct cryptocap *cap;
 int err;

 CRYPTO_Q_LOCK();
 cap = crypto_checkdriver(driverid);
 if (cap != ((void*)0)) {
  if (what & CRYPTO_SYMQ)
   cap->cc_qblocked = 0;
  if (what & CRYPTO_ASYMQ)
   cap->cc_kqblocked = 0;
  if (crp_sleep)
   wakeup_one(&crp_q);
  err = 0;
 } else
  err = EINVAL;
 CRYPTO_Q_UNLOCK();

 return err;
}
