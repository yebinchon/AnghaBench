
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sec_softc {int sc_version; int sc_blocked; scalar_t__ sc_shutdown; } ;
struct sec_session {int ss_ivlen; int ss_klen; int ss_mklen; TYPE_1__* ss_eu; int ss_mkey; int ss_key; } ;
struct sec_desc {TYPE_2__* sd_desc; struct cryptop* sd_crp; scalar_t__ sd_error; scalar_t__ sd_lt_used; } ;
struct cryptop {scalar_t__ crp_ilen; int crp_etype; int crp_flags; int crp_buf; int crp_session; } ;
struct cryptodesc {int crd_flags; int crd_klen; int crd_key; int crd_inject; int crd_iv; } ;
typedef int device_t ;
struct TYPE_4__ {int shd_dn; int shd_mkey; int shd_key; int shd_iv; } ;
struct TYPE_3__ {int (* sem_make_desc ) (struct sec_softc*,struct sec_session*,struct sec_desc*,struct cryptop*,int) ;} ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CRD_F_ENCRYPT ;
 int CRD_F_IV_EXPLICIT ;
 int CRD_F_IV_PRESENT ;
 int CRD_F_KEY_EXPLICIT ;
 int CRYPTO_F_IMBUF ;
 int CRYPTO_F_IOV ;
 int CRYPTO_HINT_MORE ;
 int CRYPTO_SYMQ ;
 void* E2BIG ;
 int EINVAL ;
 int ERESTART ;
 int SEC_DESC_FREE2READY (struct sec_softc*) ;
 int SEC_DESC_FREE_POINTERS (struct sec_desc*) ;
 int SEC_DESC_PUT_BACK_LT (struct sec_softc*,struct sec_desc*) ;
 int SEC_DESC_SYNC (struct sec_softc*,int) ;
 int SEC_DESC_SYNC_POINTERS (struct sec_desc*,int) ;
 scalar_t__ SEC_FREE_DESC_CNT (struct sec_softc*) ;
 struct sec_desc* SEC_GET_FREE_DESC (struct sec_softc*) ;
 int SEC_LOCK (struct sec_softc*,int ) ;
 scalar_t__ SEC_MAX_DMA_BLOCK_SIZE ;
 int SEC_MAX_KEY_LEN ;
 int SEC_MBUF ;
 int SEC_MEMORY ;
 int SEC_PUT_BACK_FREE_DESC (struct sec_softc*) ;
 int SEC_UIO ;
 int SEC_UNLOCK (struct sec_softc*,int ) ;
 int arc4rand (int ,int,int ) ;
 int crypto_copyback (int,int ,int ,int,int ) ;
 int crypto_copydata (int,int ,int ,int,int ) ;
 int crypto_done (struct cryptop*) ;
 struct sec_session* crypto_get_driver_session (int ) ;
 int descriptors ;
 struct sec_softc* device_get_softc (int ) ;
 int memcpy (int ,int ,int) ;
 int sec_enqueue (struct sec_softc*) ;
 scalar_t__ sec_split_crp (struct cryptop*,struct cryptodesc**,struct cryptodesc**) ;
 int stub1 (struct sec_softc*,struct sec_session*,struct sec_desc*,struct cryptop*,int) ;

__attribute__((used)) static int
sec_process(device_t dev, struct cryptop *crp, int hint)
{
 struct sec_softc *sc = device_get_softc(dev);
 struct sec_desc *desc = ((void*)0);
 struct cryptodesc *mac, *enc;
 struct sec_session *ses;
 int buftype, error = 0;

 ses = crypto_get_driver_session(crp->crp_session);


 if (crp->crp_ilen > SEC_MAX_DMA_BLOCK_SIZE) {
  crp->crp_etype = E2BIG;
  crypto_done(crp);
  return (0);
 }


 if (sec_split_crp(crp, &enc, &mac)) {
  crp->crp_etype = EINVAL;
  crypto_done(crp);
  return (0);
 }

 SEC_LOCK(sc, descriptors);
 SEC_DESC_SYNC(sc, BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);


 if (SEC_FREE_DESC_CNT(sc) == 0 || sc->sc_shutdown) {
  sc->sc_blocked |= CRYPTO_SYMQ;
  SEC_UNLOCK(sc, descriptors);
  return (ERESTART);
 }


 desc = SEC_GET_FREE_DESC(sc);
 desc->sd_lt_used = 0;
 desc->sd_error = 0;
 desc->sd_crp = crp;

 if (crp->crp_flags & CRYPTO_F_IOV)
  buftype = SEC_UIO;
 else if (crp->crp_flags & CRYPTO_F_IMBUF)
  buftype = SEC_MBUF;
 else
  buftype = SEC_MEMORY;

 if (enc && enc->crd_flags & CRD_F_ENCRYPT) {
  if (enc->crd_flags & CRD_F_IV_EXPLICIT)
   memcpy(desc->sd_desc->shd_iv, enc->crd_iv,
       ses->ss_ivlen);
  else
   arc4rand(desc->sd_desc->shd_iv, ses->ss_ivlen, 0);

  if ((enc->crd_flags & CRD_F_IV_PRESENT) == 0)
   crypto_copyback(crp->crp_flags, crp->crp_buf,
       enc->crd_inject, ses->ss_ivlen,
       desc->sd_desc->shd_iv);
 } else if (enc) {
  if (enc->crd_flags & CRD_F_IV_EXPLICIT)
   memcpy(desc->sd_desc->shd_iv, enc->crd_iv,
       ses->ss_ivlen);
  else
   crypto_copydata(crp->crp_flags, crp->crp_buf,
       enc->crd_inject, ses->ss_ivlen,
       desc->sd_desc->shd_iv);
 }

 if (enc && enc->crd_flags & CRD_F_KEY_EXPLICIT) {
  if ((enc->crd_klen / 8) <= SEC_MAX_KEY_LEN) {
   ses->ss_klen = enc->crd_klen / 8;
   memcpy(ses->ss_key, enc->crd_key, ses->ss_klen);
  } else
   error = E2BIG;
 }

 if (!error && mac && mac->crd_flags & CRD_F_KEY_EXPLICIT) {
  if ((mac->crd_klen / 8) <= SEC_MAX_KEY_LEN) {
   ses->ss_mklen = mac->crd_klen / 8;
   memcpy(ses->ss_mkey, mac->crd_key, ses->ss_mklen);
  } else
   error = E2BIG;
 }

 if (!error) {
  memcpy(desc->sd_desc->shd_key, ses->ss_key, ses->ss_klen);
  memcpy(desc->sd_desc->shd_mkey, ses->ss_mkey, ses->ss_mklen);

  error = ses->ss_eu->sem_make_desc(sc, ses, desc, crp, buftype);
 }

 if (error) {
  SEC_DESC_FREE_POINTERS(desc);
  SEC_DESC_PUT_BACK_LT(sc, desc);
  SEC_PUT_BACK_FREE_DESC(sc);
  SEC_UNLOCK(sc, descriptors);
  crp->crp_etype = error;
  crypto_done(crp);
  return (0);
 }






 if ((hint & CRYPTO_HINT_MORE) && sc->sc_version == 3)
  desc->sd_desc->shd_dn = 0;
 else
  desc->sd_desc->shd_dn = 1;

 SEC_DESC_SYNC(sc, BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
 SEC_DESC_SYNC_POINTERS(desc, BUS_DMASYNC_POSTREAD |
     BUS_DMASYNC_POSTWRITE);
 SEC_DESC_FREE2READY(sc);
 SEC_UNLOCK(sc, descriptors);


 sec_enqueue(sc);

 return (0);
}
