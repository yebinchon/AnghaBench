
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cryptop {int crp_etype; int crp_session; struct cryptodesc* crp_desc; } ;
struct cryptodesc {int crd_flags; int crd_klen; int crd_key; int crd_alg; struct cryptodesc* crd_next; int crd_len; } ;
struct ccr_softc {int lock; int stats_process_error; int stats_inflight; int stats_ccm_decrypt; int stats_ccm_encrypt; int stats_sw_fallback; int stats_gcm_decrypt; int stats_gcm_encrypt; int stats_authenc_decrypt; int stats_authenc_encrypt; int stats_blkcipher_decrypt; int stats_blkcipher_encrypt; int stats_hmac; int stats_hash; int stats_sglist_error; int sg_crp; } ;
struct TYPE_4__ {int ghash_h; } ;
struct TYPE_3__ {int pads; int partial_digest_len; int auth_hash; } ;
struct ccr_session {int mode; int pending; TYPE_2__ gmac; TYPE_1__ hmac; } ;
typedef int device_t ;





 int CRD_F_ENCRYPT ;
 int CRD_F_KEY_EXPLICIT ;

 int CRYPTO_AES_CCM_16 ;

 int CRYPTO_AES_NIST_GCM_16 ;

 int EINVAL ;
 int EMSGSIZE ;



 int ccr_aes_check_keylen (int ,int ) ;
 int ccr_aes_setkey (struct ccr_session*,int ,int ,int ) ;
 int ccr_authenc (struct ccr_softc*,struct ccr_session*,struct cryptop*,struct cryptodesc*,struct cryptodesc*) ;
 int ccr_blkcipher (struct ccr_softc*,struct ccr_session*,struct cryptop*) ;
 int ccr_ccm (struct ccr_softc*,struct ccr_session*,struct cryptop*,struct cryptodesc*,struct cryptodesc*) ;
 int ccr_ccm_soft (struct ccr_session*,struct cryptop*,struct cryptodesc*,struct cryptodesc*) ;
 int ccr_gcm (struct ccr_softc*,struct ccr_session*,struct cryptop*,struct cryptodesc*,struct cryptodesc*) ;
 int ccr_gcm_soft (struct ccr_session*,struct cryptop*,struct cryptodesc*,struct cryptodesc*) ;
 int ccr_hash (struct ccr_softc*,struct ccr_session*,struct cryptop*) ;
 int ccr_populate_sglist (int ,struct cryptop*) ;
 int crypto_done (struct cryptop*) ;
 struct ccr_session* crypto_get_driver_session (int ) ;
 struct ccr_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int t4_init_gmac_hash (int ,int ,int ) ;
 int t4_init_hmac_digest (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int
ccr_process(device_t dev, struct cryptop *crp, int hint)
{
 struct ccr_softc *sc;
 struct ccr_session *s;
 struct cryptodesc *crd, *crda, *crde;
 int error;

 if (crp == ((void*)0))
  return (EINVAL);

 crd = crp->crp_desc;
 s = crypto_get_driver_session(crp->crp_session);
 sc = device_get_softc(dev);

 mtx_lock(&sc->lock);
 error = ccr_populate_sglist(sc->sg_crp, crp);
 if (error) {
  sc->stats_sglist_error++;
  goto out;
 }

 switch (s->mode) {
 case 129:
  error = ccr_hash(sc, s, crp);
  if (error == 0)
   sc->stats_hash++;
  break;
 case 128:
  if (crd->crd_flags & CRD_F_KEY_EXPLICIT)
   t4_init_hmac_digest(s->hmac.auth_hash,
       s->hmac.partial_digest_len, crd->crd_key,
       crd->crd_klen, s->hmac.pads);
  error = ccr_hash(sc, s, crp);
  if (error == 0)
   sc->stats_hmac++;
  break;
 case 135:
  if (crd->crd_flags & CRD_F_KEY_EXPLICIT) {
   error = ccr_aes_check_keylen(crd->crd_alg,
       crd->crd_klen);
   if (error)
    break;
   ccr_aes_setkey(s, crd->crd_alg, crd->crd_key,
       crd->crd_klen);
  }
  error = ccr_blkcipher(sc, s, crp);
  if (error == 0) {
   if (crd->crd_flags & CRD_F_ENCRYPT)
    sc->stats_blkcipher_encrypt++;
   else
    sc->stats_blkcipher_decrypt++;
  }
  break;
 case 136:
  error = 0;
  switch (crd->crd_alg) {
  case 133:
  case 132:
  case 131:

   crde = crd;
   crda = crd->crd_next;
   if (!(crde->crd_flags & CRD_F_ENCRYPT)) {
    error = EINVAL;
    break;
   }
   break;
  default:
   crda = crd;
   crde = crd->crd_next;
   if (crde->crd_flags & CRD_F_ENCRYPT) {
    error = EINVAL;
    break;
   }
   break;
  }
  if (error)
   break;
  if (crda->crd_flags & CRD_F_KEY_EXPLICIT)
   t4_init_hmac_digest(s->hmac.auth_hash,
       s->hmac.partial_digest_len, crda->crd_key,
       crda->crd_klen, s->hmac.pads);
  if (crde->crd_flags & CRD_F_KEY_EXPLICIT) {
   error = ccr_aes_check_keylen(crde->crd_alg,
       crde->crd_klen);
   if (error)
    break;
   ccr_aes_setkey(s, crde->crd_alg, crde->crd_key,
       crde->crd_klen);
  }
  error = ccr_authenc(sc, s, crp, crda, crde);
  if (error == 0) {
   if (crde->crd_flags & CRD_F_ENCRYPT)
    sc->stats_authenc_encrypt++;
   else
    sc->stats_authenc_decrypt++;
  }
  break;
 case 130:
  error = 0;
  if (crd->crd_alg == CRYPTO_AES_NIST_GCM_16) {
   crde = crd;
   crda = crd->crd_next;
  } else {
   crda = crd;
   crde = crd->crd_next;
  }
  if (crda->crd_flags & CRD_F_KEY_EXPLICIT)
   t4_init_gmac_hash(crda->crd_key, crda->crd_klen,
       s->gmac.ghash_h);
  if (crde->crd_flags & CRD_F_KEY_EXPLICIT) {
   error = ccr_aes_check_keylen(crde->crd_alg,
       crde->crd_klen);
   if (error)
    break;
   ccr_aes_setkey(s, crde->crd_alg, crde->crd_key,
       crde->crd_klen);
  }
  if (crde->crd_len == 0) {
   mtx_unlock(&sc->lock);
   ccr_gcm_soft(s, crp, crda, crde);
   return (0);
  }
  error = ccr_gcm(sc, s, crp, crda, crde);
  if (error == EMSGSIZE) {
   sc->stats_sw_fallback++;
   mtx_unlock(&sc->lock);
   ccr_gcm_soft(s, crp, crda, crde);
   return (0);
  }
  if (error == 0) {
   if (crde->crd_flags & CRD_F_ENCRYPT)
    sc->stats_gcm_encrypt++;
   else
    sc->stats_gcm_decrypt++;
  }
  break;
 case 134:
  error = 0;
  if (crd->crd_alg == CRYPTO_AES_CCM_16) {
   crde = crd;
   crda = crd->crd_next;
  } else {
   crda = crd;
   crde = crd->crd_next;
  }
  if (crde->crd_flags & CRD_F_KEY_EXPLICIT) {
   error = ccr_aes_check_keylen(crde->crd_alg,
       crde->crd_klen);
   if (error)
    break;
   ccr_aes_setkey(s, crde->crd_alg, crde->crd_key,
       crde->crd_klen);
  }
  error = ccr_ccm(sc, s, crp, crda, crde);
  if (error == EMSGSIZE) {
   sc->stats_sw_fallback++;
   mtx_unlock(&sc->lock);
   ccr_ccm_soft(s, crp, crda, crde);
   return (0);
  }
  if (error == 0) {
   if (crde->crd_flags & CRD_F_ENCRYPT)
    sc->stats_ccm_encrypt++;
   else
    sc->stats_ccm_decrypt++;
  }
  break;
 }

 if (error == 0) {
  s->pending++;
  sc->stats_inflight++;
 } else
  sc->stats_process_error++;

out:
 mtx_unlock(&sc->lock);

 if (error) {
  crp->crp_etype = error;
  crypto_done(crp);
 }

 return (0);
}
