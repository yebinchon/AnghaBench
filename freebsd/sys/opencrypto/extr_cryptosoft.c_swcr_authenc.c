
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int authDataLength; int cryptDataLength; } ;
union authctx {TYPE_1__ aes_cbc_mac_ctx; } ;
typedef int uint32_t ;
typedef union authctx u_char ;
struct swcr_session {struct swcr_data* swcr_algorithms; } ;
struct swcr_data {scalar_t__ sw_alg; int sw_kschedule; int sw_ictx; struct auth_hash* sw_axf; struct enc_xform* sw_exf; } ;
struct enc_xform {int (* decrypt ) (int ,union authctx*) ;int (* reinit ) (int ,union authctx*) ;int (* encrypt_multi ) (int ,union authctx*,int) ;int (* encrypt ) (int ,union authctx*) ;} ;
struct cryptop {int crp_flags; struct cryptodesc* crp_desc; int crp_session; int crp_buf; } ;
struct cryptodesc {scalar_t__ crd_alg; int crd_flags; scalar_t__ crd_klen; int crd_len; scalar_t__ crd_inject; scalar_t__ crd_skip; int crd_iv; struct cryptodesc* crd_next; } ;
struct auth_hash {int ctxsize; int blocksize; int hashsize; int (* Final ) (union authctx*,union authctx*) ;int (* Update ) (union authctx*,union authctx*,int) ;int (* Reinit ) (union authctx*,union authctx*,int) ;} ;
typedef int caddr_t ;
typedef int blkbuf ;


 int AALG_MAX_RESULT_LEN ;
 int AES_CCM_IV_LEN ;
 int CRD_F_ENCRYPT ;
 int CRD_F_IV_EXPLICIT ;
 int CRD_F_IV_PRESENT ;







 int EALG_MAX_BLOCK_LEN ;
 int EBADMSG ;
 int EINVAL ;
 int KASSERT (int ,char*) ;
 int MIN (int,int) ;
 int arc4rand (union authctx*,int,int ) ;
 int bcopy (int ,union authctx*,int) ;
 int bzero (union authctx*,int) ;
 int crypto_copyback (int ,int ,scalar_t__,int,union authctx*) ;
 int crypto_copydata (int ,int ,scalar_t__,int,union authctx*) ;
 struct swcr_session* crypto_get_driver_session (int ) ;
 int howmany (int,int) ;
 int htobe32 (int) ;
 int nitems (struct swcr_data*) ;
 int rounddown (int,int) ;
 int stub1 (union authctx*,union authctx*,int) ;
 int stub10 (union authctx*,union authctx*,int) ;
 int stub11 (union authctx*,union authctx*) ;
 int stub12 (int ,union authctx*) ;
 int stub13 (int ,union authctx*) ;
 int stub2 (union authctx*,union authctx*,int) ;
 int stub3 (int ,union authctx*) ;
 int stub4 (union authctx*,union authctx*,int) ;
 int stub5 (int ,union authctx*,int) ;
 int stub6 (int ,union authctx*) ;
 int stub7 (union authctx*,union authctx*,int) ;
 int stub8 (int ,union authctx*) ;
 int stub9 (union authctx*,union authctx*,int) ;
 int timingsafe_bcmp (union authctx*,union authctx*,int) ;

