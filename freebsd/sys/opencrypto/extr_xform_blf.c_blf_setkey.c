
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int BF_KEY ;


 int BF_set_key (int *,int,int const*) ;
 int ENOMEM ;
 int * KMALLOC (int,int ,int) ;
 int M_CRYPTO_DATA ;
 int M_NOWAIT ;
 int M_ZERO ;

__attribute__((used)) static int
blf_setkey(u_int8_t **sched, const u_int8_t *key, int len)
{
 int err;

 *sched = KMALLOC(sizeof(BF_KEY),
  M_CRYPTO_DATA, M_NOWAIT|M_ZERO);
 if (*sched != ((void*)0)) {
  BF_set_key((BF_KEY *) *sched, len, key);
  err = 0;
 } else
  err = ENOMEM;
 return err;
}
