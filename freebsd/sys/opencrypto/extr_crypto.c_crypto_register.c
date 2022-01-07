
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int16_t ;
struct cryptocap {int* cc_alg; int* cc_max_op_len; scalar_t__ cc_sessions; int cc_dev; } ;


 int CRYPTO_ALGORITHM_MAX ;
 int CRYPTO_ALGORITHM_MIN ;
 int CRYPTO_ALG_FLAG_SUPPORTED ;
 int CRYPTO_DRIVER_LOCK () ;
 int CRYPTO_DRIVER_UNLOCK () ;
 int EINVAL ;
 scalar_t__ bootverbose ;
 struct cryptocap* crypto_checkdriver (int) ;
 char* device_get_nameunit (int ) ;
 int printf (char*,char*,int,int,int) ;

int
crypto_register(u_int32_t driverid, int alg, u_int16_t maxoplen,
    u_int32_t flags)
{
 struct cryptocap *cap;
 int err;

 CRYPTO_DRIVER_LOCK();

 cap = crypto_checkdriver(driverid);

 if (cap != ((void*)0) &&
     (CRYPTO_ALGORITHM_MIN <= alg && alg <= CRYPTO_ALGORITHM_MAX)) {






  cap->cc_alg[alg] = flags | CRYPTO_ALG_FLAG_SUPPORTED;
  cap->cc_max_op_len[alg] = maxoplen;
  if (bootverbose)
   printf("crypto: %s registers alg %u flags %u maxoplen %u\n"
    , device_get_nameunit(cap->cc_dev)
    , alg
    , flags
    , maxoplen
   );
  cap->cc_sessions = 0;
  err = 0;
 } else
  err = EINVAL;

 CRYPTO_DRIVER_UNLOCK();
 return err;
}
