
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int cast_key ;


 int ENOMEM ;
 int * KMALLOC (int,int ,int) ;
 int M_CRYPTO_DATA ;
 int M_NOWAIT ;
 int M_ZERO ;
 int cast_setkey (int *,int const*,int) ;

__attribute__((used)) static int
cast5_setkey(u_int8_t **sched, const u_int8_t *key, int len)
{
 int err;

 *sched = KMALLOC(sizeof(cast_key), M_CRYPTO_DATA, M_NOWAIT|M_ZERO);
 if (*sched != ((void*)0)) {
  cast_setkey((cast_key *)*sched, key, len);
  err = 0;
 } else
  err = ENOMEM;
 return err;
}
