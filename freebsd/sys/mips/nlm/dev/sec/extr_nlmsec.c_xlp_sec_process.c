
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlp_sec_softc {int sc_needwakeup; } ;
struct xlp_sec_session {int hs_mlen; } ;
struct xlp_sec_command {unsigned int nsegs; int hashsrc; struct cryptodesc* enccrd; int cipherlen; int cipheroff; scalar_t__ hmacpad; struct cryptodesc* maccrd; int hashlen; int hashoff; scalar_t__ ivoff; int ivlen; int hash_dst_len; struct xlp_sec_session* ses; struct cryptop* crp; } ;
struct cryptop {int crp_etype; struct cryptodesc* crp_desc; int crp_session; int * crp_callback; } ;
struct cryptodesc {int crd_flags; scalar_t__ crd_alg; int crd_len; int crd_skip; scalar_t__ crd_inject; struct cryptodesc* crd_next; } ;
typedef int device_t ;


 int CRD_F_ENCRYPT ;
 int CRD_F_IV_EXPLICIT ;
 int CRD_F_IV_PRESENT ;
 scalar_t__ CRYPTO_3DES_CBC ;
 scalar_t__ CRYPTO_AES_CBC ;
 scalar_t__ CRYPTO_ARC4 ;
 scalar_t__ CRYPTO_DES_CBC ;
 scalar_t__ CRYPTO_MD5 ;
 scalar_t__ CRYPTO_MD5_HMAC ;
 scalar_t__ CRYPTO_SHA1 ;
 scalar_t__ CRYPTO_SHA1_HMAC ;
 int CRYPTO_SYMQ ;
 int EINVAL ;
 int ENOMEM ;
 int ERESTART ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 scalar_t__ creditleft ;
 int crypto_done (struct cryptop*) ;
 struct xlp_sec_session* crypto_get_driver_session (int ) ;
 struct xlp_sec_softc* device_get_softc (int ) ;
 struct xlp_sec_command* malloc (int,int ,int) ;
 int nlm_crypto_do_cipher (struct xlp_sec_softc*,struct xlp_sec_command*) ;
 int nlm_crypto_do_cipher_digest (struct xlp_sec_softc*,struct xlp_sec_command*) ;
 int nlm_crypto_do_digest (struct xlp_sec_softc*,struct xlp_sec_command*) ;
 int nlm_get_cipher_param (struct xlp_sec_command*) ;
 int nlm_get_digest_param (struct xlp_sec_command*) ;
 int xlp_alloc_cmd_params (struct xlp_sec_command*,unsigned int) ;
 int xlp_copyiv (struct xlp_sec_softc*,struct xlp_sec_command*,struct cryptodesc*) ;
 int xlp_free_cmd_params (struct xlp_sec_command*) ;
 int xlp_get_nsegs (struct cryptop*,unsigned int*) ;

