
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct glxsb_softc {int sc_dev; } ;
struct glxsb_session {int ses_klen; int ses_key; int ses_iv; } ;
struct cryptoini {int cri_alg; int cri_klen; int cri_key; struct cryptoini* cri_next; } ;
typedef int device_t ;
typedef int crypto_session_t ;
 int EINVAL ;
 int arc4rand (int ,int,int ) ;
 int bcopy (int ,int ,int) ;
 struct glxsb_session* crypto_get_driver_session (int ) ;
 struct glxsb_softc* device_get_softc (int ) ;
 int glxsb_crypto_freesession (int ,int ) ;
 int glxsb_hash_setup (struct glxsb_session*,struct cryptoini*) ;

__attribute__((used)) static int
glxsb_crypto_newsession(device_t dev, crypto_session_t cses,
    struct cryptoini *cri)
{
 struct glxsb_softc *sc = device_get_softc(dev);
 struct glxsb_session *ses;
 struct cryptoini *encini, *macini;
 int error;

 if (sc == ((void*)0) || cri == ((void*)0))
  return (EINVAL);

 encini = macini = ((void*)0);
 for (; cri != ((void*)0); cri = cri->cri_next) {
  switch(cri->cri_alg) {
  case 133:
  case 134:
  case 131:
  case 132:
  case 130:
  case 129:
  case 128:
   if (macini != ((void*)0))
    return (EINVAL);
   macini = cri;
   break;
  case 135:
   if (encini != ((void*)0))
    return (EINVAL);
   encini = cri;
   break;
  default:
   return (EINVAL);
  }
 }






 if (encini == ((void*)0))
  return (EINVAL);

 ses = crypto_get_driver_session(cses);
 if (encini->cri_alg == 135) {
  if (encini->cri_klen != 128) {
   glxsb_crypto_freesession(sc->sc_dev, cses);
   return (EINVAL);
  }
  arc4rand(ses->ses_iv, sizeof(ses->ses_iv), 0);
  ses->ses_klen = encini->cri_klen;


  bcopy(encini->cri_key, ses->ses_key, sizeof(ses->ses_key));
 }

 if (macini != ((void*)0)) {
  error = glxsb_hash_setup(ses, macini);
  if (error != 0) {
   glxsb_crypto_freesession(sc->sc_dev, cses);
   return (error);
  }
 }

 return (0);
}
