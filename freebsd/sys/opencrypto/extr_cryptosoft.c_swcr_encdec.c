
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char uint8_t ;
struct uio {int uio_iovcnt; struct iovec* uio_iov; } ;
struct swcr_data {int sw_kschedule; struct enc_xform* sw_exf; } ;
struct mbuf {int dummy; } ;
struct iovec {int iov_len; scalar_t__ iov_base; } ;
struct enc_xform {int blocksize; int ivsize; int (* setkey ) (int *,int ,int) ;int (* decrypt ) (int ,unsigned char*) ;int (* encrypt ) (int ,unsigned char*) ;int (* decrypt_multi ) (int ,unsigned char*,size_t) ;int (* encrypt_multi ) (int ,unsigned char*,size_t) ;int (* reinit ) (int ,unsigned char*) ;int (* zerokey ) (int *) ;} ;
struct cryptodesc {int crd_len; scalar_t__ crd_alg; int crd_flags; unsigned char* crd_iv; int crd_klen; int crd_skip; int crd_key; int crd_inject; } ;
typedef scalar_t__ caddr_t ;


 int CRD_F_ENCRYPT ;
 int CRD_F_IV_EXPLICIT ;
 int CRD_F_IV_PRESENT ;
 int CRD_F_KEY_EXPLICIT ;
 scalar_t__ CRYPTO_AES_ICM ;
 int CRYPTO_F_IMBUF ;
 int CRYPTO_F_IOV ;
 int EALG_MAX_BLOCK_LEN ;
 int EINVAL ;
 size_t MIN (size_t,size_t) ;
 int M_CRYPTO_DATA ;
 int arc4rand (unsigned char*,int,int ) ;
 int bcopy (unsigned char*,unsigned char*,int) ;
 int crypto_copyback (int,scalar_t__,int ,int,unsigned char*) ;
 int crypto_copydata (int,scalar_t__,int ,int,unsigned char*) ;
 int crypto_mbuftoiov (struct mbuf*,struct iovec**,int*,int*) ;
 int cuio_copyback (struct uio*,int,int,unsigned char*) ;
 int cuio_copydata (struct uio*,int,int,unsigned char*) ;
 int cuio_getptr (struct uio*,int,int*) ;
 int free (struct iovec*,int ) ;
 int nitems (struct iovec*) ;
 size_t rounddown (size_t,int) ;
 int stub1 (int *) ;
 int stub10 (int ,unsigned char*) ;
 int stub11 (int ,unsigned char*,size_t) ;
 int stub12 (int ,unsigned char*) ;
 int stub13 (int ,unsigned char*) ;
 int stub2 (int *,int ,int) ;
 int stub3 (int ,unsigned char*) ;
 int stub4 (int ,unsigned char*) ;
 int stub5 (int ,unsigned char*) ;
 int stub6 (int ,unsigned char*) ;
 int stub7 (int ,unsigned char*) ;
 int stub8 (int ,unsigned char*) ;
 int stub9 (int ,unsigned char*,size_t) ;

