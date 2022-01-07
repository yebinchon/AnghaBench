
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct aes_icm_ctx {scalar_t__* ac_block; int ac_nr; int ac_ek; } ;
typedef int keystream ;
typedef scalar_t__ caddr_t ;


 int AESICM_BLOCKSIZE ;
 int explicit_bzero (int *,int) ;
 int rijndaelEncrypt (int ,int ,scalar_t__*,int *) ;

__attribute__((used)) static void
aes_icm_crypt(caddr_t key, u_int8_t *data)
{
 struct aes_icm_ctx *ctx;
 u_int8_t keystream[AESICM_BLOCKSIZE];
 int i;

 ctx = (struct aes_icm_ctx *)key;
 rijndaelEncrypt(ctx->ac_ek, ctx->ac_nr, ctx->ac_block, keystream);
 for (i = 0; i < AESICM_BLOCKSIZE; i++)
  data[i] ^= keystream[i];
 explicit_bzero(keystream, sizeof(keystream));


 for (i = AESICM_BLOCKSIZE - 1;
      i >= 0; i--)
  if (++ctx->ac_block[i])
   break;
}
