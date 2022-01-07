
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_softc {int sc_version; } ;
struct sec_session {int ss_klen; int ss_mklen; struct sec_eu_methods* ss_eu; int ss_mkey; int ss_key; } ;
struct sec_eu_methods {int (* sem_newsession ) (struct sec_softc*,struct sec_session*,struct cryptoini*,struct cryptoini*) ;int * sem_make_desc; } ;
struct cryptoini {int cri_klen; scalar_t__ cri_key; } ;
typedef int device_t ;
typedef int crypto_session_t ;


 int E2BIG ;
 int EINVAL ;
 int SEC_MAX_KEY_LEN ;
 struct sec_session* crypto_get_driver_session (int ) ;
 struct sec_softc* device_get_softc (int ) ;
 int memcpy (int ,scalar_t__,int) ;
 struct sec_eu_methods* sec_eus ;
 int sec_split_cri (struct cryptoini*,struct cryptoini**,struct cryptoini**) ;
 int stub1 (struct sec_softc*,struct sec_session*,struct cryptoini*,struct cryptoini*) ;

__attribute__((used)) static int
sec_newsession(device_t dev, crypto_session_t cses, struct cryptoini *cri)
{
 struct sec_softc *sc = device_get_softc(dev);
 struct sec_eu_methods *eu = sec_eus;
 struct cryptoini *enc = ((void*)0);
 struct cryptoini *mac = ((void*)0);
 struct sec_session *ses;
 int error = -1;

 error = sec_split_cri(cri, &enc, &mac);
 if (error)
  return (error);


 if (enc && enc->cri_key && (enc->cri_klen / 8) > SEC_MAX_KEY_LEN)
  return (E2BIG);

 if (mac && mac->cri_key && (mac->cri_klen / 8) > SEC_MAX_KEY_LEN)
  return (E2BIG);


 if (sc->sc_version < 3 && mac && mac->cri_klen > 256)
  return (E2BIG);

 ses = crypto_get_driver_session(cses);


 while (eu->sem_make_desc != ((void*)0)) {
  error = eu->sem_newsession(sc, ses, enc, mac);
  if (error >= 0)
   break;

  eu++;
 }


 if (error < 0)
  return (EINVAL);


 if (enc && enc->cri_key) {
  ses->ss_klen = enc->cri_klen / 8;
  memcpy(ses->ss_key, enc->cri_key, ses->ss_klen);
 }


 if (mac && mac->cri_key) {
  ses->ss_mklen = mac->cri_klen / 8;
  memcpy(ses->ss_mkey, mac->cri_key, ses->ss_mklen);
 }

 ses->ss_eu = eu;
 return (0);
}
