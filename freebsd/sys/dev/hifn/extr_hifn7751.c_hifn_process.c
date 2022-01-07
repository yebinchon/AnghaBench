
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio {int dummy; } ;
struct mbuf {int dummy; } ;
struct hifn_softc {int sc_needwakeup; int sc_dev; } ;
struct hifn_session {int hs_iv; } ;
struct hifn_command {int cry_masks; int cklen; int mac_masks; struct hifn_softc* softc; struct hifn_session* session; struct cryptop* crp; scalar_t__ mac; int base_masks; struct cryptodesc* maccrd; int ck; scalar_t__ iv; struct cryptodesc* enccrd; struct uio* dst_io; struct uio* src_io; struct mbuf* dst_m; struct mbuf* src_m; } ;
struct cryptop {int crp_flags; int crp_etype; scalar_t__ crp_buf; struct cryptodesc* crp_desc; int crp_session; int * crp_callback; } ;
struct cryptodesc {int crd_alg; int crd_flags; int crd_klen; int crd_key; int crd_inject; int crd_iv; struct cryptodesc* crd_next; } ;
typedef int device_t ;
struct TYPE_2__ {int hst_nomem; int hst_invalid; } ;


 int CRD_F_ENCRYPT ;
 int CRD_F_IV_EXPLICIT ;
 int CRD_F_IV_PRESENT ;
 int CRD_F_KEY_EXPLICIT ;




 int CRYPTO_F_IMBUF ;
 int CRYPTO_F_IOV ;




 int CRYPTO_SYMQ ;
 int EINVAL ;
 int ENOMEM ;
 int ERESTART ;
 int HIFN_AES_IV_LENGTH ;
 int HIFN_BASE_CMD_CRYPT ;
 int HIFN_BASE_CMD_DECODE ;
 int HIFN_BASE_CMD_MAC ;
 int HIFN_CRYPT_CMD_ALG_3DES ;
 int HIFN_CRYPT_CMD_ALG_AES ;
 int HIFN_CRYPT_CMD_ALG_DES ;
 int HIFN_CRYPT_CMD_ALG_MASK ;
 int HIFN_CRYPT_CMD_ALG_RC4 ;
 int HIFN_CRYPT_CMD_KSZ_128 ;
 int HIFN_CRYPT_CMD_KSZ_192 ;
 int HIFN_CRYPT_CMD_KSZ_256 ;
 int HIFN_CRYPT_CMD_MODE_CBC ;
 int HIFN_CRYPT_CMD_NEW_IV ;
 int HIFN_CRYPT_CMD_NEW_KEY ;
 int HIFN_IV_LENGTH ;
 int HIFN_MAC_CMD_ALG_MD5 ;
 int HIFN_MAC_CMD_ALG_SHA1 ;
 int HIFN_MAC_CMD_MODE_HASH ;
 int HIFN_MAC_CMD_MODE_HMAC ;
 int HIFN_MAC_CMD_NEW_KEY ;
 int HIFN_MAC_CMD_POS_IPSEC ;
 int HIFN_MAC_CMD_RESULT ;
 int HIFN_MAC_CMD_TRUNC ;
 scalar_t__ HIFN_MAC_KEY_LENGTH ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int bcopy (int ,scalar_t__,int) ;
 int bzero (scalar_t__,scalar_t__) ;
 int crypto_copyback (int,scalar_t__,int ,int,scalar_t__) ;
 int crypto_copydata (int,scalar_t__,int ,int,scalar_t__) ;
 int crypto_done (struct cryptop*) ;
 struct hifn_session* crypto_get_driver_session (int ) ;
 struct hifn_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int free (struct hifn_command*,int ) ;
 int hifn_crypto (struct hifn_softc*,struct hifn_command*,struct cryptop*,int) ;
 scalar_t__ hifn_debug ;
 TYPE_1__ hifnstats ;
 struct hifn_command* malloc (int,int ,int) ;

