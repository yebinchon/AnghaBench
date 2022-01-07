
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct enc_xform {int (* setkey ) (int **,int ,int ) ;int (* zerokey ) (int **) ;int (* decrypt ) (int *,char*) ;int (* encrypt ) (int *,char*) ;int (* reinit ) (int *,char*) ;} ;
struct cryptop {int crp_etype; int crp_buf; int crp_flags; } ;
struct cryptodesc {int crd_flags; int crd_len; scalar_t__ crd_skip; scalar_t__ crd_inject; int crd_iv; } ;
struct TYPE_2__ {int key_len; int enckey; } ;
struct ccr_session {TYPE_1__ blkcipher; } ;
struct auth_hash {int ctxsize; int (* Final ) (char*,void*) ;int (* Update ) (void*,char*,int) ;int (* Reinit ) (void*,char*,int) ;int (* Setkey ) (void*,int ,int ) ;int (* Init ) (void*) ;} ;
typedef int iv ;
typedef int digest2 ;
typedef int digest ;
typedef int block ;


 int AES_BLOCK_LEN ;
 int CRD_F_ENCRYPT ;
 int CRD_F_IV_EXPLICIT ;
 int CRD_F_IV_PRESENT ;
 int EBADMSG ;
 int EINVAL ;
 int ENOMEM ;
 int GMAC_BLOCK_LEN ;
 int GMAC_DIGEST_LEN ;
 int M_CCR ;
 int M_NOWAIT ;
 int arc4rand (char*,int,int ) ;
 struct auth_hash auth_hash_nist_gmac_aes_128 ;
 struct auth_hash auth_hash_nist_gmac_aes_192 ;
 struct auth_hash auth_hash_nist_gmac_aes_256 ;
 int bzero (char*,int) ;
 int crypto_copyback (int ,int ,scalar_t__,int,char*) ;
 int crypto_copydata (int ,int ,scalar_t__,int,char*) ;
 int crypto_done (struct cryptop*) ;
 struct enc_xform enc_xform_aes_nist_gcm ;
 int free (void*,int ) ;
 int htobe32 (int) ;
 int imin (int,int) ;
 void* malloc (int ,int ,int ) ;
 int memcpy (char*,int ,int) ;
 int memset (void*,int ,int ) ;
 int stub1 (void*) ;
 int stub10 (void*,char*,int) ;
 int stub11 (char*,void*) ;
 int stub12 (int *,char*) ;
 int stub13 (int **) ;
 int stub2 (void*,int ,int ) ;
 int stub3 (int **,int ,int ) ;
 int stub4 (void*,char*,int) ;
 int stub5 (void*,char*,int) ;
 int stub6 (int *,char*) ;
 int stub7 (int *,char*) ;
 int stub8 (void*,char*,int) ;
 int stub9 (void*,char*,int) ;
 scalar_t__ timingsafe_bcmp (char*,char*,int) ;

__attribute__((used)) static void
ccr_gcm_soft(struct ccr_session *s, struct cryptop *crp,
    struct cryptodesc *crda, struct cryptodesc *crde)
{
 struct auth_hash *axf;
 struct enc_xform *exf;
 void *auth_ctx;
 uint8_t *kschedule;
 char block[GMAC_BLOCK_LEN];
 char digest[GMAC_DIGEST_LEN];
 char iv[AES_BLOCK_LEN];
 int error, i, len;

 auth_ctx = ((void*)0);
 kschedule = ((void*)0);


 switch (s->blkcipher.key_len) {
 case 16:
  axf = &auth_hash_nist_gmac_aes_128;
  break;
 case 24:
  axf = &auth_hash_nist_gmac_aes_192;
  break;
 case 32:
  axf = &auth_hash_nist_gmac_aes_256;
  break;
 default:
  error = EINVAL;
  goto out;
 }
 auth_ctx = malloc(axf->ctxsize, M_CCR, M_NOWAIT);
 if (auth_ctx == ((void*)0)) {
  error = ENOMEM;
  goto out;
 }
 axf->Init(auth_ctx);
 axf->Setkey(auth_ctx, s->blkcipher.enckey, s->blkcipher.key_len);


