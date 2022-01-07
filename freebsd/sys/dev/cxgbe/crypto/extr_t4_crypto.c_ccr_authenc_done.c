
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cryptop {int crp_buf; int crp_flags; struct cryptodesc* crp_desc; } ;
struct cryptodesc {int crd_flags; int crd_inject; } ;
struct cpl_fw6_pld {int * data; } ;
struct ccr_softc {int dummy; } ;
struct TYPE_2__ {int hash_len; } ;
struct ccr_session {TYPE_1__ hmac; } ;
typedef int c_caddr_t ;


 int CHK_PAD_ERR_BIT (int ) ;
 int CRD_F_ENCRYPT ;
 int EBADMSG ;
 int be64toh (int ) ;
 int crypto_copyback (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int
ccr_authenc_done(struct ccr_softc *sc, struct ccr_session *s,
    struct cryptop *crp, const struct cpl_fw6_pld *cpl, int error)
{
 struct cryptodesc *crd;
 crd = crp->crp_desc;
 if (error == EBADMSG && !CHK_PAD_ERR_BIT(be64toh(cpl->data[0])) &&
     !(crd->crd_flags & CRD_F_ENCRYPT)) {
  crypto_copyback(crp->crp_flags, crp->crp_buf, crd->crd_inject,
      s->hmac.hash_len, (c_caddr_t)(cpl + 1));
  error = 0;
 }
 return (error);
}
