
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int rijndael_ctx ;


 int EINVAL ;
 int ENOMEM ;
 int * KMALLOC (int,int ,int) ;
 int M_CRYPTO_DATA ;
 int M_NOWAIT ;
 int M_ZERO ;
 int rijndael_set_key (int *,int const*,int) ;

__attribute__((used)) static int
rijndael128_setkey(u_int8_t **sched, const u_int8_t *key, int len)
{
 int err;

 if (len != 16 && len != 24 && len != 32)
  return (EINVAL);
 *sched = KMALLOC(sizeof(rijndael_ctx), M_CRYPTO_DATA,
     M_NOWAIT|M_ZERO);
 if (*sched != ((void*)0)) {
  rijndael_set_key((rijndael_ctx *) *sched, key,
      len * 8);
  err = 0;
 } else
  err = ENOMEM;
 return err;
}
