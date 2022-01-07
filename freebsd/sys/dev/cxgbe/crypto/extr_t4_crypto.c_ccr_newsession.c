
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct cryptoini {int cri_alg; scalar_t__ cri_mlen; int cri_klen; int * cri_key; struct cryptoini* cri_next; } ;
struct ccr_softc {int lock; scalar_t__ detaching; TYPE_4__* txq; TYPE_3__* rxq; } ;
struct TYPE_8__ {unsigned int cipher_mode; unsigned int iv_len; } ;
struct TYPE_14__ {unsigned int auth_mode; unsigned int mk_size; unsigned int partial_digest_len; scalar_t__ hash_len; int pads; struct auth_hash* auth_hash; } ;
struct TYPE_13__ {scalar_t__ hash_len; } ;
struct TYPE_12__ {scalar_t__ hash_len; int ghash_h; } ;
struct ccr_session {int active; TYPE_1__ blkcipher; TYPE_7__ hmac; TYPE_6__ ccm_mac; TYPE_5__ gmac; int mode; } ;
struct auth_hash {scalar_t__ hashsize; } ;
typedef int device_t ;
typedef int crypto_session_t ;
struct TYPE_11__ {int * adapter; } ;
struct TYPE_9__ {int * adapter; } ;
struct TYPE_10__ {TYPE_2__ iq; } ;


 unsigned int AES_BLOCK_LEN ;
 scalar_t__ AES_CBC_MAC_HASH_LEN ;
 unsigned int AES_CCM_IV_LEN ;
 unsigned int AES_GCM_IV_LEN ;
 scalar_t__ AES_GMAC_HASH_LEN ;
 int AUTHENC ;
 int BLKCIPHER ;
 int CCM ;
 unsigned int CHCR_KEYCTX_MAC_KEY_SIZE_128 ;
 unsigned int CHCR_KEYCTX_MAC_KEY_SIZE_160 ;
 unsigned int CHCR_KEYCTX_MAC_KEY_SIZE_256 ;
 unsigned int CHCR_KEYCTX_MAC_KEY_SIZE_512 ;
 int EINVAL ;
 int ENXIO ;
 int GCM ;
 int HASH ;
 int HMAC ;
 int MPASS (int ) ;
 unsigned int SCMD_AUTH_MODE_CBCMAC ;
 unsigned int SCMD_AUTH_MODE_GHASH ;
 unsigned int SCMD_AUTH_MODE_NOP ;
 unsigned int SCMD_AUTH_MODE_SHA1 ;
 unsigned int SCMD_AUTH_MODE_SHA224 ;
 unsigned int SCMD_AUTH_MODE_SHA256 ;
 unsigned int SCMD_AUTH_MODE_SHA512_384 ;
 unsigned int SCMD_AUTH_MODE_SHA512_512 ;
 unsigned int SCMD_CIPH_MODE_AES_CBC ;
 unsigned int SCMD_CIPH_MODE_AES_CCM ;
 unsigned int SCMD_CIPH_MODE_AES_CTR ;
 unsigned int SCMD_CIPH_MODE_AES_GCM ;
 unsigned int SCMD_CIPH_MODE_AES_XTS ;
 unsigned int SCMD_CIPH_MODE_NOP ;
 unsigned int SHA1_HASH_LEN ;
 unsigned int SHA2_256_HASH_LEN ;
 unsigned int SHA2_512_HASH_LEN ;
 struct auth_hash auth_hash_hmac_sha1 ;
 struct auth_hash auth_hash_hmac_sha2_224 ;
 struct auth_hash auth_hash_hmac_sha2_256 ;
 struct auth_hash auth_hash_hmac_sha2_384 ;
 struct auth_hash auth_hash_hmac_sha2_512 ;
 int ccr_aes_check_keylen (int,int ) ;
 int ccr_aes_setkey (struct ccr_session*,int,int *,int ) ;
 int ccr_init_hash_digest (struct ccr_session*,int) ;
 struct ccr_session* crypto_get_driver_session (int ) ;
 struct ccr_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int t4_init_gmac_hash (int *,int ,int ) ;
 int t4_init_hmac_digest (struct auth_hash*,unsigned int,int *,int ,int ) ;

