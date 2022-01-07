
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_sc {int * sc_cdev; int buf_cv; int dev_lock; int * buf; int harvest_callout; } ;


 int M_TPM20 ;
 int callout_drain (int *) ;
 int cv_destroy (int *) ;
 int destroy_dev (int *) ;
 int free (int *,int ) ;
 int sx_destroy (int *) ;

void
tpm20_release(struct tpm_sc *sc)
{





 if (sc->buf != ((void*)0))
  free(sc->buf, M_TPM20);

 sx_destroy(&sc->dev_lock);
 cv_destroy(&sc->buf_cv);
 if (sc->sc_cdev != ((void*)0))
  destroy_dev(sc->sc_cdev);
}
