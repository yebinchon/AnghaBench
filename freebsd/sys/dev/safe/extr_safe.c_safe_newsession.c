
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct safe_softc {int dummy; } ;
struct safe_session {int ses_klen; scalar_t__ ses_mlen; int ses_iv; } ;
struct cryptoini {scalar_t__ cri_alg; int cri_klen; scalar_t__ cri_mlen; int * cri_key; struct cryptoini* cri_next; } ;
typedef int device_t ;
typedef int crypto_session_t ;





 scalar_t__ CRYPTO_MD5_HMAC ;
 scalar_t__ CRYPTO_NULL_CBC ;
 scalar_t__ CRYPTO_NULL_HMAC ;
 scalar_t__ CRYPTO_SHA1_HMAC ;
 int EINVAL ;
 scalar_t__ MD5_HASH_LEN ;
 scalar_t__ SHA1_HASH_LEN ;
 struct safe_session* crypto_get_driver_session (int ) ;
 struct safe_softc* device_get_softc (int ) ;
 int read_random (int ,int) ;
 int safe_setup_enckey (struct safe_session*,int *) ;
 int safe_setup_mackey (struct safe_session*,scalar_t__,int *,int) ;

__attribute__((used)) static int
safe_newsession(device_t dev, crypto_session_t cses, struct cryptoini *cri)
{
 struct safe_softc *sc = device_get_softc(dev);
 struct cryptoini *c, *encini = ((void*)0), *macini = ((void*)0);
 struct safe_session *ses = ((void*)0);

 if (cri == ((void*)0) || sc == ((void*)0))
  return (EINVAL);

 for (c = cri; c != ((void*)0); c = c->cri_next) {
  if (c->cri_alg == CRYPTO_MD5_HMAC ||
      c->cri_alg == CRYPTO_SHA1_HMAC ||
      c->cri_alg == CRYPTO_NULL_HMAC) {
   if (macini)
    return (EINVAL);
   macini = c;
  } else if (c->cri_alg == 128 ||
      c->cri_alg == 130 ||
      c->cri_alg == 129 ||
      c->cri_alg == CRYPTO_NULL_CBC) {
   if (encini)
    return (EINVAL);
   encini = c;
  } else
   return (EINVAL);
 }
 if (encini == ((void*)0) && macini == ((void*)0))
  return (EINVAL);
 if (encini) {
  switch (encini->cri_alg) {
  case 128:
   if (encini->cri_klen != 64)
    return (EINVAL);
   break;
  case 130:
   if (encini->cri_klen != 192)
    return (EINVAL);
   break;
  case 129:
   if (encini->cri_klen != 128 &&
       encini->cri_klen != 192 &&
       encini->cri_klen != 256)
    return (EINVAL);
   break;
  }
 }

 ses = crypto_get_driver_session(cses);
 if (encini) {


  read_random(ses->ses_iv, sizeof(ses->ses_iv));

  ses->ses_klen = encini->cri_klen;
  if (encini->cri_key != ((void*)0))
   safe_setup_enckey(ses, encini->cri_key);
 }

 if (macini) {
  ses->ses_mlen = macini->cri_mlen;
  if (ses->ses_mlen == 0) {
   if (macini->cri_alg == CRYPTO_MD5_HMAC)
    ses->ses_mlen = MD5_HASH_LEN;
   else
    ses->ses_mlen = SHA1_HASH_LEN;
  }

  if (macini->cri_key != ((void*)0)) {
   safe_setup_mackey(ses, macini->cri_alg, macini->cri_key,
       macini->cri_klen / 8);
  }
 }

 return (0);
}
