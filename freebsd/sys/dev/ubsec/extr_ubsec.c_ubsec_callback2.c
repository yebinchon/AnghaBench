
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int u_int ;
struct ubsec_softc {int sc_flags; int sc_dev; int sc_q2free; int sc_rnghz; int sc_rngto; int sc_rndtest; int (* sc_harvest ) (int ,scalar_t__,int) ;} ;
struct TYPE_6__ {int dma_size; scalar_t__ dma_vaddr; } ;
struct TYPE_8__ {TYPE_2__ q_ctx; } ;
struct TYPE_7__ {int dma_size; scalar_t__ dma_vaddr; } ;
struct ubsec_q2_rsapriv {TYPE_4__ rpr_q; TYPE_3__ rpr_msgout; TYPE_3__ rpr_msgin; struct cryptkop* rpr_krp; } ;
struct ubsec_q2_rng {int rng_used; TYPE_3__ rng_buf; } ;
struct ubsec_q2_modexp {TYPE_4__ me_q; TYPE_3__ me_C; TYPE_3__ me_M; TYPE_3__ me_E; int me_normbits; int me_shiftbits; int me_modbits; TYPE_3__ me_epb; struct cryptkop* me_krp; } ;
struct ubsec_q2 {int q_type; TYPE_3__ q_ctx; } ;
struct ubsec_ctx_keyop {int ctx_op; } ;
struct cryptkop {size_t krp_iparams; TYPE_1__* krp_param; int krp_status; } ;
struct TYPE_5__ {scalar_t__ crp_p; int crp_nbits; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int E2BIG ;
 int SIMPLEQ_INSERT_TAIL (int *,TYPE_4__*,int ) ;
 int UBSEC_RNG_BUFSIZ ;



 int UBS_FLAGS_HWNORM ;
 size_t UBS_RSAPRIV_PAR_MSGOUT ;
 int bcopy (scalar_t__,scalar_t__,int) ;
 int bzero (scalar_t__,int) ;
 int callout_reset (int *,int ,int ,struct ubsec_softc*) ;
 int crypto_kdone (struct cryptkop*) ;
 int device_printf (int ,char*,int ) ;
 int letoh16 (int ) ;
 int q_next ;
 int stub1 (int ,scalar_t__,int) ;
 int ubsec_dma_sync (TYPE_3__*,int ) ;
 int ubsec_kshift_l (int ,scalar_t__,int ,scalar_t__,int ) ;
 int ubsec_rng ;

__attribute__((used)) static void
ubsec_callback2(struct ubsec_softc *sc, struct ubsec_q2 *q)
{
 struct cryptkop *krp;
 struct ubsec_ctx_keyop *ctx;

 ctx = (struct ubsec_ctx_keyop *)q->q_ctx.dma_vaddr;
 ubsec_dma_sync(&q->q_ctx, BUS_DMASYNC_POSTWRITE);

 switch (q->q_type) {

 case 129: {
  struct ubsec_q2_rng *rng = (struct ubsec_q2_rng *)q;

  ubsec_dma_sync(&rng->rng_buf, BUS_DMASYNC_POSTREAD);
  (*sc->sc_harvest)(sc->sc_rndtest,
   rng->rng_buf.dma_vaddr,
   UBSEC_RNG_BUFSIZ*sizeof (u_int32_t));
  rng->rng_used = 0;
  callout_reset(&sc->sc_rngto, sc->sc_rnghz, ubsec_rng, sc);
  break;
 }

 case 130: {
  struct ubsec_q2_modexp *me = (struct ubsec_q2_modexp *)q;
  u_int rlen, clen;

  krp = me->me_krp;
  rlen = (me->me_modbits + 7) / 8;
  clen = (krp->krp_param[krp->krp_iparams].crp_nbits + 7) / 8;

  ubsec_dma_sync(&me->me_M, BUS_DMASYNC_POSTWRITE);
  ubsec_dma_sync(&me->me_E, BUS_DMASYNC_POSTWRITE);
  ubsec_dma_sync(&me->me_C, BUS_DMASYNC_POSTREAD);
  ubsec_dma_sync(&me->me_epb, BUS_DMASYNC_POSTWRITE);

  if (clen < rlen)
   krp->krp_status = E2BIG;
  else {
   if (sc->sc_flags & UBS_FLAGS_HWNORM) {
    bzero(krp->krp_param[krp->krp_iparams].crp_p,
        (krp->krp_param[krp->krp_iparams].crp_nbits
     + 7) / 8);
    bcopy(me->me_C.dma_vaddr,
        krp->krp_param[krp->krp_iparams].crp_p,
        (me->me_modbits + 7) / 8);
   } else
    ubsec_kshift_l(me->me_shiftbits,
        me->me_C.dma_vaddr, me->me_normbits,
        krp->krp_param[krp->krp_iparams].crp_p,
        krp->krp_param[krp->krp_iparams].crp_nbits);
  }

  crypto_kdone(krp);


  bzero(me->me_E.dma_vaddr, me->me_E.dma_size);
  bzero(me->me_M.dma_vaddr, me->me_M.dma_size);
  bzero(me->me_C.dma_vaddr, me->me_C.dma_size);
  bzero(me->me_q.q_ctx.dma_vaddr, me->me_q.q_ctx.dma_size);


  SIMPLEQ_INSERT_TAIL(&sc->sc_q2free, &me->me_q, q_next);
  break;
 }
 case 128: {
  struct ubsec_q2_rsapriv *rp = (struct ubsec_q2_rsapriv *)q;
  u_int len;

  krp = rp->rpr_krp;
  ubsec_dma_sync(&rp->rpr_msgin, BUS_DMASYNC_POSTWRITE);
  ubsec_dma_sync(&rp->rpr_msgout, BUS_DMASYNC_POSTREAD);

  len = (krp->krp_param[UBS_RSAPRIV_PAR_MSGOUT].crp_nbits + 7) / 8;
  bcopy(rp->rpr_msgout.dma_vaddr,
      krp->krp_param[UBS_RSAPRIV_PAR_MSGOUT].crp_p, len);

  crypto_kdone(krp);

  bzero(rp->rpr_msgin.dma_vaddr, rp->rpr_msgin.dma_size);
  bzero(rp->rpr_msgout.dma_vaddr, rp->rpr_msgout.dma_size);
  bzero(rp->rpr_q.q_ctx.dma_vaddr, rp->rpr_q.q_ctx.dma_size);


  SIMPLEQ_INSERT_TAIL(&sc->sc_q2free, &rp->rpr_q, q_next);
  break;
 }
 default:
  device_printf(sc->sc_dev, "unknown ctx op: %x\n",
      letoh16(ctx->ctx_op));
  break;
 }
}