__attribute__((used)) static int
ccr_newsession(device_t dev, crypto_session_t cses, struct cryptoini *cri)
{
 struct ccr_softc *sc;
 struct ccr_session *s;
 struct auth_hash *auth_hash;
 struct cryptoini *c, *hash, *cipher;
 unsigned int auth_mode, cipher_mode, iv_len, mk_size;
 unsigned int partial_digest_len;
 int error;
 bool gcm_hash, hmac;

 if (cri == ((void*)0))
  return (EINVAL);

 gcm_hash = 0;
 hmac = 0;
 cipher = ((void*)0);
 hash = ((void*)0);
 auth_hash = ((void*)0);
 auth_mode = SCMD_AUTH_MODE_NOP;
 cipher_mode = SCMD_CIPH_MODE_NOP;
 iv_len = 0;
 mk_size = 0;
 partial_digest_len = 0;
 for (c = cri; c != ((void*)0); c = c->cri_next) {
  switch (c->cri_alg) {
  case 137:
  case 135:
  case 133:
  case 131:
  case 129:
  case 136:
  case 134:
  case 132:
  case 130:
  case 128:
  case 146:
  case 145:
  case 144:
  case 141:
   if (hash)
    return (EINVAL);
   hash = c;
   switch (c->cri_alg) {
   case 137:
   case 136:
    auth_hash = &auth_hash_hmac_sha1;
    auth_mode = SCMD_AUTH_MODE_SHA1;
    mk_size = CHCR_KEYCTX_MAC_KEY_SIZE_160;
    partial_digest_len = SHA1_HASH_LEN;
    break;
   case 135:
   case 134:
    auth_hash = &auth_hash_hmac_sha2_224;
    auth_mode = SCMD_AUTH_MODE_SHA224;
    mk_size = CHCR_KEYCTX_MAC_KEY_SIZE_256;
    partial_digest_len = SHA2_256_HASH_LEN;
    break;
   case 133:
   case 132:
    auth_hash = &auth_hash_hmac_sha2_256;
    auth_mode = SCMD_AUTH_MODE_SHA256;
    mk_size = CHCR_KEYCTX_MAC_KEY_SIZE_256;
    partial_digest_len = SHA2_256_HASH_LEN;
    break;
   case 131:
   case 130:
    auth_hash = &auth_hash_hmac_sha2_384;
    auth_mode = SCMD_AUTH_MODE_SHA512_384;
    mk_size = CHCR_KEYCTX_MAC_KEY_SIZE_512;
    partial_digest_len = SHA2_512_HASH_LEN;
    break;
   case 129:
   case 128:
    auth_hash = &auth_hash_hmac_sha2_512;
    auth_mode = SCMD_AUTH_MODE_SHA512_512;
    mk_size = CHCR_KEYCTX_MAC_KEY_SIZE_512;
    partial_digest_len = SHA2_512_HASH_LEN;
    break;
   case 146:
   case 145:
   case 144:
    gcm_hash = 1;
    auth_mode = SCMD_AUTH_MODE_GHASH;
    mk_size = CHCR_KEYCTX_MAC_KEY_SIZE_128;
    break;
   case 141:
    auth_mode = SCMD_AUTH_MODE_CBCMAC;
    break;
   }
   switch (c->cri_alg) {
   case 136:
   case 134:
   case 132:
   case 130:
   case 128:
    hmac = 1;
    break;
   }
   break;
  case 143:
  case 140:
  case 139:
  case 138:
  case 142:
   if (cipher)
    return (EINVAL);
   cipher = c;
   switch (c->cri_alg) {
   case 143:
    cipher_mode = SCMD_CIPH_MODE_AES_CBC;
    iv_len = AES_BLOCK_LEN;
    break;
   case 140:
    cipher_mode = SCMD_CIPH_MODE_AES_CTR;
    iv_len = AES_BLOCK_LEN;
    break;
   case 139:
    cipher_mode = SCMD_CIPH_MODE_AES_GCM;
    iv_len = AES_GCM_IV_LEN;
    break;
   case 138:
    cipher_mode = SCMD_CIPH_MODE_AES_XTS;
    iv_len = AES_BLOCK_LEN;
    break;
   case 142:
    cipher_mode = SCMD_CIPH_MODE_AES_CCM;
    iv_len = AES_CCM_IV_LEN;
    break;
   }
   if (c->cri_key != ((void*)0)) {
    error = ccr_aes_check_keylen(c->cri_alg,
        c->cri_klen);
    if (error)
     return (error);
   }
   break;
  default:
   return (EINVAL);
  }
 }
 if (gcm_hash != (cipher_mode == SCMD_CIPH_MODE_AES_GCM))
  return (EINVAL);
 if ((auth_mode == SCMD_AUTH_MODE_CBCMAC) !=
     (cipher_mode == SCMD_CIPH_MODE_AES_CCM))
  return (EINVAL);
 if (hash == ((void*)0) && cipher == ((void*)0))
  return (EINVAL);
 if (hash != ((void*)0)) {
  if (hmac || gcm_hash || auth_mode == SCMD_AUTH_MODE_CBCMAC) {
   if (hash->cri_key == ((void*)0))
    return (EINVAL);
  } else {
   if (hash->cri_key != ((void*)0))
    return (EINVAL);
  }
 }

 sc = device_get_softc(dev);







 if (sc->rxq->iq.adapter == ((void*)0) || sc->txq->adapter == ((void*)0))
  return (ENXIO);

 mtx_lock(&sc->lock);
 if (sc->detaching) {
  mtx_unlock(&sc->lock);
  return (ENXIO);
 }

 s = crypto_get_driver_session(cses);

 if (gcm_hash)
  s->mode = GCM;
 else if (cipher_mode == SCMD_CIPH_MODE_AES_CCM)
  s->mode = CCM;
 else if (hash != ((void*)0) && cipher != ((void*)0))
  s->mode = AUTHENC;
 else if (hash != ((void*)0)) {
  if (hmac)
   s->mode = HMAC;
  else
   s->mode = HASH;
 } else {
  MPASS(cipher != ((void*)0));
  s->mode = BLKCIPHER;
 }
 if (gcm_hash) {
  if (hash->cri_mlen == 0)
   s->gmac.hash_len = AES_GMAC_HASH_LEN;
  else
   s->gmac.hash_len = hash->cri_mlen;
  t4_init_gmac_hash(hash->cri_key, hash->cri_klen,
      s->gmac.ghash_h);
 } else if (auth_mode == SCMD_AUTH_MODE_CBCMAC) {
  if (hash->cri_mlen == 0)
   s->ccm_mac.hash_len = AES_CBC_MAC_HASH_LEN;
  else
   s->ccm_mac.hash_len = hash->cri_mlen;
 } else if (hash != ((void*)0)) {
  s->hmac.auth_hash = auth_hash;
  s->hmac.auth_mode = auth_mode;
  s->hmac.mk_size = mk_size;
  s->hmac.partial_digest_len = partial_digest_len;
  if (hash->cri_mlen == 0)
   s->hmac.hash_len = auth_hash->hashsize;
  else
   s->hmac.hash_len = hash->cri_mlen;
  if (hmac)
   t4_init_hmac_digest(auth_hash, partial_digest_len,
       hash->cri_key, hash->cri_klen, s->hmac.pads);
  else
   ccr_init_hash_digest(s, hash->cri_alg);
 }
 if (cipher != ((void*)0)) {
  s->blkcipher.cipher_mode = cipher_mode;
  s->blkcipher.iv_len = iv_len;
  if (cipher->cri_key != ((void*)0))
   ccr_aes_setkey(s, cipher->cri_alg, cipher->cri_key,
       cipher->cri_klen);
 }

 s->active = 1;
 mtx_unlock(&sc->lock);
 return (0);
}
