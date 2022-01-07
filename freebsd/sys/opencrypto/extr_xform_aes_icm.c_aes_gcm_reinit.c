
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct aes_icm_ctx {int* ac_block; } ;
typedef scalar_t__ caddr_t ;


 int AESICM_BLOCKSIZE ;
 int aes_icm_reinit (scalar_t__,int const*) ;
 int bzero (int*,int) ;

__attribute__((used)) static void
aes_gcm_reinit(caddr_t key, const u_int8_t *iv)
{
 struct aes_icm_ctx *ctx;

 aes_icm_reinit(key, iv);

 ctx = (struct aes_icm_ctx *)key;

 bzero(&ctx->ac_block[AESICM_BLOCKSIZE - 4], 4);
 ctx->ac_block[AESICM_BLOCKSIZE - 1] = 2;
}
