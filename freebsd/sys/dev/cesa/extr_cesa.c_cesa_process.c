
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cryptop {scalar_t__ crp_ilen; int crp_etype; int crp_buf; int crp_flags; int crp_session; struct cryptodesc* crp_desc; } ;
struct cryptodesc {scalar_t__ crd_alg; int crd_flags; int crd_klen; int crd_key; int crd_inject; int crd_iv; struct cryptodesc* crd_next; } ;
struct cesa_softc {int sc_data_dtag; int sc_blocked; } ;
struct cesa_session {int cs_ivlen; int cs_klen; int cs_key; } ;
struct cesa_request {int cr_dmap; TYPE_1__* cr_csd; struct cesa_session* cr_cs; struct cryptodesc* cr_mac; struct cryptodesc* cr_enc; struct cryptop* cr_crp; } ;
typedef int device_t ;
struct TYPE_2__ {int csd_iv; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int CESA_LOCK (struct cesa_softc*,struct cesa_softc*) ;
 int CESA_MAX_KEY_LEN ;
 int CESA_MAX_MKEY_LEN ;
 scalar_t__ CESA_MAX_REQUEST_SIZE ;
 int CESA_UNLOCK (struct cesa_softc*,struct cesa_softc*) ;
 int CRD_F_ENCRYPT ;
 int CRD_F_IV_EXPLICIT ;
 int CRD_F_IV_PRESENT ;
 int CRD_F_KEY_EXPLICIT ;
 scalar_t__ CRYPTO_AES_CBC ;
 int CRYPTO_HINT_MORE ;
 int CRYPTO_SYMQ ;
 void* E2BIG ;
 int EINVAL ;
 int ERESTART ;
 int arc4rand (int ,int,int ) ;
 int bus_dmamap_sync (int ,int ,int) ;
 struct cesa_request* cesa_alloc_request (struct cesa_softc*) ;
 int cesa_create_chain (struct cesa_softc*,struct cesa_request*) ;
 int cesa_enqueue_request (struct cesa_softc*,struct cesa_request*) ;
 int cesa_execute (struct cesa_softc*) ;
 int cesa_free_request (struct cesa_softc*,struct cesa_request*) ;
 scalar_t__ cesa_is_hash (scalar_t__) ;
 int cesa_prep_aes_key (struct cesa_session*) ;
 int cesa_set_mkey (struct cesa_session*,scalar_t__,int ,int) ;
 int cesa_sync_desc (struct cesa_softc*,int) ;
 int crypto_copyback (int ,int ,int ,int,int ) ;
 int crypto_copydata (int ,int ,int ,int,int ) ;
 int crypto_done (struct cryptop*) ;
 struct cesa_session* crypto_get_driver_session (int ) ;
 struct cesa_softc* device_get_softc (int ) ;
 int memcpy (int ,int ,int) ;
 struct cesa_softc* sessions ;

__attribute__((used)) static int
cesa_process(device_t dev, struct cryptop *crp, int hint)
{
 struct cesa_request *cr;
 struct cesa_session *cs;
 struct cryptodesc *crd;
 struct cryptodesc *enc;
 struct cryptodesc *mac;
 struct cesa_softc *sc;
 int error;

 sc = device_get_softc(dev);
 crd = crp->crp_desc;
 enc = ((void*)0);
 mac = ((void*)0);
 error = 0;

 cs = crypto_get_driver_session(crp->crp_session);


 if (crp->crp_ilen > CESA_MAX_REQUEST_SIZE) {
  crp->crp_etype = E2BIG;
  crypto_done(crp);
  return (0);
 }

 if (cesa_is_hash(crd->crd_alg))
  mac = crd;
 else
  enc = crd;

 crd = crd->crd_next;

 if (crd) {
  if (!enc && !cesa_is_hash(crd->crd_alg))
   enc = crd;

  if (!mac && cesa_is_hash(crd->crd_alg))
   mac = crd;

  if (crd->crd_next || !(enc && mac)) {
   crp->crp_etype = EINVAL;
   crypto_done(crp);
   return (0);
  }
 }





 cr = cesa_alloc_request(sc);
 if (!cr) {
  CESA_LOCK(sc, sc);
  sc->sc_blocked = CRYPTO_SYMQ;
  CESA_UNLOCK(sc, sc);
  return (ERESTART);
 }


 cr->cr_crp = crp;
 cr->cr_enc = enc;
 cr->cr_mac = mac;
 cr->cr_cs = cs;

 CESA_LOCK(sc, sessions);
 cesa_sync_desc(sc, BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);

 if (enc && enc->crd_flags & CRD_F_ENCRYPT) {
  if (enc->crd_flags & CRD_F_IV_EXPLICIT)
   memcpy(cr->cr_csd->csd_iv, enc->crd_iv, cs->cs_ivlen);
  else
   arc4rand(cr->cr_csd->csd_iv, cs->cs_ivlen, 0);

  if ((enc->crd_flags & CRD_F_IV_PRESENT) == 0)
   crypto_copyback(crp->crp_flags, crp->crp_buf,
       enc->crd_inject, cs->cs_ivlen, cr->cr_csd->csd_iv);
 } else if (enc) {
  if (enc->crd_flags & CRD_F_IV_EXPLICIT)
   memcpy(cr->cr_csd->csd_iv, enc->crd_iv, cs->cs_ivlen);
  else
   crypto_copydata(crp->crp_flags, crp->crp_buf,
       enc->crd_inject, cs->cs_ivlen, cr->cr_csd->csd_iv);
 }

 if (enc && enc->crd_flags & CRD_F_KEY_EXPLICIT) {
  if ((enc->crd_klen / 8) <= CESA_MAX_KEY_LEN) {
   cs->cs_klen = enc->crd_klen / 8;
   memcpy(cs->cs_key, enc->crd_key, cs->cs_klen);
   if (enc->crd_alg == CRYPTO_AES_CBC)
    error = cesa_prep_aes_key(cs);
  } else
   error = E2BIG;
 }

 if (!error && mac && mac->crd_flags & CRD_F_KEY_EXPLICIT) {
  if ((mac->crd_klen / 8) <= CESA_MAX_MKEY_LEN)
   error = cesa_set_mkey(cs, mac->crd_alg, mac->crd_key,
       mac->crd_klen / 8);
  else
   error = E2BIG;
 }


 if (!error)
  error = cesa_create_chain(sc, cr);

 cesa_sync_desc(sc, BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
 CESA_UNLOCK(sc, sessions);

 if (error) {
  cesa_free_request(sc, cr);
  crp->crp_etype = error;
  crypto_done(crp);
  return (0);
 }

 bus_dmamap_sync(sc->sc_data_dtag, cr->cr_dmap, BUS_DMASYNC_PREREAD |
     BUS_DMASYNC_PREWRITE);


 cesa_enqueue_request(sc, cr);


 if ((hint & CRYPTO_HINT_MORE) == 0)
  cesa_execute(sc);

 return (0);
}
