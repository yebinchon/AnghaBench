
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cryptoini {int cri_alg; int cri_klen; void* cri_mlen; scalar_t__ cri_key; struct cryptoini* cri_next; } ;
struct cesa_softc {int dummy; } ;
struct cesa_session {int cs_config; int cs_ivlen; int cs_mblen; void* cs_hlen; int cs_klen; int cs_key; } ;
typedef int device_t ;
typedef int crypto_session_t ;


 int AES_BLOCK_LEN ;
 int CESA_CSHD_3DES ;
 int CESA_CSHD_3DES_EDE ;
 int CESA_CSHD_96_BIT_HMAC ;
 int CESA_CSHD_AES ;
 int CESA_CSHD_CBC ;
 int CESA_CSHD_DES ;
 int CESA_CSHD_MD5 ;
 int CESA_CSHD_MD5_HMAC ;
 int CESA_CSHD_SHA1 ;
 int CESA_CSHD_SHA1_HMAC ;
 int CESA_CSHD_SHA2_256_HMAC ;
 void* CESA_HMAC_TRUNC_LEN ;
 int CESA_MAX_KEY_LEN ;
 int CESA_MAX_MKEY_LEN ;
 int DES3_BLOCK_LEN ;
 int DES_BLOCK_LEN ;
 int E2BIG ;
 int EINVAL ;
 int MD5_BLOCK_LEN ;
 void* MD5_HASH_LEN ;
 int SHA1_BLOCK_LEN ;
 void* SHA1_HASH_LEN ;
 int SHA2_256_BLOCK_LEN ;
 void* SHA2_256_HASH_LEN ;
 scalar_t__ cesa_is_hash (int) ;
 int cesa_prep_aes_key (struct cesa_session*) ;
 int cesa_set_mkey (struct cesa_session*,int const,scalar_t__,int) ;
 struct cesa_session* crypto_get_driver_session (int ) ;
 struct cesa_softc* device_get_softc (int ) ;
 int memcpy (int ,scalar_t__,int) ;

__attribute__((used)) static int
cesa_newsession(device_t dev, crypto_session_t cses, struct cryptoini *cri)
{
 struct cesa_session *cs;
 struct cesa_softc *sc;
 struct cryptoini *enc;
 struct cryptoini *mac;
 int error;

 sc = device_get_softc(dev);
 enc = ((void*)0);
 mac = ((void*)0);
 error = 0;


 if (cesa_is_hash(cri->cri_alg))
  mac = cri;
 else
  enc = cri;

 cri = cri->cri_next;

 if (cri) {
  if (!enc && !cesa_is_hash(cri->cri_alg))
   enc = cri;

  if (!mac && cesa_is_hash(cri->cri_alg))
   mac = cri;

  if (cri->cri_next || !(enc && mac))
   return (EINVAL);
 }

 if ((enc && (enc->cri_klen / 8) > CESA_MAX_KEY_LEN) ||
     (mac && (mac->cri_klen / 8) > CESA_MAX_MKEY_LEN))
  return (E2BIG);


 cs = crypto_get_driver_session(cses);


 cs->cs_config = 0;
 cs->cs_ivlen = 1;
 cs->cs_mblen = 1;

 if (enc) {
  switch (enc->cri_alg) {
  case 134:
   cs->cs_config |= CESA_CSHD_AES | CESA_CSHD_CBC;
   cs->cs_ivlen = AES_BLOCK_LEN;
   break;
  case 133:
   cs->cs_config |= CESA_CSHD_DES | CESA_CSHD_CBC;
   cs->cs_ivlen = DES_BLOCK_LEN;
   break;
  case 135:
   cs->cs_config |= CESA_CSHD_3DES | CESA_CSHD_3DES_EDE |
       CESA_CSHD_CBC;
   cs->cs_ivlen = DES3_BLOCK_LEN;
   break;
  default:
   error = EINVAL;
   break;
  }
 }

 if (!error && mac) {
  switch (mac->cri_alg) {
  case 132:
   cs->cs_mblen = 1;
   cs->cs_hlen = (mac->cri_mlen == 0) ? MD5_HASH_LEN :
       mac->cri_mlen;
   cs->cs_config |= CESA_CSHD_MD5;
   break;
  case 131:
   cs->cs_mblen = MD5_BLOCK_LEN;
   cs->cs_hlen = (mac->cri_mlen == 0) ? MD5_HASH_LEN :
       mac->cri_mlen;
   cs->cs_config |= CESA_CSHD_MD5_HMAC;
   if (cs->cs_hlen == CESA_HMAC_TRUNC_LEN)
    cs->cs_config |= CESA_CSHD_96_BIT_HMAC;
   break;
  case 130:
   cs->cs_mblen = 1;
   cs->cs_hlen = (mac->cri_mlen == 0) ? SHA1_HASH_LEN :
       mac->cri_mlen;
   cs->cs_config |= CESA_CSHD_SHA1;
   break;
  case 129:
   cs->cs_mblen = SHA1_BLOCK_LEN;
   cs->cs_hlen = (mac->cri_mlen == 0) ? SHA1_HASH_LEN :
       mac->cri_mlen;
   cs->cs_config |= CESA_CSHD_SHA1_HMAC;
   if (cs->cs_hlen == CESA_HMAC_TRUNC_LEN)
    cs->cs_config |= CESA_CSHD_96_BIT_HMAC;
   break;
  case 128:
   cs->cs_mblen = SHA2_256_BLOCK_LEN;
   cs->cs_hlen = (mac->cri_mlen == 0) ? SHA2_256_HASH_LEN :
       mac->cri_mlen;
   cs->cs_config |= CESA_CSHD_SHA2_256_HMAC;
   break;
  default:
   error = EINVAL;
   break;
  }
 }


 if (!error && enc && enc->cri_key) {
  cs->cs_klen = enc->cri_klen / 8;
  memcpy(cs->cs_key, enc->cri_key, cs->cs_klen);
  if (enc->cri_alg == 134)
   error = cesa_prep_aes_key(cs);
 }


 if (!error && mac && mac->cri_key)
  error = cesa_set_mkey(cs, mac->cri_alg, mac->cri_key,
      mac->cri_klen / 8);

 if (error)
  return (error);

 return (0);
}
