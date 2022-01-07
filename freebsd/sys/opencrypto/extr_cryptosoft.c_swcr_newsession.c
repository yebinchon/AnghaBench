
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swcr_session {int swcr_nalgs; struct swcr_data* swcr_algorithms; int swcr_lock; } ;
struct swcr_data {int sw_alg; struct comp_algo* sw_cxf; struct auth_hash* sw_axf; int * sw_ictx; int sw_mlen; int * sw_octx; struct enc_xform* sw_exf; int sw_kschedule; } ;
struct enc_xform {int (* setkey ) (int *,int *,int) ;} ;
struct cryptoini {int cri_alg; int cri_klen; struct cryptoini* cri_next; int * cri_key; int cri_mlen; } ;
struct comp_algo {int dummy; } ;
struct auth_hash {int ctxsize; int (* Init ) (int *) ;int (* Setkey ) (int *,int *,int) ;} ;
typedef int device_t ;
typedef int * crypto_session_t ;


 int CRYPTDEB (char*) ;
 int EINVAL ;
 int ENOBUFS ;
 int MTX_DEF ;
 int M_CRYPTO_DATA ;
 int M_NOWAIT ;
 struct auth_hash auth_hash_blake2b ;
 struct auth_hash auth_hash_blake2s ;
 struct auth_hash auth_hash_ccm_cbc_mac_128 ;
 struct auth_hash auth_hash_ccm_cbc_mac_192 ;
 struct auth_hash auth_hash_ccm_cbc_mac_256 ;
 struct auth_hash auth_hash_hmac_md5 ;
 struct auth_hash auth_hash_hmac_ripemd_160 ;
 struct auth_hash auth_hash_hmac_sha1 ;
 struct auth_hash auth_hash_hmac_sha2_224 ;
 struct auth_hash auth_hash_hmac_sha2_256 ;
 struct auth_hash auth_hash_hmac_sha2_384 ;
 struct auth_hash auth_hash_hmac_sha2_512 ;
 struct auth_hash auth_hash_key_md5 ;
 struct auth_hash auth_hash_key_sha1 ;
 struct auth_hash auth_hash_md5 ;
 struct auth_hash auth_hash_nist_gmac_aes_128 ;
 struct auth_hash auth_hash_nist_gmac_aes_192 ;
 struct auth_hash auth_hash_nist_gmac_aes_256 ;
 struct auth_hash auth_hash_null ;
 struct auth_hash auth_hash_poly1305 ;
 struct auth_hash auth_hash_sha1 ;
 struct auth_hash auth_hash_sha2_224 ;
 struct auth_hash auth_hash_sha2_256 ;
 struct auth_hash auth_hash_sha2_384 ;
 struct auth_hash auth_hash_sha2_512 ;
 struct comp_algo comp_algo_deflate ;
 struct swcr_session* crypto_get_driver_session (int *) ;
 struct enc_xform enc_xform_3des ;
 struct enc_xform enc_xform_aes_icm ;
 struct enc_xform enc_xform_aes_nist_gcm ;
 struct enc_xform enc_xform_aes_nist_gmac ;
 struct enc_xform enc_xform_aes_xts ;
 struct enc_xform enc_xform_blf ;
 struct enc_xform enc_xform_camellia ;
 struct enc_xform enc_xform_cast5 ;
 struct enc_xform enc_xform_ccm ;
 struct enc_xform enc_xform_chacha20 ;
 struct enc_xform enc_xform_des ;
 struct enc_xform enc_xform_null ;
 struct enc_xform enc_xform_rijndael128 ;
 struct enc_xform enc_xform_skipjack ;
 void* malloc (int,int ,int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 size_t nitems (struct swcr_data*) ;
 int stub1 (int *,int *,int) ;
 int stub2 (int *) ;
 int stub3 (int *) ;
 int stub4 (int *,int *,int) ;
 int stub5 (int *,int *,int) ;
 int stub6 (int *) ;
 int swcr_authprepare (struct auth_hash*,struct swcr_data*,int *,int) ;
 int swcr_freesession (int ,int *) ;

__attribute__((used)) static int
swcr_newsession(device_t dev, crypto_session_t cses, struct cryptoini *cri)
{
 struct swcr_session *ses;
 struct swcr_data *swd;
 struct auth_hash *axf;
 struct enc_xform *txf;
 struct comp_algo *cxf;
 size_t i;
 int len;
 int error;

 if (cses == ((void*)0) || cri == ((void*)0))
  return EINVAL;

 ses = crypto_get_driver_session(cses);
 mtx_init(&ses->swcr_lock, "swcr session lock", ((void*)0), MTX_DEF);

 for (i = 0; cri != ((void*)0) && i < nitems(ses->swcr_algorithms); i++) {
  swd = &ses->swcr_algorithms[i];

  switch (cri->cri_alg) {
  case 148:
   txf = &enc_xform_des;
   goto enccommon;
  case 165:
   txf = &enc_xform_3des;
   goto enccommon;
  case 153:
   txf = &enc_xform_blf;
   goto enccommon;
  case 151:
   txf = &enc_xform_cast5;
   goto enccommon;
  case 128:
   txf = &enc_xform_skipjack;
   goto enccommon;
  case 141:
   txf = &enc_xform_rijndael128;
   goto enccommon;
  case 156:
   txf = &enc_xform_aes_xts;
   goto enccommon;
  case 159:
   txf = &enc_xform_aes_icm;
   goto enccommon;
  case 158:
   txf = &enc_xform_aes_nist_gcm;
   goto enccommon;
  case 161:
   txf = &enc_xform_ccm;
   goto enccommon;
  case 157:
   txf = &enc_xform_aes_nist_gmac;
   swd->sw_exf = txf;
   break;
  case 152:
   txf = &enc_xform_camellia;
   goto enccommon;
  case 144:
   txf = &enc_xform_null;
   goto enccommon;
  case 150:
   txf = &enc_xform_chacha20;
   goto enccommon;
  enccommon:
   if (cri->cri_key != ((void*)0)) {
    error = txf->setkey(&swd->sw_kschedule,
        cri->cri_key, cri->cri_klen / 8);
    if (error) {
     swcr_freesession(dev, cses);
     return error;
    }
   }
   swd->sw_exf = txf;
   break;

  case 146:
   axf = &auth_hash_hmac_md5;
   goto authcommon;
  case 138:
   axf = &auth_hash_hmac_sha1;
   goto authcommon;
  case 135:
   axf = &auth_hash_hmac_sha2_224;
   goto authcommon;
  case 133:
   axf = &auth_hash_hmac_sha2_256;
   goto authcommon;
  case 131:
   axf = &auth_hash_hmac_sha2_384;
   goto authcommon;
  case 129:
   axf = &auth_hash_hmac_sha2_512;
   goto authcommon;
  case 143:
   axf = &auth_hash_null;
   goto authcommon;
  case 140:
   axf = &auth_hash_hmac_ripemd_160;
  authcommon:
   swd->sw_ictx = malloc(axf->ctxsize, M_CRYPTO_DATA,
       M_NOWAIT);
   if (swd->sw_ictx == ((void*)0)) {
    swcr_freesession(dev, cses);
    return ENOBUFS;
   }

   swd->sw_octx = malloc(axf->ctxsize, M_CRYPTO_DATA,
       M_NOWAIT);
   if (swd->sw_octx == ((void*)0)) {
    swcr_freesession(dev, cses);
    return ENOBUFS;
   }

   if (cri->cri_key != ((void*)0)) {
    error = swcr_authprepare(axf, swd,
        cri->cri_key, cri->cri_klen);
    if (error != 0) {
     swcr_freesession(dev, cses);
     return error;
    }
   }

   swd->sw_mlen = cri->cri_mlen;
   swd->sw_axf = axf;
   break;

  case 145:
   axf = &auth_hash_key_md5;
   goto auth2common;

  case 137:
   axf = &auth_hash_key_sha1;
  auth2common:
   swd->sw_ictx = malloc(axf->ctxsize, M_CRYPTO_DATA,
       M_NOWAIT);
   if (swd->sw_ictx == ((void*)0)) {
    swcr_freesession(dev, cses);
    return ENOBUFS;
   }

   swd->sw_octx = malloc(cri->cri_klen / 8,
       M_CRYPTO_DATA, M_NOWAIT);
   if (swd->sw_octx == ((void*)0)) {
    swcr_freesession(dev, cses);
    return ENOBUFS;
   }


   if (cri->cri_key != ((void*)0)) {
    error = swcr_authprepare(axf, swd,
        cri->cri_key, cri->cri_klen);
    if (error != 0) {
     swcr_freesession(dev, cses);
     return error;
    }
   }

   swd->sw_mlen = cri->cri_mlen;
   swd->sw_axf = axf;
   break;






  case 139:
   axf = &auth_hash_sha1;
   goto auth3common;
  case 136:
   axf = &auth_hash_sha2_224;
   goto auth3common;
  case 134:
   axf = &auth_hash_sha2_256;
   goto auth3common;
  case 132:
   axf = &auth_hash_sha2_384;
   goto auth3common;
  case 130:
   axf = &auth_hash_sha2_512;

  auth3common:
   swd->sw_ictx = malloc(axf->ctxsize, M_CRYPTO_DATA,
       M_NOWAIT);
   if (swd->sw_ictx == ((void*)0)) {
    swcr_freesession(dev, cses);
    return ENOBUFS;
   }

   axf->Init(swd->sw_ictx);
   swd->sw_mlen = cri->cri_mlen;
   swd->sw_axf = axf;
   break;

  case 160:
   switch (cri->cri_klen) {
   case 128:
    axf = &auth_hash_ccm_cbc_mac_128;
    break;
   case 192:
    axf = &auth_hash_ccm_cbc_mac_192;
    break;
   case 256:
    axf = &auth_hash_ccm_cbc_mac_256;
    break;
   default:
    swcr_freesession(dev, cses);
    return EINVAL;
   }
   goto auth4common;
  case 164:
   axf = &auth_hash_nist_gmac_aes_128;
   goto auth4common;

  case 163:
   axf = &auth_hash_nist_gmac_aes_192;
   goto auth4common;

  case 162:
   axf = &auth_hash_nist_gmac_aes_256;
  auth4common:
   len = cri->cri_klen / 8;
   if (len != 16 && len != 24 && len != 32) {
    swcr_freesession(dev, cses);
    return EINVAL;
   }

   swd->sw_ictx = malloc(axf->ctxsize, M_CRYPTO_DATA,
       M_NOWAIT);
   if (swd->sw_ictx == ((void*)0)) {
    swcr_freesession(dev, cses);
    return ENOBUFS;
   }
   axf->Init(swd->sw_ictx);
   axf->Setkey(swd->sw_ictx, cri->cri_key, len);
   swd->sw_axf = axf;
   break;

  case 155:
   axf = &auth_hash_blake2b;
   goto auth5common;
  case 154:
   axf = &auth_hash_blake2s;
   goto auth5common;
  case 142:
   axf = &auth_hash_poly1305;
  auth5common:
   swd->sw_ictx = malloc(axf->ctxsize, M_CRYPTO_DATA,
       M_NOWAIT);
   if (swd->sw_ictx == ((void*)0)) {
    swcr_freesession(dev, cses);
    return ENOBUFS;
   }
   axf->Setkey(swd->sw_ictx, cri->cri_key,
       cri->cri_klen / 8);
   axf->Init(swd->sw_ictx);
   swd->sw_axf = axf;
   break;

  case 149:
   cxf = &comp_algo_deflate;
   swd->sw_cxf = cxf;
   break;
  default:
   swcr_freesession(dev, cses);
   return EINVAL;
  }

  swd->sw_alg = cri->cri_alg;
  cri = cri->cri_next;
  ses->swcr_nalgs++;
 }

 if (cri != ((void*)0)) {
  CRYPTDEB("Bogus session request for three or more algorithms");
  return EINVAL;
 }
 return 0;
}
