
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct krb5_key_state {struct aes_state* ks_priv; } ;
struct cryptop {int crp_flags; int crp_callback; void* crp_opaque; void* crp_buf; int crp_session; struct cryptodesc* crp_desc; } ;
struct cryptodesc {size_t crd_skip; size_t crd_len; int crd_flags; int crd_alg; int * crd_next; int crd_iv; } ;
struct aes_state {int as_lock; int as_session_aes; } ;


 int CRD_F_IV_EXPLICIT ;
 int CRD_F_IV_PRESENT ;
 int CRYPTOCAP_F_SYNC ;
 int CRYPTO_AES_CBC ;
 int CRYPTO_F_CBIFSYNC ;
 int CRYPTO_F_DONE ;
 int aes_crypto_cb ;
 int bcopy (void*,int ,int) ;
 int bzero (int ,int) ;
 int crypto_dispatch (struct cryptop*) ;
 int crypto_freereq (struct cryptop*) ;
 struct cryptop* crypto_getreq (int) ;
 int crypto_ses2caps (int ) ;
 int msleep (struct cryptop*,int *,int ,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
aes_encrypt_1(const struct krb5_key_state *ks, int buftype, void *buf,
    size_t skip, size_t len, void *ivec, int encdec)
{
 struct aes_state *as = ks->ks_priv;
 struct cryptop *crp;
 struct cryptodesc *crd;
 int error;

 crp = crypto_getreq(1);
 crd = crp->crp_desc;

 crd->crd_skip = skip;
 crd->crd_len = len;
 crd->crd_flags = CRD_F_IV_EXPLICIT | CRD_F_IV_PRESENT | encdec;
 if (ivec) {
  bcopy(ivec, crd->crd_iv, 16);
 } else {
  bzero(crd->crd_iv, 16);
 }
 crd->crd_next = ((void*)0);
 crd->crd_alg = CRYPTO_AES_CBC;

 crp->crp_session = as->as_session_aes;
 crp->crp_flags = buftype | CRYPTO_F_CBIFSYNC;
 crp->crp_buf = buf;
 crp->crp_opaque = (void *) as;
 crp->crp_callback = aes_crypto_cb;

 error = crypto_dispatch(crp);

 if ((crypto_ses2caps(as->as_session_aes) & CRYPTOCAP_F_SYNC) == 0) {
  mtx_lock(&as->as_lock);
  if (!error && !(crp->crp_flags & CRYPTO_F_DONE))
   error = msleep(crp, &as->as_lock, 0, "gssaes", 0);
  mtx_unlock(&as->as_lock);
 }

 crypto_freereq(crp);
}
