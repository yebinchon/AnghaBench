
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct cryptocap {int dummy; } ;


 int CRYPTO_DRIVER_LOCK () ;
 int CRYPTO_DRIVER_UNLOCK () ;
 int EINVAL ;
 struct cryptocap* crypto_checkdriver (int ) ;
 int driver_finis (struct cryptocap*) ;

int
crypto_unregister_all(u_int32_t driverid)
{
 struct cryptocap *cap;
 int err;

 CRYPTO_DRIVER_LOCK();
 cap = crypto_checkdriver(driverid);
 if (cap != ((void*)0)) {
  driver_finis(cap);
  err = 0;
 } else
  err = EINVAL;
 CRYPTO_DRIVER_UNLOCK();

 return err;
}
