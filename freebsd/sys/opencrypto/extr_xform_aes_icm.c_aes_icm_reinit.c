
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct aes_icm_ctx {int ac_block; } ;
typedef scalar_t__ caddr_t ;


 int AESICM_BLOCKSIZE ;
 int bcopy (int const*,int ,int ) ;

__attribute__((used)) static void
aes_icm_reinit(caddr_t key, const u_int8_t *iv)
{
 struct aes_icm_ctx *ctx;

 ctx = (struct aes_icm_ctx *)key;
 bcopy(iv, ctx->ac_block, AESICM_BLOCKSIZE);
}
