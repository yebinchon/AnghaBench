
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccr_softc {int detaching; TYPE_1__* adapter; int sg_crp; int sg_ulptx; int sg_dsgl; int iv_aad_buf; int sg_iv_aad; int lock; int cid; } ;
typedef int device_t ;
struct TYPE_2__ {int * ccr_softc; } ;


 int M_CCR ;
 int crypto_unregister_all (int ) ;
 struct ccr_softc* device_get_softc (int ) ;
 int free (int ,int ) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sglist_free (int ) ;

__attribute__((used)) static int
ccr_detach(device_t dev)
{
 struct ccr_softc *sc;

 sc = device_get_softc(dev);

 mtx_lock(&sc->lock);
 sc->detaching = 1;
 mtx_unlock(&sc->lock);

 crypto_unregister_all(sc->cid);

 mtx_destroy(&sc->lock);
 sglist_free(sc->sg_iv_aad);
 free(sc->iv_aad_buf, M_CCR);
 sglist_free(sc->sg_dsgl);
 sglist_free(sc->sg_ulptx);
 sglist_free(sc->sg_crp);
 sc->adapter->ccr_softc = ((void*)0);
 return (0);
}
