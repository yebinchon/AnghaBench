
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int q_ctx; int q_mcr; } ;
struct TYPE_6__ {int rng_buf; TYPE_2__ rng_q; } ;
struct ubsec_softc {int sc_flags; int sc_sr; int sc_dmat; int sc_irq; int sc_ih; int sc_mcr2lock; TYPE_3__ sc_rng; int sc_freeqlock; int sc_mcr1lock; int sc_freequeue; scalar_t__ sc_rndtest; int sc_cid; int sc_rngto; } ;
struct ubsec_q {TYPE_1__* q_dma; } ;
typedef int device_t ;
struct TYPE_4__ {int d_alloc; } ;


 int BS_BAR ;
 int BS_CTRL ;
 int BS_CTRL_DMAERR ;
 int BS_CTRL_MCR1INT ;
 int BS_CTRL_MCR2INT ;
 int M_DEVBUF ;
 int READ_REG (struct ubsec_softc*,int ) ;
 int SIMPLEQ_EMPTY (int *) ;
 struct ubsec_q* SIMPLEQ_FIRST (int *) ;
 int SIMPLEQ_REMOVE_HEAD (int *,int ) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int UBS_FLAGS_RNG ;
 int WRITE_REG (struct ubsec_softc*,int ,int) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int callout_stop (int *) ;
 int crypto_unregister_all (int ) ;
 struct ubsec_softc* device_get_softc (int ) ;
 int free (struct ubsec_q*,int ) ;
 int mtx_destroy (int *) ;
 int q_next ;
 int rndtest_detach (scalar_t__) ;
 int ubsec_dma_free (struct ubsec_softc*,int *) ;

__attribute__((used)) static int
ubsec_detach(device_t dev)
{
 struct ubsec_softc *sc = device_get_softc(dev);




 WRITE_REG(sc, BS_CTRL, READ_REG(sc, BS_CTRL) &~
  (BS_CTRL_MCR2INT | BS_CTRL_MCR1INT | BS_CTRL_DMAERR));

 callout_stop(&sc->sc_rngto);

 crypto_unregister_all(sc->sc_cid);






 while (!SIMPLEQ_EMPTY(&sc->sc_freequeue)) {
  struct ubsec_q *q;

  q = SIMPLEQ_FIRST(&sc->sc_freequeue);
  SIMPLEQ_REMOVE_HEAD(&sc->sc_freequeue, q_next);
  ubsec_dma_free(sc, &q->q_dma->d_alloc);
  free(q, M_DEVBUF);
 }
 mtx_destroy(&sc->sc_mcr1lock);
 mtx_destroy(&sc->sc_freeqlock);

 if (sc->sc_flags & UBS_FLAGS_RNG) {
  ubsec_dma_free(sc, &sc->sc_rng.rng_q.q_mcr);
  ubsec_dma_free(sc, &sc->sc_rng.rng_q.q_ctx);
  ubsec_dma_free(sc, &sc->sc_rng.rng_buf);
 }

 mtx_destroy(&sc->sc_mcr2lock);

 bus_generic_detach(dev);
 bus_teardown_intr(dev, sc->sc_irq, sc->sc_ih);
 bus_release_resource(dev, SYS_RES_IRQ, 0, sc->sc_irq);

 bus_dma_tag_destroy(sc->sc_dmat);
 bus_release_resource(dev, SYS_RES_MEMORY, BS_BAR, sc->sc_sr);

 return (0);
}