__attribute__((used)) static int
swcr_encdec(struct cryptodesc *crd, struct swcr_data *sw, caddr_t buf,
    int flags)
{
 unsigned char iv[EALG_MAX_BLOCK_LEN], blk[EALG_MAX_BLOCK_LEN];
 unsigned char *ivp, *nivp, iv2[EALG_MAX_BLOCK_LEN];
 struct enc_xform *exf;
 int i, j, k, blks, ind, count, ivlen;
 struct uio *uio, uiolcl;
 struct iovec iovlcl[4];
 struct iovec *iov;
 int iovcnt, iovalloc;
 int error;

 error = 0;

 exf = sw->sw_exf;
 blks = exf->blocksize;
 ivlen = exf->ivsize;


 if (crd->crd_len % blks)
  return EINVAL;

 if (crd->crd_alg == CRYPTO_AES_ICM &&
     (crd->crd_flags & CRD_F_IV_EXPLICIT) == 0)
  return (EINVAL);


 if (crd->crd_flags & CRD_F_ENCRYPT) {

  if (crd->crd_flags & CRD_F_IV_EXPLICIT)
   bcopy(crd->crd_iv, iv, ivlen);
  else
   arc4rand(iv, ivlen, 0);


  if (!(crd->crd_flags & CRD_F_IV_PRESENT))
   crypto_copyback(flags, buf, crd->crd_inject, ivlen, iv);

 } else {

  if (crd->crd_flags & CRD_F_IV_EXPLICIT)
   bcopy(crd->crd_iv, iv, ivlen);
  else {

   crypto_copydata(flags, buf, crd->crd_inject, ivlen, iv);
  }
 }

 if (crd->crd_flags & CRD_F_KEY_EXPLICIT) {
  int error;

  if (sw->sw_kschedule)
   exf->zerokey(&(sw->sw_kschedule));

  error = exf->setkey(&sw->sw_kschedule,
    crd->crd_key, crd->crd_klen / 8);
  if (error)
   return (error);
 }

 iov = iovlcl;
 iovcnt = nitems(iovlcl);
 iovalloc = 0;
 uio = &uiolcl;
 if ((flags & CRYPTO_F_IMBUF) != 0) {
  error = crypto_mbuftoiov((struct mbuf *)buf, &iov, &iovcnt,
      &iovalloc);
  if (error)
   return (error);
  uio->uio_iov = iov;
  uio->uio_iovcnt = iovcnt;
 } else if ((flags & CRYPTO_F_IOV) != 0)
  uio = (struct uio *)buf;
 else {
  iov[0].iov_base = buf;
  iov[0].iov_len = crd->crd_skip + crd->crd_len;
  uio->uio_iov = iov;
  uio->uio_iovcnt = 1;
 }

 ivp = iv;

 if (exf->reinit) {




  exf->reinit(sw->sw_kschedule, iv);
 }

 count = crd->crd_skip;
 ind = cuio_getptr(uio, count, &k);
 if (ind == -1) {
  error = EINVAL;
  goto out;
 }

 i = crd->crd_len;

 while (i > 0) {




  if (uio->uio_iov[ind].iov_len < k + blks &&
      uio->uio_iov[ind].iov_len != k) {
   cuio_copydata(uio, count, blks, blk);


   if (exf->reinit) {
    if (crd->crd_flags & CRD_F_ENCRYPT) {
     exf->encrypt(sw->sw_kschedule,
         blk);
    } else {
     exf->decrypt(sw->sw_kschedule,
         blk);
    }
   } else if (crd->crd_flags & CRD_F_ENCRYPT) {

    for (j = 0; j < blks; j++)
     blk[j] ^= ivp[j];

    exf->encrypt(sw->sw_kschedule, blk);





    bcopy(blk, iv, blks);
    ivp = iv;
   } else {




    nivp = (ivp == iv) ? iv2 : iv;
    bcopy(blk, nivp, blks);

    exf->decrypt(sw->sw_kschedule, blk);


    for (j = 0; j < blks; j++)
     blk[j] ^= ivp[j];

    ivp = nivp;
   }


   cuio_copyback(uio, count, blks, blk);

   count += blks;


   ind = cuio_getptr(uio, count, &k);
   if (ind == -1) {
    error = EINVAL;
    goto out;
   }

   i -= blks;


   if (i == 0)
    break;
  }

  while (uio->uio_iov[ind].iov_len >= k + blks && i > 0) {
   uint8_t *idat;
   size_t nb, rem;

   nb = blks;
   rem = MIN((size_t)i,
       uio->uio_iov[ind].iov_len - (size_t)k);
   idat = (uint8_t *)uio->uio_iov[ind].iov_base + k;

   if (exf->reinit) {
    if ((crd->crd_flags & CRD_F_ENCRYPT) != 0 &&
        exf->encrypt_multi == ((void*)0))
     exf->encrypt(sw->sw_kschedule,
         idat);
    else if ((crd->crd_flags & CRD_F_ENCRYPT) != 0) {
     nb = rounddown(rem, blks);
     exf->encrypt_multi(sw->sw_kschedule,
         idat, nb);
    } else if (exf->decrypt_multi == ((void*)0))
     exf->decrypt(sw->sw_kschedule,
         idat);
    else {
     nb = rounddown(rem, blks);
     exf->decrypt_multi(sw->sw_kschedule,
         idat, nb);
    }
   } else if (crd->crd_flags & CRD_F_ENCRYPT) {

    for (j = 0; j < blks; j++)
     idat[j] ^= ivp[j];

    exf->encrypt(sw->sw_kschedule, idat);
    ivp = idat;
   } else {




    nivp = (ivp == iv) ? iv2 : iv;
    bcopy(idat, nivp, blks);

    exf->decrypt(sw->sw_kschedule, idat);


    for (j = 0; j < blks; j++)
     idat[j] ^= ivp[j];

    ivp = nivp;
   }

   count += nb;
   k += nb;
   i -= nb;
  }







  if (i > 0 && k == uio->uio_iov[ind].iov_len) {
   k = 0;
   ind++;
   if (ind >= uio->uio_iovcnt) {
    error = EINVAL;
    goto out;
   }
  }
 }

out:
 if (iovalloc)
  free(iov, M_CRYPTO_DATA);

 return (error);
}