 exf = &enc_xform_aes_nist_gcm;
 error = exf->setkey(&kschedule, s->blkcipher.enckey,
     s->blkcipher.key_len);
 if (error)
  goto out;





 if (crde->crd_flags & CRD_F_ENCRYPT) {
  if (crde->crd_flags & CRD_F_IV_EXPLICIT)
   memcpy(iv, crde->crd_iv, 12);
  else
   arc4rand(iv, 12, 0);
  if ((crde->crd_flags & CRD_F_IV_PRESENT) == 0)
   crypto_copyback(crp->crp_flags, crp->crp_buf,
       crde->crd_inject, 12, iv);
 } else {
  if (crde->crd_flags & CRD_F_IV_EXPLICIT)
   memcpy(iv, crde->crd_iv, 12);
  else
   crypto_copydata(crp->crp_flags, crp->crp_buf,
       crde->crd_inject, 12, iv);
 }
 *(uint32_t *)&iv[12] = htobe32(1);

 axf->Reinit(auth_ctx, iv, sizeof(iv));


 for (i = 0; i < crda->crd_len; i += sizeof(block)) {
  len = imin(crda->crd_len - i, sizeof(block));
  crypto_copydata(crp->crp_flags, crp->crp_buf, crda->crd_skip +
      i, len, block);
  bzero(block + len, sizeof(block) - len);
  axf->Update(auth_ctx, block, sizeof(block));
 }

 exf->reinit(kschedule, iv);


 for (i = 0; i < crde->crd_len; i += sizeof(block)) {
  len = imin(crde->crd_len - i, sizeof(block));
  crypto_copydata(crp->crp_flags, crp->crp_buf, crde->crd_skip +
      i, len, block);
  bzero(block + len, sizeof(block) - len);
  if (crde->crd_flags & CRD_F_ENCRYPT) {
   exf->encrypt(kschedule, block);
   axf->Update(auth_ctx, block, len);
   crypto_copyback(crp->crp_flags, crp->crp_buf,
       crde->crd_skip + i, len, block);
  } else {
   axf->Update(auth_ctx, block, len);
  }
 }


 bzero(block, sizeof(block));
 ((uint32_t *)block)[1] = htobe32(crda->crd_len * 8);
 ((uint32_t *)block)[3] = htobe32(crde->crd_len * 8);
 axf->Update(auth_ctx, block, sizeof(block));


 axf->Final(digest, auth_ctx);


 if (crde->crd_flags & CRD_F_ENCRYPT) {
  crypto_copyback(crp->crp_flags, crp->crp_buf, crda->crd_inject,
      sizeof(digest), digest);
  error = 0;
 } else {
  char digest2[GMAC_DIGEST_LEN];

  crypto_copydata(crp->crp_flags, crp->crp_buf, crda->crd_inject,
      sizeof(digest2), digest2);
  if (timingsafe_bcmp(digest, digest2, sizeof(digest)) == 0) {
   error = 0;


   for (i = 0; i < crde->crd_len; i += sizeof(block)) {
    len = imin(crde->crd_len - i, sizeof(block));
    crypto_copydata(crp->crp_flags, crp->crp_buf,
        crde->crd_skip + i, len, block);
    bzero(block + len, sizeof(block) - len);
    exf->decrypt(kschedule, block);
    crypto_copyback(crp->crp_flags, crp->crp_buf,
        crde->crd_skip + i, len, block);
   }
  } else
   error = EBADMSG;
 }

 exf->zerokey(&kschedule);
out:
 if (auth_ctx != ((void*)0)) {
  memset(auth_ctx, 0, axf->ctxsize);
  free(auth_ctx, M_CCR);
 }
 crp->crp_etype = error;
 crypto_done(crp);
}