__attribute__((used)) static int
swcr_authenc(struct cryptop *crp)
{
 uint32_t blkbuf[howmany(EALG_MAX_BLOCK_LEN, sizeof(uint32_t))];
 u_char *blk = (u_char *)blkbuf;
 u_char aalg[AALG_MAX_RESULT_LEN];
 u_char uaalg[AALG_MAX_RESULT_LEN];
 u_char iv[EALG_MAX_BLOCK_LEN];
 union authctx ctx;
 struct swcr_session *ses;
 struct cryptodesc *crd, *crda = ((void*)0), *crde = ((void*)0);
 struct swcr_data *sw, *swa, *swe = ((void*)0);
 struct auth_hash *axf = ((void*)0);
 struct enc_xform *exf = ((void*)0);
 caddr_t buf = (caddr_t)crp->crp_buf;
 uint32_t *blkp;
 int aadlen, blksz, i, ivlen, len, iskip, oskip, r;
 int isccm = 0;

 ivlen = blksz = iskip = oskip = 0;

 ses = crypto_get_driver_session(crp->crp_session);

 for (crd = crp->crp_desc; crd; crd = crd->crd_next) {
  for (i = 0; i < nitems(ses->swcr_algorithms) &&
      ses->swcr_algorithms[i].sw_alg != crd->crd_alg; i++)
   ;
  if (i == nitems(ses->swcr_algorithms))
   return (EINVAL);

  sw = &ses->swcr_algorithms[i];
  switch (sw->sw_alg) {
  case 131:
  case 129:
  case 128:
   swe = sw;
   crde = crd;
   exf = swe->sw_exf;

   ivlen = AES_CCM_IV_LEN;
   break;
  case 130:
   isccm = 1;

  case 134:
  case 133:
  case 132:
   swa = sw;
   crda = crd;
   axf = swa->sw_axf;
   if (swa->sw_ictx == 0)
    return (EINVAL);
   bcopy(swa->sw_ictx, &ctx, axf->ctxsize);
   blksz = axf->blocksize;
   break;
  default:
   return (EINVAL);
  }
 }
 if (crde == ((void*)0) || crda == ((void*)0))
  return (EINVAL);





 if (crde->crd_alg == 129) {
  switch (crda->crd_alg) {
  case 134:
  case 133:
  case 132:
   break;
  default:
   return (EINVAL);
  }
 } else if (crde->crd_alg == 131 &&
     crda->crd_alg != 130)
  return (EINVAL);

 if ((crde->crd_alg == 129 ||
      crde->crd_alg == 131) &&
     (crde->crd_flags & CRD_F_IV_EXPLICIT) == 0)
  return (EINVAL);

 if (crde->crd_klen != crda->crd_klen)
  return (EINVAL);


 if (crde->crd_flags & CRD_F_ENCRYPT) {

  if (crde->crd_flags & CRD_F_IV_EXPLICIT)
   bcopy(crde->crd_iv, iv, ivlen);
  else
   arc4rand(iv, ivlen, 0);


  if (!(crde->crd_flags & CRD_F_IV_PRESENT))
   crypto_copyback(crp->crp_flags, buf, crde->crd_inject,
       ivlen, iv);

 } else {

  if (crde->crd_flags & CRD_F_IV_EXPLICIT)
   bcopy(crde->crd_iv, iv, ivlen);
  else {

   crypto_copydata(crp->crp_flags, buf, crde->crd_inject,
       ivlen, iv);
  }
 }

 if (swa->sw_alg == 130) {





  ctx.aes_cbc_mac_ctx.authDataLength = crda->crd_len;
  ctx.aes_cbc_mac_ctx.cryptDataLength = crde->crd_len;
 }

 if (axf->Reinit)
  axf->Reinit(&ctx, iv, ivlen);


 aadlen = crda->crd_len;

 for (i = iskip; i < crda->crd_len; i += blksz) {
  len = MIN(crda->crd_len - i, blksz - oskip);
  crypto_copydata(crp->crp_flags, buf, crda->crd_skip + i, len,
      blk + oskip);
  bzero(blk + len + oskip, blksz - len - oskip);
  axf->Update(&ctx, blk, blksz);
  oskip = 0;
 }

 if (exf->reinit)
  exf->reinit(swe->sw_kschedule, iv);


 for (i = 0; i < crde->crd_len; i += len) {
  if (exf->encrypt_multi != ((void*)0)) {
   len = rounddown(crde->crd_len - i, blksz);
   if (len == 0)
    len = blksz;
   else
    len = MIN(len, sizeof(blkbuf));
  } else
   len = blksz;
  len = MIN(crde->crd_len - i, len);
  if (len < blksz)
   bzero(blk, blksz);
  crypto_copydata(crp->crp_flags, buf, crde->crd_skip + i, len,
      blk);






  if (crde->crd_flags & CRD_F_ENCRYPT) {
   if (isccm)
    axf->Update(&ctx, blk, len);
   if (exf->encrypt_multi != ((void*)0))
    exf->encrypt_multi(swe->sw_kschedule, blk,
        len);
   else
    exf->encrypt(swe->sw_kschedule, blk);
   if (!isccm)
    axf->Update(&ctx, blk, len);
   crypto_copyback(crp->crp_flags, buf,
       crde->crd_skip + i, len, blk);
  } else {
   if (isccm) {
    KASSERT(exf->encrypt_multi == ((void*)0),
        ("assume CCM is single-block only"));
    exf->decrypt(swe->sw_kschedule, blk);
   }
   axf->Update(&ctx, blk, len);
  }
 }


 switch (crda->crd_alg) {
  case 134:
  case 133:
  case 132:

   bzero(blk, blksz);
   blkp = (uint32_t *)blk + 1;
   *blkp = htobe32(aadlen * 8);
   blkp = (uint32_t *)blk + 3;
   *blkp = htobe32(crde->crd_len * 8);
   axf->Update(&ctx, blk, blksz);
   break;
 }


 axf->Final(aalg, &ctx);


 if (!(crde->crd_flags & CRD_F_ENCRYPT)) {
  crypto_copydata(crp->crp_flags, buf, crda->crd_inject,
      axf->hashsize, uaalg);

  r = timingsafe_bcmp(aalg, uaalg, axf->hashsize);
  if (r == 0) {

   if (isccm) {
    KASSERT(exf->reinit != ((void*)0),
        ("AES-CCM reinit function must be set"));
    exf->reinit(swe->sw_kschedule, iv);
   }
   for (i = 0; i < crde->crd_len; i += blksz) {
    len = MIN(crde->crd_len - i, blksz);
    if (len < blksz)
     bzero(blk, blksz);
    crypto_copydata(crp->crp_flags, buf,
        crde->crd_skip + i, len, blk);
    exf->decrypt(swe->sw_kschedule, blk);
    crypto_copyback(crp->crp_flags, buf,
        crde->crd_skip + i, len, blk);
   }
  } else
   return (EBADMSG);
 } else {

  crypto_copyback(crp->crp_flags, buf, crda->crd_inject,
      axf->hashsize, aalg);
 }

 return (0);
}
