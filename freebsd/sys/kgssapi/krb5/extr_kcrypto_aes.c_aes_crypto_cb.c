
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cryptop {int crp_etype; int crp_flags; int crp_session; scalar_t__ crp_opaque; } ;
struct aes_state {int as_lock; } ;


 int CRYPTOCAP_F_SYNC ;
 int CRYPTO_F_DONE ;
 int EAGAIN ;
 int crypto_dispatch (struct cryptop*) ;
 int crypto_ses2caps (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (struct cryptop*) ;

__attribute__((used)) static int
aes_crypto_cb(struct cryptop *crp)
{
 int error;
 struct aes_state *as = (struct aes_state *) crp->crp_opaque;

 if (crypto_ses2caps(crp->crp_session) & CRYPTOCAP_F_SYNC)
  return (0);

 error = crp->crp_etype;
 if (error == EAGAIN)
  error = crypto_dispatch(crp);
 mtx_lock(&as->as_lock);
 if (error || (crp->crp_flags & CRYPTO_F_DONE))
  wakeup(crp);
 mtx_unlock(&as->as_lock);

 return (0);
}
