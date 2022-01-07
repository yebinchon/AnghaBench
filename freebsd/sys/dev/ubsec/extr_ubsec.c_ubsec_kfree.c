
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ubsec_softc {int sc_dev; } ;
struct TYPE_4__ {int q_ctx; int q_mcr; } ;
struct TYPE_3__ {int q_ctx; int q_mcr; } ;
struct ubsec_q2_rsapriv {int rpr_msgout; int rpr_msgin; TYPE_2__ rpr_q; int me_epb; int me_C; int me_E; int me_M; TYPE_1__ me_q; } ;
struct ubsec_q2_modexp {int rpr_msgout; int rpr_msgin; TYPE_2__ rpr_q; int me_epb; int me_C; int me_E; int me_M; TYPE_1__ me_q; } ;
struct ubsec_q2 {int q_type; } ;


 int M_DEVBUF ;


 int device_printf (int ,char*,int) ;
 int free (struct ubsec_q2_rsapriv*,int ) ;
 int ubsec_dma_free (struct ubsec_softc*,int *) ;

__attribute__((used)) static void
ubsec_kfree(struct ubsec_softc *sc, struct ubsec_q2 *q)
{
 switch (q->q_type) {
 case 129: {
  struct ubsec_q2_modexp *me = (struct ubsec_q2_modexp *)q;

  ubsec_dma_free(sc, &me->me_q.q_mcr);
  ubsec_dma_free(sc, &me->me_q.q_ctx);
  ubsec_dma_free(sc, &me->me_M);
  ubsec_dma_free(sc, &me->me_E);
  ubsec_dma_free(sc, &me->me_C);
  ubsec_dma_free(sc, &me->me_epb);
  free(me, M_DEVBUF);
  break;
 }
 case 128: {
  struct ubsec_q2_rsapriv *rp = (struct ubsec_q2_rsapriv *)q;

  ubsec_dma_free(sc, &rp->rpr_q.q_mcr);
  ubsec_dma_free(sc, &rp->rpr_q.q_ctx);
  ubsec_dma_free(sc, &rp->rpr_msgin);
  ubsec_dma_free(sc, &rp->rpr_msgout);
  free(rp, M_DEVBUF);
  break;
 }
 default:
  device_printf(sc->sc_dev, "invalid kfree 0x%x\n", q->q_type);
  break;
 }
}
