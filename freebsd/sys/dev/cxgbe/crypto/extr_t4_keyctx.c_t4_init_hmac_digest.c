
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union authctx {int dummy; } authctx ;
typedef size_t u_int ;
struct auth_hash {int blocksize; int hashsize; int type; int (* Update ) (union authctx*,char*,int) ;int (* Init ) (union authctx*) ;int (* Final ) (char*,union authctx*) ;} ;


 char HMAC_IPAD_VAL ;
 char HMAC_OPAD_VAL ;
 int SHA2_512_BLOCK_LEN ;
 int memcpy (char*,char*,int) ;
 int memset (char*,int ,int) ;
 int roundup2 (size_t,int) ;
 int stub1 (union authctx*) ;
 int stub2 (union authctx*,char*,int) ;
 int stub3 (char*,union authctx*) ;
 int stub4 (union authctx*) ;
 int stub5 (union authctx*,char*,int) ;
 int stub6 (union authctx*) ;
 int stub7 (union authctx*,char*,int) ;
 int t4_copy_partial_hash (int ,union authctx*,char*) ;

void
t4_init_hmac_digest(struct auth_hash *axf, u_int partial_digest_len,
    char *key, int klen, char *dst)
{
 union authctx auth_ctx;
 char ipad[SHA2_512_BLOCK_LEN], opad[SHA2_512_BLOCK_LEN];
 u_int i;





 klen /= 8;
 if (klen > axf->blocksize) {
  axf->Init(&auth_ctx);
  axf->Update(&auth_ctx, key, klen);
  axf->Final(ipad, &auth_ctx);
  klen = axf->hashsize;
 } else
  memcpy(ipad, key, klen);

 memset(ipad + klen, 0, axf->blocksize - klen);
 memcpy(opad, ipad, axf->blocksize);

 for (i = 0; i < axf->blocksize; i++) {
  ipad[i] ^= HMAC_IPAD_VAL;
  opad[i] ^= HMAC_OPAD_VAL;
 }





 axf->Init(&auth_ctx);
 axf->Update(&auth_ctx, ipad, axf->blocksize);
 t4_copy_partial_hash(axf->type, &auth_ctx, dst);

 dst += roundup2(partial_digest_len, 16);
 axf->Init(&auth_ctx);
 axf->Update(&auth_ctx, opad, axf->blocksize);
 t4_copy_partial_hash(axf->type, &auth_ctx, dst);
}
