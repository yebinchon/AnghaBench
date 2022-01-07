
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct aes_xts_ctx {int key2; int key1; } ;


 int EINVAL ;
 int ENOMEM ;
 int * KMALLOC (int,int ,int) ;
 int M_CRYPTO_DATA ;
 int M_NOWAIT ;
 int M_ZERO ;
 int rijndael_set_key (int *,int const*,int) ;

__attribute__((used)) static int
aes_xts_setkey(u_int8_t **sched, const u_int8_t *key, int len)
{
 struct aes_xts_ctx *ctx;

 if (len != 32 && len != 64)
  return EINVAL;

 *sched = KMALLOC(sizeof(struct aes_xts_ctx), M_CRYPTO_DATA,
     M_NOWAIT | M_ZERO);
 if (*sched == ((void*)0))
  return ENOMEM;
 ctx = (struct aes_xts_ctx *)*sched;

 rijndael_set_key(&ctx->key1, key, len * 4);
 rijndael_set_key(&ctx->key2, key + (len / 2), len * 4);

 return 0;
}
