
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct aes_icm_ctx {int ac_ek; int ac_nr; } ;


 int EINVAL ;
 int ENOMEM ;
 int * KMALLOC (int,int ,int) ;
 int M_CRYPTO_DATA ;
 int M_NOWAIT ;
 int M_ZERO ;
 int rijndaelKeySetupEnc (int ,int const*,int) ;

__attribute__((used)) static int
aes_icm_setkey(u_int8_t **sched, const u_int8_t *key, int len)
{
 struct aes_icm_ctx *ctx;

 if (len != 16 && len != 24 && len != 32)
  return EINVAL;

 *sched = KMALLOC(sizeof(struct aes_icm_ctx), M_CRYPTO_DATA,
     M_NOWAIT | M_ZERO);
 if (*sched == ((void*)0))
  return ENOMEM;

 ctx = (struct aes_icm_ctx *)*sched;
 ctx->ac_nr = rijndaelKeySetupEnc(ctx->ac_ek, key, len * 8);
 return 0;
}
