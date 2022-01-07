
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_int16_t ;
typedef int u_int ;
struct ubsec_softc {int sc_flags; int sc_mcr2lock; int sc_queue2; int sc_dev; } ;
struct TYPE_13__ {int dma_size; int dma_paddr; int * dma_tag; struct ubsec_q2_modexp* dma_vaddr; } ;
struct TYPE_14__ {int q_type; TYPE_5__ q_ctx; TYPE_5__ q_mcr; } ;
struct ubsec_q2_modexp {int me_modbits; int me_shiftbits; int me_normbits; TYPE_5__ me_epb; TYPE_5__ me_C; TYPE_5__ me_E; TYPE_5__ me_M; TYPE_8__ me_q; void* me_N_len; void* me_E_len; void* me_op; void* me_len; struct ubsec_q2_modexp* me_N; struct cryptkop* me_krp; } ;
struct ubsec_pktbuf {void* pb_len; scalar_t__ pb_next; void* pb_addr; } ;
struct TYPE_10__ {void* pb_len; void* pb_addr; scalar_t__ pb_next; } ;
struct TYPE_9__ {void* pb_next; void* pb_len; void* pb_addr; } ;
struct ubsec_mcr {TYPE_2__ mcr_opktbuf; TYPE_1__ mcr_ipktbuf; scalar_t__ mcr_pktlen; scalar_t__ mcr_reserved; void* mcr_cmdctxp; scalar_t__ mcr_flags; void* mcr_pkts; } ;
struct ubsec_ctx_modexp {int me_modbits; int me_shiftbits; int me_normbits; TYPE_5__ me_epb; TYPE_5__ me_C; TYPE_5__ me_E; TYPE_5__ me_M; TYPE_8__ me_q; void* me_N_len; void* me_E_len; void* me_op; void* me_len; struct ubsec_ctx_modexp* me_N; struct cryptkop* me_krp; } ;
struct ubsec_ctx_keyop {int dummy; } ;
struct cryptkop {size_t krp_iparams; int krp_status; TYPE_4__* krp_param; } ;
struct TYPE_12__ {int crp_nbits; int crp_p; } ;
struct TYPE_11__ {int hst_modexp; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int E2BIG ;
 int ENOMEM ;
 int ERANGE ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int SIMPLEQ_INSERT_TAIL (int *,TYPE_8__*,int ) ;
 int UBS_CTXOP_MODEXP ;
 int UBS_FLAGS_BIGKEY ;
 size_t UBS_MODEXP_PAR_E ;
 size_t UBS_MODEXP_PAR_M ;
 size_t UBS_MODEXP_PAR_N ;
 int bzero (struct ubsec_q2_modexp*,int) ;
 int crypto_kdone (struct cryptkop*) ;
 int device_get_nameunit (int ) ;
 int free (struct ubsec_q2_modexp*,int ) ;
 void* htole16 (int) ;
 void* htole32 (int) ;
 int letoh32 (void*) ;
 scalar_t__ malloc (int,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int panic (char*,int ,int) ;
 int printf (char*) ;
 int q_next ;
 scalar_t__ ubsec_debug ;
 int ubsec_dma_free (struct ubsec_softc*,TYPE_5__*) ;
 scalar_t__ ubsec_dma_malloc (struct ubsec_softc*,int,TYPE_5__*,int ) ;
 int ubsec_dma_sync (TYPE_5__*,int ) ;
 int ubsec_dump_ctx2 (struct ubsec_ctx_keyop*) ;
 int ubsec_dump_mcr (struct ubsec_mcr*) ;
 int ubsec_dump_pb (struct ubsec_pktbuf*) ;
 int ubsec_feed2 (struct ubsec_softc*) ;
 int ubsec_kshift_r (int,int ,int,struct ubsec_q2_modexp*,int) ;
 int ubsec_ksigbits (TYPE_4__*) ;
 TYPE_3__ ubsecstats ;

__attribute__((used)) static int
ubsec_kprocess_modexp_sw(struct ubsec_softc *sc, struct cryptkop *krp, int hint)
{
 struct ubsec_q2_modexp *me;
 struct ubsec_mcr *mcr;
 struct ubsec_ctx_modexp *ctx;
 struct ubsec_pktbuf *epb;
 int err = 0;
 u_int nbits, normbits, mbits, shiftbits, ebits;

 me = (struct ubsec_q2_modexp *)malloc(sizeof *me, M_DEVBUF, M_NOWAIT);
 if (me == ((void*)0)) {
  err = ENOMEM;
  goto errout;
 }
 bzero(me, sizeof *me);
 me->me_krp = krp;
 me->me_q.q_type = UBS_CTXOP_MODEXP;

 nbits = ubsec_ksigbits(&krp->krp_param[UBS_MODEXP_PAR_N]);
 if (nbits <= 512)
  normbits = 512;
 else if (nbits <= 768)
  normbits = 768;
 else if (nbits <= 1024)
  normbits = 1024;
 else if (sc->sc_flags & UBS_FLAGS_BIGKEY && nbits <= 1536)
  normbits = 1536;
 else if (sc->sc_flags & UBS_FLAGS_BIGKEY && nbits <= 2048)
  normbits = 2048;
 else {
  err = E2BIG;
  goto errout;
 }

 shiftbits = normbits - nbits;

 me->me_modbits = nbits;
 me->me_shiftbits = shiftbits;
 me->me_normbits = normbits;


 if (krp->krp_param[krp->krp_iparams].crp_nbits < nbits) {
  err = ERANGE;
  goto errout;
 }

 if (ubsec_dma_malloc(sc, sizeof(struct ubsec_mcr),
     &me->me_q.q_mcr, 0)) {
  err = ENOMEM;
  goto errout;
 }
 mcr = (struct ubsec_mcr *)me->me_q.q_mcr.dma_vaddr;

 if (ubsec_dma_malloc(sc, sizeof(struct ubsec_ctx_modexp),
     &me->me_q.q_ctx, 0)) {
  err = ENOMEM;
  goto errout;
 }

 mbits = ubsec_ksigbits(&krp->krp_param[UBS_MODEXP_PAR_M]);
 if (mbits > nbits) {
  err = E2BIG;
  goto errout;
 }
 if (ubsec_dma_malloc(sc, normbits / 8, &me->me_M, 0)) {
  err = ENOMEM;
  goto errout;
 }
 ubsec_kshift_r(shiftbits,
     krp->krp_param[UBS_MODEXP_PAR_M].crp_p, mbits,
     me->me_M.dma_vaddr, normbits);

 if (ubsec_dma_malloc(sc, normbits / 8, &me->me_C, 0)) {
  err = ENOMEM;
  goto errout;
 }
 bzero(me->me_C.dma_vaddr, me->me_C.dma_size);

 ebits = ubsec_ksigbits(&krp->krp_param[UBS_MODEXP_PAR_E]);
 if (ebits > nbits) {
  err = E2BIG;
  goto errout;
 }
 if (ubsec_dma_malloc(sc, normbits / 8, &me->me_E, 0)) {
  err = ENOMEM;
  goto errout;
 }
 ubsec_kshift_r(shiftbits,
     krp->krp_param[UBS_MODEXP_PAR_E].crp_p, ebits,
     me->me_E.dma_vaddr, normbits);

 if (ubsec_dma_malloc(sc, sizeof(struct ubsec_pktbuf),
     &me->me_epb, 0)) {
  err = ENOMEM;
  goto errout;
 }
 epb = (struct ubsec_pktbuf *)me->me_epb.dma_vaddr;
 epb->pb_addr = htole32(me->me_E.dma_paddr);
 epb->pb_next = 0;
 epb->pb_len = htole32(normbits / 8);
 mcr->mcr_pkts = htole16(1);
 mcr->mcr_flags = 0;
 mcr->mcr_cmdctxp = htole32(me->me_q.q_ctx.dma_paddr);
 mcr->mcr_reserved = 0;
 mcr->mcr_pktlen = 0;

 mcr->mcr_ipktbuf.pb_addr = htole32(me->me_M.dma_paddr);
 mcr->mcr_ipktbuf.pb_len = htole32(normbits / 8);
 mcr->mcr_ipktbuf.pb_next = htole32(me->me_epb.dma_paddr);

 mcr->mcr_opktbuf.pb_addr = htole32(me->me_C.dma_paddr);
 mcr->mcr_opktbuf.pb_next = 0;
 mcr->mcr_opktbuf.pb_len = htole32(normbits / 8);
 ctx = (struct ubsec_ctx_modexp *)me->me_q.q_ctx.dma_vaddr;
 bzero(ctx, sizeof(*ctx));
 ubsec_kshift_r(shiftbits,
     krp->krp_param[UBS_MODEXP_PAR_N].crp_p, nbits,
     ctx->me_N, normbits);
 ctx->me_len = htole16((normbits / 8) + (4 * sizeof(u_int16_t)));
 ctx->me_op = htole16(UBS_CTXOP_MODEXP);
 ctx->me_E_len = htole16(nbits);
 ctx->me_N_len = htole16(nbits);
 ubsec_dma_sync(&me->me_M, BUS_DMASYNC_PREWRITE);
 ubsec_dma_sync(&me->me_E, BUS_DMASYNC_PREWRITE);
 ubsec_dma_sync(&me->me_C, BUS_DMASYNC_PREREAD);
 ubsec_dma_sync(&me->me_epb, BUS_DMASYNC_PREWRITE);


 mtx_lock(&sc->sc_mcr2lock);
 SIMPLEQ_INSERT_TAIL(&sc->sc_queue2, &me->me_q, q_next);
 ubsec_feed2(sc);
 ubsecstats.hst_modexp++;
 mtx_unlock(&sc->sc_mcr2lock);

 return (0);

errout:
 if (me != ((void*)0)) {
  if (me->me_q.q_mcr.dma_tag != ((void*)0))
   ubsec_dma_free(sc, &me->me_q.q_mcr);
  if (me->me_q.q_ctx.dma_tag != ((void*)0)) {
   bzero(me->me_q.q_ctx.dma_vaddr, me->me_q.q_ctx.dma_size);
   ubsec_dma_free(sc, &me->me_q.q_ctx);
  }
  if (me->me_M.dma_tag != ((void*)0)) {
   bzero(me->me_M.dma_vaddr, me->me_M.dma_size);
   ubsec_dma_free(sc, &me->me_M);
  }
  if (me->me_E.dma_tag != ((void*)0)) {
   bzero(me->me_E.dma_vaddr, me->me_E.dma_size);
   ubsec_dma_free(sc, &me->me_E);
  }
  if (me->me_C.dma_tag != ((void*)0)) {
   bzero(me->me_C.dma_vaddr, me->me_C.dma_size);
   ubsec_dma_free(sc, &me->me_C);
  }
  if (me->me_epb.dma_tag != ((void*)0))
   ubsec_dma_free(sc, &me->me_epb);
  free(me, M_DEVBUF);
 }
 krp->krp_status = err;
 crypto_kdone(krp);
 return (0);
}