__attribute__((used)) static int
hifn_process(device_t dev, struct cryptop *crp, int hint)
{
 struct hifn_softc *sc = device_get_softc(dev);
 struct hifn_command *cmd = ((void*)0);
 int err, ivlen;
 struct cryptodesc *crd1, *crd2, *maccrd, *enccrd;
 struct hifn_session *ses;

 if (crp == ((void*)0) || crp->crp_callback == ((void*)0)) {
  hifnstats.hst_invalid++;
  return (EINVAL);
 }

 ses = crypto_get_driver_session(crp->crp_session);
 cmd = malloc(sizeof(struct hifn_command), M_DEVBUF, M_NOWAIT | M_ZERO);
 if (cmd == ((void*)0)) {
  hifnstats.hst_nomem++;
  err = ENOMEM;
  goto errout;
 }

 if (crp->crp_flags & CRYPTO_F_IMBUF) {
  cmd->src_m = (struct mbuf *)crp->crp_buf;
  cmd->dst_m = (struct mbuf *)crp->crp_buf;
 } else if (crp->crp_flags & CRYPTO_F_IOV) {
  cmd->src_io = (struct uio *)crp->crp_buf;
  cmd->dst_io = (struct uio *)crp->crp_buf;
 } else {
  err = EINVAL;
  goto errout;
 }

 crd1 = crp->crp_desc;
 if (crd1 == ((void*)0)) {
  err = EINVAL;
  goto errout;
 }
 crd2 = crd1->crd_next;

 if (crd2 == ((void*)0)) {
  if (crd1->crd_alg == 130 ||
      crd1->crd_alg == 128 ||
      crd1->crd_alg == 129 ||
      crd1->crd_alg == 131) {
   maccrd = crd1;
   enccrd = ((void*)0);
  } else if (crd1->crd_alg == 132 ||
      crd1->crd_alg == 135 ||
      crd1->crd_alg == 134 ||
      crd1->crd_alg == 133) {
   if ((crd1->crd_flags & CRD_F_ENCRYPT) == 0)
    cmd->base_masks |= HIFN_BASE_CMD_DECODE;
   maccrd = ((void*)0);
   enccrd = crd1;
  } else {
   err = EINVAL;
   goto errout;
  }
 } else {
  if ((crd1->crd_alg == 130 ||
                     crd1->crd_alg == 128 ||
                     crd1->crd_alg == 131 ||
                     crd1->crd_alg == 129) &&
      (crd2->crd_alg == 132 ||
       crd2->crd_alg == 135 ||
       crd2->crd_alg == 134 ||
       crd2->crd_alg == 133) &&
      ((crd2->crd_flags & CRD_F_ENCRYPT) == 0)) {
   cmd->base_masks = HIFN_BASE_CMD_DECODE;
   maccrd = crd1;
   enccrd = crd2;
  } else if ((crd1->crd_alg == 132 ||
       crd1->crd_alg == 133 ||
       crd1->crd_alg == 135 ||
       crd1->crd_alg == 134) &&
      (crd2->crd_alg == 130 ||
                     crd2->crd_alg == 128 ||
                     crd2->crd_alg == 131 ||
                     crd2->crd_alg == 129) &&
      (crd1->crd_flags & CRD_F_ENCRYPT)) {
   enccrd = crd1;
   maccrd = crd2;
  } else {



   err = EINVAL;
   goto errout;
  }
 }

 if (enccrd) {
  cmd->enccrd = enccrd;
  cmd->base_masks |= HIFN_BASE_CMD_CRYPT;
  switch (enccrd->crd_alg) {
  case 133:
   cmd->cry_masks |= HIFN_CRYPT_CMD_ALG_RC4;
   break;
  case 132:
   cmd->cry_masks |= HIFN_CRYPT_CMD_ALG_DES |
       HIFN_CRYPT_CMD_MODE_CBC |
       HIFN_CRYPT_CMD_NEW_IV;
   break;
  case 135:
   cmd->cry_masks |= HIFN_CRYPT_CMD_ALG_3DES |
       HIFN_CRYPT_CMD_MODE_CBC |
       HIFN_CRYPT_CMD_NEW_IV;
   break;
  case 134:
   cmd->cry_masks |= HIFN_CRYPT_CMD_ALG_AES |
       HIFN_CRYPT_CMD_MODE_CBC |
       HIFN_CRYPT_CMD_NEW_IV;
   break;
  default:
   err = EINVAL;
   goto errout;
  }
  if (enccrd->crd_alg != 133) {
   ivlen = ((enccrd->crd_alg == 134) ?
    HIFN_AES_IV_LENGTH : HIFN_IV_LENGTH);
   if (enccrd->crd_flags & CRD_F_ENCRYPT) {
    if (enccrd->crd_flags & CRD_F_IV_EXPLICIT)
     bcopy(enccrd->crd_iv, cmd->iv, ivlen);
    else
     bcopy(ses->hs_iv, cmd->iv, ivlen);

    if ((enccrd->crd_flags & CRD_F_IV_PRESENT)
        == 0) {
     crypto_copyback(crp->crp_flags,
         crp->crp_buf, enccrd->crd_inject,
         ivlen, cmd->iv);
    }
   } else {
    if (enccrd->crd_flags & CRD_F_IV_EXPLICIT)
     bcopy(enccrd->crd_iv, cmd->iv, ivlen);
    else {
     crypto_copydata(crp->crp_flags,
         crp->crp_buf, enccrd->crd_inject,
         ivlen, cmd->iv);
    }
   }
  }

  if (enccrd->crd_flags & CRD_F_KEY_EXPLICIT)
   cmd->cry_masks |= HIFN_CRYPT_CMD_NEW_KEY;
  cmd->ck = enccrd->crd_key;
  cmd->cklen = enccrd->crd_klen >> 3;
  cmd->cry_masks |= HIFN_CRYPT_CMD_NEW_KEY;




  if ((cmd->cry_masks & HIFN_CRYPT_CMD_ALG_MASK) ==
      HIFN_CRYPT_CMD_ALG_AES) {
   switch (cmd->cklen) {
   case 16:
    cmd->cry_masks |= HIFN_CRYPT_CMD_KSZ_128;
    break;
   case 24:
    cmd->cry_masks |= HIFN_CRYPT_CMD_KSZ_192;
    break;
   case 32:
    cmd->cry_masks |= HIFN_CRYPT_CMD_KSZ_256;
    break;
   default:
    err = EINVAL;
    goto errout;
   }
  }
 }

 if (maccrd) {
  cmd->maccrd = maccrd;
  cmd->base_masks |= HIFN_BASE_CMD_MAC;

  switch (maccrd->crd_alg) {
  case 131:
   cmd->mac_masks |= HIFN_MAC_CMD_ALG_MD5 |
       HIFN_MAC_CMD_RESULT | HIFN_MAC_CMD_MODE_HASH |
       HIFN_MAC_CMD_POS_IPSEC;
                       break;
  case 130:
   cmd->mac_masks |= HIFN_MAC_CMD_ALG_MD5 |
       HIFN_MAC_CMD_RESULT | HIFN_MAC_CMD_MODE_HMAC |
       HIFN_MAC_CMD_POS_IPSEC | HIFN_MAC_CMD_TRUNC;
   break;
  case 129:
   cmd->mac_masks |= HIFN_MAC_CMD_ALG_SHA1 |
       HIFN_MAC_CMD_RESULT | HIFN_MAC_CMD_MODE_HASH |
       HIFN_MAC_CMD_POS_IPSEC;
   break;
  case 128:
   cmd->mac_masks |= HIFN_MAC_CMD_ALG_SHA1 |
       HIFN_MAC_CMD_RESULT | HIFN_MAC_CMD_MODE_HMAC |
       HIFN_MAC_CMD_POS_IPSEC | HIFN_MAC_CMD_TRUNC;
   break;
  }

  if (maccrd->crd_alg == 128 ||
       maccrd->crd_alg == 130) {
   cmd->mac_masks |= HIFN_MAC_CMD_NEW_KEY;
   bcopy(maccrd->crd_key, cmd->mac, maccrd->crd_klen >> 3);
   bzero(cmd->mac + (maccrd->crd_klen >> 3),
       HIFN_MAC_KEY_LENGTH - (maccrd->crd_klen >> 3));
  }
 }

 cmd->crp = crp;
 cmd->session = ses;
 cmd->softc = sc;

 err = hifn_crypto(sc, cmd, crp, hint);
 if (!err) {
  return 0;
 } else if (err == ERESTART) {
  free(cmd, M_DEVBUF);
  sc->sc_needwakeup |= CRYPTO_SYMQ;
  return (err);
 }

errout:
 if (cmd != ((void*)0))
  free(cmd, M_DEVBUF);
 if (err == EINVAL)
  hifnstats.hst_invalid++;
 else
  hifnstats.hst_nomem++;
 crp->crp_etype = err;
 crypto_done(crp);
 return (err);
}
