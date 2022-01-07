
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct krb5_key_state {struct des1_state* ks_priv; } ;
struct des1_state {int ds_lock; int ds_session; } ;
struct cryptop {int crp_flags; int crp_callback; void* crp_opaque; void* crp_buf; int crp_session; struct cryptodesc* crp_desc; } ;
struct cryptodesc {size_t crd_skip; size_t crd_len; int crd_flags; int crd_alg; int * crd_next; int crd_iv; } ;


 int CRD_F_IV_EXPLICIT ;
 int CRD_F_IV_PRESENT ;
 int CRYPTOCAP_F_SYNC ;
 int CRYPTO_DES_CBC ;
 int CRYPTO_F_CBIFSYNC ;
 int CRYPTO_F_DONE ;
 int bcopy (void*,int ,int) ;
 int bzero (int ,int) ;
 int crypto_dispatch (struct cryptop*) ;
 int crypto_freereq (struct cryptop*) ;
 struct cryptop* crypto_getreq (int) ;
 int crypto_ses2caps (int ) ;
 int des1_crypto_cb ;
 int msleep (struct cryptop*,int *,int ,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
des1_encrypt_1(const struct krb5_key_state *ks, int buftype, void *buf,
    size_t skip, size_t len, void *ivec, int encdec)
{
 struct des1_state *ds = ks->ks_priv;
 struct cryptop *crp;
 struct cryptodesc *crd;
 int error;

 crp = crypto_getreq(1);
 crd = crp->crp_desc;

 crd->crd_skip = skip;
 crd->crd_len = len;
 crd->crd_flags = CRD_F_IV_EXPLICIT | CRD_F_IV_PRESENT | encdec;
 if (ivec) {
  bcopy(ivec, crd->crd_iv, 8);
 } else {
  bzero(crd->crd_iv, 8);
 }
 crd->crd_next = ((void*)0);
 crd->crd_alg = CRYPTO_DES_CBC;

 crp->crp_session = ds->ds_session;
 crp->crp_flags = buftype | CRYPTO_F_CBIFSYNC;
 crp->crp_buf = buf;
 crp->crp_opaque = (void *) ds;
 crp->crp_callback = des1_crypto_cb;

 error = crypto_dispatch(crp);

 if ((crypto_ses2caps(ds->ds_session) & CRYPTOCAP_F_SYNC) == 0) {
  mtx_lock(&ds->ds_lock);
  if (!error && !(crp->crp_flags & CRYPTO_F_DONE))
   error = msleep(crp, &ds->ds_lock, 0, "gssdes", 0);
  mtx_unlock(&ds->ds_lock);
 }

 crypto_freereq(crp);
}
