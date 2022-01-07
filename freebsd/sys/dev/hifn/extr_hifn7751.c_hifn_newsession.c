
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hifn_softc {int dummy; } ;
struct hifn_session {int hs_mlen; int hs_iv; } ;
struct cryptoini {int cri_alg; int cri_mlen; struct cryptoini* cri_next; } ;
typedef int device_t ;
typedef int crypto_session_t ;
 int EINVAL ;
 int HIFN_AES_IV_LENGTH ;
 int HIFN_IV_LENGTH ;
 int KASSERT (int ,char*) ;
 struct hifn_session* crypto_get_driver_session (int ) ;
 struct hifn_softc* device_get_softc (int ) ;
 int read_random (int ,int ) ;

__attribute__((used)) static int
hifn_newsession(device_t dev, crypto_session_t cses, struct cryptoini *cri)
{
 struct hifn_softc *sc = device_get_softc(dev);
 struct cryptoini *c;
 int mac = 0, cry = 0;
 struct hifn_session *ses;

 KASSERT(sc != ((void*)0), ("hifn_newsession: null softc"));
 if (cri == ((void*)0) || sc == ((void*)0))
  return (EINVAL);

 ses = crypto_get_driver_session(cses);

 for (c = cri; c != ((void*)0); c = c->cri_next) {
  switch (c->cri_alg) {
  case 131:
  case 129:
  case 130:
  case 128:
   if (mac)
    return (EINVAL);
   mac = 1;
   ses->hs_mlen = c->cri_mlen;
   if (ses->hs_mlen == 0) {
    switch (c->cri_alg) {
    case 131:
    case 130:
     ses->hs_mlen = 16;
     break;
    case 129:
    case 128:
     ses->hs_mlen = 20;
     break;
    }
   }
   break;
  case 132:
  case 135:
  case 134:

   read_random(ses->hs_iv,
    c->cri_alg == 134 ?
     HIFN_AES_IV_LENGTH : HIFN_IV_LENGTH);

  case 133:
   if (cry)
    return (EINVAL);
   cry = 1;
   break;
  default:
   return (EINVAL);
  }
 }
 if (mac == 0 && cry == 0)
  return (EINVAL);
 return (0);
}