__attribute__((used)) static int
xlp_sec_process(device_t dev, struct cryptop *crp, int hint)
{
 struct xlp_sec_softc *sc = device_get_softc(dev);
 struct xlp_sec_command *cmd = ((void*)0);
 int err = -1, ret = 0;
 struct cryptodesc *crd1, *crd2;
 struct xlp_sec_session *ses;
 unsigned int nsegs = 0;

 if (crp == ((void*)0) || crp->crp_callback == ((void*)0)) {
  return (EINVAL);
 }
 if (sc == ((void*)0)) {
  err = EINVAL;
  goto errout;
 }
 ses = crypto_get_driver_session(crp->crp_session);

 if ((cmd = malloc(sizeof(struct xlp_sec_command), M_DEVBUF,
     M_NOWAIT | M_ZERO)) == ((void*)0)) {
  err = ENOMEM;
  goto errout;
 }

 cmd->crp = crp;
 cmd->ses = ses;
 cmd->hash_dst_len = ses->hs_mlen;

 if ((crd1 = crp->crp_desc) == ((void*)0)) {
  err = EINVAL;
  goto errout;
 }
 crd2 = crd1->crd_next;

 if ((ret = xlp_get_nsegs(crp, &nsegs)) != 0) {
  err = EINVAL;
  goto errout;
 }
 if (((crd1 != ((void*)0)) && (crd1->crd_flags & CRD_F_IV_EXPLICIT)) ||
     ((crd2 != ((void*)0)) && (crd2->crd_flags & CRD_F_IV_EXPLICIT))) {

  nsegs += 1;
 }
 cmd->nsegs = nsegs;

 if ((err = xlp_alloc_cmd_params(cmd, nsegs)) != 0)
  goto errout;

 if ((crd1 != ((void*)0)) && (crd2 == ((void*)0))) {
  if (crd1->crd_alg == CRYPTO_DES_CBC ||
      crd1->crd_alg == CRYPTO_3DES_CBC ||
      crd1->crd_alg == CRYPTO_AES_CBC ||
      crd1->crd_alg == CRYPTO_ARC4) {
   cmd->enccrd = crd1;
   cmd->maccrd = ((void*)0);
   if ((ret = nlm_get_cipher_param(cmd)) != 0) {
    err = EINVAL;
    goto errout;
   }
   if (crd1->crd_flags & CRD_F_IV_EXPLICIT)
    cmd->cipheroff = cmd->ivlen;
   else
    cmd->cipheroff = cmd->enccrd->crd_skip;
   cmd->cipherlen = cmd->enccrd->crd_len;
   if (crd1->crd_flags & CRD_F_IV_PRESENT)
    cmd->ivoff = 0;
   else
    cmd->ivoff = cmd->enccrd->crd_inject;
   if ((err = xlp_copyiv(sc, cmd, cmd->enccrd)) != 0)
    goto errout;
   if ((err = nlm_crypto_do_cipher(sc, cmd)) != 0)
    goto errout;
  } else if (crd1->crd_alg == CRYPTO_MD5_HMAC ||
      crd1->crd_alg == CRYPTO_SHA1_HMAC ||
      crd1->crd_alg == CRYPTO_SHA1 ||
      crd1->crd_alg == CRYPTO_MD5) {
   cmd->enccrd = ((void*)0);
   cmd->maccrd = crd1;
   if ((ret = nlm_get_digest_param(cmd)) != 0) {
    err = EINVAL;
    goto errout;
   }
   cmd->hashoff = cmd->maccrd->crd_skip;
   cmd->hashlen = cmd->maccrd->crd_len;
   cmd->hmacpad = 0;
   cmd->hashsrc = 0;
   if ((err = nlm_crypto_do_digest(sc, cmd)) != 0)
    goto errout;
  } else {
   err = EINVAL;
   goto errout;
  }
 } else if( (crd1 != ((void*)0)) && (crd2 != ((void*)0)) ) {
  if ((crd1->crd_alg == CRYPTO_MD5_HMAC ||
      crd1->crd_alg == CRYPTO_SHA1_HMAC ||
      crd1->crd_alg == CRYPTO_MD5 ||
      crd1->crd_alg == CRYPTO_SHA1) &&
      (crd2->crd_alg == CRYPTO_DES_CBC ||
      crd2->crd_alg == CRYPTO_3DES_CBC ||
      crd2->crd_alg == CRYPTO_AES_CBC ||
      crd2->crd_alg == CRYPTO_ARC4)) {
   cmd->maccrd = crd1;
   cmd->enccrd = crd2;
  } else if ((crd1->crd_alg == CRYPTO_DES_CBC ||
      crd1->crd_alg == CRYPTO_ARC4 ||
      crd1->crd_alg == CRYPTO_3DES_CBC ||
      crd1->crd_alg == CRYPTO_AES_CBC) &&
      (crd2->crd_alg == CRYPTO_MD5_HMAC ||
      crd2->crd_alg == CRYPTO_SHA1_HMAC ||
      crd2->crd_alg == CRYPTO_MD5 ||
      crd2->crd_alg == CRYPTO_SHA1)) {
   cmd->enccrd = crd1;
   cmd->maccrd = crd2;
  } else {
   err = EINVAL;
   goto errout;
  }
  if ((ret = nlm_get_cipher_param(cmd)) != 0) {
   err = EINVAL;
   goto errout;
  }
  if ((ret = nlm_get_digest_param(cmd)) != 0) {
   err = EINVAL;
   goto errout;
  }
  cmd->ivoff = cmd->enccrd->crd_inject;
  cmd->hashoff = cmd->maccrd->crd_skip;
  cmd->hashlen = cmd->maccrd->crd_len;
  cmd->hmacpad = 0;
  if (cmd->enccrd->crd_flags & CRD_F_ENCRYPT)
   cmd->hashsrc = 1;
  else
   cmd->hashsrc = 0;
  cmd->cipheroff = cmd->enccrd->crd_skip;
  cmd->cipherlen = cmd->enccrd->crd_len;
  if ((err = xlp_copyiv(sc, cmd, cmd->enccrd)) != 0)
   goto errout;
  if ((err = nlm_crypto_do_cipher_digest(sc, cmd)) != 0)
   goto errout;
 } else {
  err = EINVAL;
  goto errout;
 }
 return (0);
errout:
 xlp_free_cmd_params(cmd);
 if (err == ERESTART) {
  sc->sc_needwakeup |= CRYPTO_SYMQ;
  creditleft = 0;
  return (err);
 }
 crp->crp_etype = err;
 crypto_done(crp);
 return (err);
}
