
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct glxsb_session* to_ses; struct cryptop* to_crp; struct cryptodesc* to_enccrd; struct cryptodesc* to_maccrd; } ;
struct glxsb_softc {scalar_t__ sc_task_count; int sc_cryptotask; int sc_tq; int sc_task_mtx; TYPE_1__ sc_to; } ;
struct glxsb_session {int dummy; } ;
struct cryptop {int crp_etype; int crp_session; struct cryptodesc* crp_desc; int * crp_callback; } ;
struct cryptodesc {int crd_alg; int crd_len; struct cryptodesc* crd_next; } ;
typedef int device_t ;


 int AES_BLOCK_LEN ;
 int EINVAL ;
 int ERESTART ;
 int crypto_done (struct cryptop*) ;
 struct glxsb_session* crypto_get_driver_session (int ) ;
 struct glxsb_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static int
glxsb_crypto_process(device_t dev, struct cryptop *crp, int hint)
{
 struct glxsb_softc *sc = device_get_softc(dev);
 struct glxsb_session *ses;
 struct cryptodesc *crd, *enccrd, *maccrd;
 int error = 0;

 enccrd = maccrd = ((void*)0);


 if (crp == ((void*)0))
  return (EINVAL);

 if (crp->crp_callback == ((void*)0) || crp->crp_desc == ((void*)0)) {
  error = EINVAL;
  goto fail;
 }

 for (crd = crp->crp_desc; crd != ((void*)0); crd = crd->crd_next) {
  switch (crd->crd_alg) {
  case 133:
  case 134:
  case 131:
  case 132:
  case 130:
  case 129:
  case 128:
   if (maccrd != ((void*)0)) {
    error = EINVAL;
    goto fail;
   }
   maccrd = crd;
   break;
  case 135:
   if (enccrd != ((void*)0)) {
    error = EINVAL;
    goto fail;
   }
   enccrd = crd;
   break;
  default:
   error = EINVAL;
   goto fail;
  }
 }

 if (enccrd == ((void*)0) || enccrd->crd_len % AES_BLOCK_LEN != 0) {
  error = EINVAL;
  goto fail;
 }

 ses = crypto_get_driver_session(crp->crp_session);

 mtx_lock(&sc->sc_task_mtx);
 if (sc->sc_task_count != 0) {
  mtx_unlock(&sc->sc_task_mtx);
  return (ERESTART);
 }
 sc->sc_task_count++;

 sc->sc_to.to_maccrd = maccrd;
 sc->sc_to.to_enccrd = enccrd;
 sc->sc_to.to_crp = crp;
 sc->sc_to.to_ses = ses;
 mtx_unlock(&sc->sc_task_mtx);

 taskqueue_enqueue(sc->sc_tq, &sc->sc_cryptotask);
 return(0);

fail:
 crp->crp_etype = error;
 crypto_done(crp);
 return (error);
}
