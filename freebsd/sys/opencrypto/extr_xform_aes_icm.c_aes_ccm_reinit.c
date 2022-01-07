
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct aes_icm_ctx {int* ac_block; } ;
typedef scalar_t__ caddr_t ;


 int AESICM_BLOCKSIZE ;
 int AES_CCM_IV_LEN ;
 int bcopy (int const*,int*,int) ;
 int bzero (int*,int) ;

__attribute__((used)) static void
aes_ccm_reinit(caddr_t key, const u_int8_t *iv)
{
 struct aes_icm_ctx *ctx;

 ctx = (struct aes_icm_ctx*)key;


 bzero(ctx->ac_block, sizeof(ctx->ac_block));

 ctx->ac_block[0] = (15 - AES_CCM_IV_LEN) - 1;
 bcopy(iv, ctx->ac_block+1, AES_CCM_IV_LEN);
 ctx->ac_block[AESICM_BLOCKSIZE - 1] = 1;
}
