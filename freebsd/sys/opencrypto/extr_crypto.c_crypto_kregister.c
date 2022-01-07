
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct cryptocap {int* cc_kalg; int cc_dev; } ;


 int CRK_ALGORITHM_MAX ;
 int CRK_ALGORITM_MIN ;
 int CRYPTO_ALG_FLAG_SUPPORTED ;
 int CRYPTO_DRIVER_LOCK () ;
 int CRYPTO_DRIVER_UNLOCK () ;
 int EINVAL ;
 scalar_t__ bootverbose ;
 struct cryptocap* crypto_checkdriver (int) ;
 char* device_get_nameunit (int ) ;
 int printf (char*,char*,int,int) ;

int
crypto_kregister(u_int32_t driverid, int kalg, u_int32_t flags)
{
 struct cryptocap *cap;
 int err;

 CRYPTO_DRIVER_LOCK();

 cap = crypto_checkdriver(driverid);
 if (cap != ((void*)0) &&
     (CRK_ALGORITM_MIN <= kalg && kalg <= CRK_ALGORITHM_MAX)) {






  cap->cc_kalg[kalg] = flags | CRYPTO_ALG_FLAG_SUPPORTED;
  if (bootverbose)
   printf("crypto: %s registers key alg %u flags %u\n"
    , device_get_nameunit(cap->cc_dev)
    , kalg
    , flags
   );
  err = 0;
 } else
  err = EINVAL;

 CRYPTO_DRIVER_UNLOCK();
 return err;
}
