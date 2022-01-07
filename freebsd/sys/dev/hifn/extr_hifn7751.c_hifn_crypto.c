
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_5__ {int len; } ;
struct mbuf {int m_flags; int m_len; struct mbuf* m_next; TYPE_1__ m_pkthdr; } ;
struct hifn_softc {int sc_cmdu; size_t sc_resu; scalar_t__ sc_srcu; scalar_t__ sc_dstu; int sc_cmdi; int sc_dmaier; size_t sc_resi; scalar_t__ sc_curbatch; int sc_c_busy; int sc_s_busy; int sc_r_busy; int sc_d_busy; int sc_active; int sc_dmat; int sc_dev; struct hifn_command** sc_hifn_commands; struct hifn_dma* sc_dma; } ;
struct hifn_dma {TYPE_3__* resr; TYPE_2__* cmdr; int * command_bufs; } ;
struct hifn_command {int sloplen; int src_mapsize; scalar_t__ src_nsegs; scalar_t__ dst_nsegs; int slopidx; int * src_map; struct mbuf* dst_m; struct mbuf* src_m; int * dst_map; int dst; int dst_io; int src; int src_io; } ;
struct cryptop {int crp_flags; } ;
struct TYPE_8__ {int hst_ibytes; scalar_t__ hst_maxbatch; int hst_totbatch; int hst_ipackets; int hst_nomem_sd; int hst_nomem_load; int hst_nomem_map; int hst_nomem_mcl; int hst_nomem_mbuf; int hst_unaligned; int hst_nomem_cr; } ;
struct TYPE_7__ {void* l; } ;
struct TYPE_6__ {void* l; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int BUS_DMA_NOWAIT ;
 int CRYPTO_F_IMBUF ;
 int CRYPTO_F_IOV ;
 int CRYPTO_HINT_MORE ;
 int EINVAL ;
 int ENOMEM ;
 int ERESTART ;
 int HIFN_1_DMA_CSR ;
 int HIFN_1_DMA_IER ;
 int HIFN_CMDR_SYNC (struct hifn_softc*,int,int) ;
 int HIFN_CMD_SYNC (struct hifn_softc*,int,int) ;
 int HIFN_DMACSR_C_CTRL_ENA ;
 int HIFN_DMACSR_D_CTRL_ENA ;
 int HIFN_DMACSR_R_CTRL_ENA ;
 int HIFN_DMACSR_S_CTRL_ENA ;
 int HIFN_DMAIER_C_WAIT ;
 int HIFN_D_CMD_RSIZE ;
 scalar_t__ HIFN_D_DST_RSIZE ;
 int HIFN_D_JUMP ;
 int HIFN_D_LAST ;
 int HIFN_D_MASKDONEIRQ ;
 size_t HIFN_D_RES_RSIZE ;
 scalar_t__ HIFN_D_SRC_RSIZE ;
 int HIFN_D_VALID ;
 int HIFN_LOCK (struct hifn_softc*) ;
 int HIFN_MAX_RESULT ;
 int HIFN_RESR_SYNC (struct hifn_softc*,int,int) ;
 int HIFN_RES_SYNC (struct hifn_softc*,int,int) ;
 int HIFN_UNLOCK (struct hifn_softc*) ;
 int KASSERT (int,char*) ;
 int MCLBYTES ;
 int MCLGET (struct mbuf*,int ) ;
 int MGET (struct mbuf*,int ,int ) ;
 int MGETHDR (struct mbuf*,int ,int ) ;
 int MHLEN ;
 int MINCLSIZE ;
 int MLEN ;
 int MT_DATA ;
 int M_NOWAIT ;
 int M_PKTHDR ;
 int READ_REG_1 (struct hifn_softc*,int ) ;
 int WRITE_REG_1 (struct hifn_softc*,int ,int) ;
 scalar_t__ bus_dmamap_create (int ,int ,int **) ;
 int bus_dmamap_destroy (int ,int *) ;
 scalar_t__ bus_dmamap_load_mbuf (int ,int *,struct mbuf*,int ,int *,int ) ;
 scalar_t__ bus_dmamap_load_uio (int ,int *,int ,int ,int *,int ) ;
 int bus_dmamap_sync (int ,int *,int) ;
 int bus_dmamap_unload (int ,int *) ;
 int device_printf (int ,char*,int,int,...) ;
 scalar_t__ hifn_debug ;
 scalar_t__ hifn_dmamap_aligned (int *) ;
 int hifn_dmamap_load_dst (struct hifn_softc*,struct hifn_command*) ;
 int hifn_dmamap_load_src (struct hifn_softc*,struct hifn_command*) ;
 scalar_t__ hifn_maxbatch ;
 int hifn_op_cb ;
 int hifn_write_command (struct hifn_command*,int ) ;
 TYPE_4__ hifnstats ;
 void* htole32 (int) ;
 int m_dup_pkthdr (struct mbuf*,struct mbuf*,int ) ;
 int m_free (struct mbuf*) ;
 int m_freem (struct mbuf*) ;
 int printf (char*) ;

__attribute__((used)) static int
hifn_crypto(
 struct hifn_softc *sc,
 struct hifn_command *cmd,
 struct cryptop *crp,
 int hint)
{
 struct hifn_dma *dma = sc->sc_dma;
 u_int32_t cmdlen, csr;
 int cmdi, resi, err = 0;






 HIFN_LOCK(sc);
 if ((sc->sc_cmdu + 1) > HIFN_D_CMD_RSIZE ||
     (sc->sc_resu + 1) > HIFN_D_RES_RSIZE) {







  hifnstats.hst_nomem_cr++;
  HIFN_UNLOCK(sc);
  return (ERESTART);
 }

 if (bus_dmamap_create(sc->sc_dmat, BUS_DMA_NOWAIT, &cmd->src_map)) {
  hifnstats.hst_nomem_map++;
  HIFN_UNLOCK(sc);
  return (ENOMEM);
 }

 if (crp->crp_flags & CRYPTO_F_IMBUF) {
  if (bus_dmamap_load_mbuf(sc->sc_dmat, cmd->src_map,
      cmd->src_m, hifn_op_cb, &cmd->src, BUS_DMA_NOWAIT)) {
   hifnstats.hst_nomem_load++;
   err = ENOMEM;
   goto err_srcmap1;
  }
 } else if (crp->crp_flags & CRYPTO_F_IOV) {
  if (bus_dmamap_load_uio(sc->sc_dmat, cmd->src_map,
      cmd->src_io, hifn_op_cb, &cmd->src, BUS_DMA_NOWAIT)) {
   hifnstats.hst_nomem_load++;
   err = ENOMEM;
   goto err_srcmap1;
  }
 } else {
  err = EINVAL;
  goto err_srcmap1;
 }

 if (hifn_dmamap_aligned(&cmd->src)) {
  cmd->sloplen = cmd->src_mapsize & 3;
  cmd->dst = cmd->src;
 } else {
  if (crp->crp_flags & CRYPTO_F_IOV) {
   err = EINVAL;
   goto err_srcmap;
  } else if (crp->crp_flags & CRYPTO_F_IMBUF) {
   int totlen, len;
   struct mbuf *m, *m0, *mlast;

   KASSERT(cmd->dst_m == cmd->src_m,
    ("hifn_crypto: dst_m initialized improperly"));
   hifnstats.hst_unaligned++;
   totlen = cmd->src_mapsize;
   if (cmd->src_m->m_flags & M_PKTHDR) {
    len = MHLEN;
    MGETHDR(m0, M_NOWAIT, MT_DATA);
    if (m0 && !m_dup_pkthdr(m0, cmd->src_m, M_NOWAIT)) {
     m_free(m0);
     m0 = ((void*)0);
    }
   } else {
    len = MLEN;
    MGET(m0, M_NOWAIT, MT_DATA);
   }
   if (m0 == ((void*)0)) {
    hifnstats.hst_nomem_mbuf++;
    err = sc->sc_cmdu ? ERESTART : ENOMEM;
    goto err_srcmap;
   }
   if (totlen >= MINCLSIZE) {
    if (!(MCLGET(m0, M_NOWAIT))) {
     hifnstats.hst_nomem_mcl++;
     err = sc->sc_cmdu ? ERESTART : ENOMEM;
     m_freem(m0);
     goto err_srcmap;
    }
    len = MCLBYTES;
   }
   totlen -= len;
   m0->m_pkthdr.len = m0->m_len = len;
   mlast = m0;

   while (totlen > 0) {
    MGET(m, M_NOWAIT, MT_DATA);
    if (m == ((void*)0)) {
     hifnstats.hst_nomem_mbuf++;
     err = sc->sc_cmdu ? ERESTART : ENOMEM;
     m_freem(m0);
     goto err_srcmap;
    }
    len = MLEN;
    if (totlen >= MINCLSIZE) {
     if (!(MCLGET(m, M_NOWAIT))) {
      hifnstats.hst_nomem_mcl++;
      err = sc->sc_cmdu ? ERESTART : ENOMEM;
      mlast->m_next = m;
      m_freem(m0);
      goto err_srcmap;
     }
     len = MCLBYTES;
    }

    m->m_len = len;
    m0->m_pkthdr.len += len;
    totlen -= len;

    mlast->m_next = m;
    mlast = m;
   }
   cmd->dst_m = m0;
  }
 }

 if (cmd->dst_map == ((void*)0)) {
  if (bus_dmamap_create(sc->sc_dmat, BUS_DMA_NOWAIT, &cmd->dst_map)) {
   hifnstats.hst_nomem_map++;
   err = ENOMEM;
   goto err_srcmap;
  }
  if (crp->crp_flags & CRYPTO_F_IMBUF) {
   if (bus_dmamap_load_mbuf(sc->sc_dmat, cmd->dst_map,
       cmd->dst_m, hifn_op_cb, &cmd->dst, BUS_DMA_NOWAIT)) {
    hifnstats.hst_nomem_map++;
    err = ENOMEM;
    goto err_dstmap1;
   }
  } else if (crp->crp_flags & CRYPTO_F_IOV) {
   if (bus_dmamap_load_uio(sc->sc_dmat, cmd->dst_map,
       cmd->dst_io, hifn_op_cb, &cmd->dst, BUS_DMA_NOWAIT)) {
    hifnstats.hst_nomem_load++;
    err = ENOMEM;
    goto err_dstmap1;
   }
  }
 }
 if (cmd->src_map == cmd->dst_map) {
  bus_dmamap_sync(sc->sc_dmat, cmd->src_map,
      BUS_DMASYNC_PREWRITE|BUS_DMASYNC_PREREAD);
 } else {
  bus_dmamap_sync(sc->sc_dmat, cmd->src_map,
      BUS_DMASYNC_PREWRITE);
  bus_dmamap_sync(sc->sc_dmat, cmd->dst_map,
      BUS_DMASYNC_PREREAD);
 }




 if ((sc->sc_srcu + cmd->src_nsegs) > HIFN_D_SRC_RSIZE ||
     (sc->sc_dstu + cmd->dst_nsegs + 1) > HIFN_D_DST_RSIZE) {
  hifnstats.hst_nomem_sd++;
  err = ERESTART;
  goto err_dstmap;
 }

 if (sc->sc_cmdi == HIFN_D_CMD_RSIZE) {
  sc->sc_cmdi = 0;
  dma->cmdr[HIFN_D_CMD_RSIZE].l = htole32(HIFN_D_VALID |
      HIFN_D_JUMP | HIFN_D_MASKDONEIRQ);
  HIFN_CMDR_SYNC(sc, HIFN_D_CMD_RSIZE,
      BUS_DMASYNC_PREWRITE | BUS_DMASYNC_PREREAD);
 }
 cmdi = sc->sc_cmdi++;
 cmdlen = hifn_write_command(cmd, dma->command_bufs[cmdi]);
 HIFN_CMD_SYNC(sc, cmdi, BUS_DMASYNC_PREWRITE);


 dma->cmdr[cmdi].l = htole32(cmdlen | HIFN_D_VALID | HIFN_D_LAST |
     HIFN_D_MASKDONEIRQ);
 HIFN_CMDR_SYNC(sc, cmdi,
     BUS_DMASYNC_PREWRITE | BUS_DMASYNC_PREREAD);
 sc->sc_cmdu++;






 if (sc->sc_cmdu > 1) {
  sc->sc_dmaier |= HIFN_DMAIER_C_WAIT;
  WRITE_REG_1(sc, HIFN_1_DMA_IER, sc->sc_dmaier);
 }

 hifnstats.hst_ipackets++;
 hifnstats.hst_ibytes += cmd->src_mapsize;

 hifn_dmamap_load_src(sc, cmd);
 if (sc->sc_resi == HIFN_D_RES_RSIZE) {
  sc->sc_resi = 0;
  dma->resr[HIFN_D_RES_RSIZE].l = htole32(HIFN_D_VALID |
      HIFN_D_JUMP | HIFN_D_MASKDONEIRQ);
  HIFN_RESR_SYNC(sc, HIFN_D_RES_RSIZE,
      BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
 }
 resi = sc->sc_resi++;
 KASSERT(sc->sc_hifn_commands[resi] == ((void*)0),
  ("hifn_crypto: command slot %u busy", resi));
 sc->sc_hifn_commands[resi] = cmd;
 HIFN_RES_SYNC(sc, resi, BUS_DMASYNC_PREREAD);
 if ((hint & CRYPTO_HINT_MORE) && sc->sc_curbatch < hifn_maxbatch) {
  dma->resr[resi].l = htole32(HIFN_MAX_RESULT |
      HIFN_D_VALID | HIFN_D_LAST | HIFN_D_MASKDONEIRQ);
  sc->sc_curbatch++;
  if (sc->sc_curbatch > hifnstats.hst_maxbatch)
   hifnstats.hst_maxbatch = sc->sc_curbatch;
  hifnstats.hst_totbatch++;
 } else {
  dma->resr[resi].l = htole32(HIFN_MAX_RESULT |
      HIFN_D_VALID | HIFN_D_LAST);
  sc->sc_curbatch = 0;
 }
 HIFN_RESR_SYNC(sc, resi,
     BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
 sc->sc_resu++;

 if (cmd->sloplen)
  cmd->slopidx = resi;

 hifn_dmamap_load_dst(sc, cmd);

 csr = 0;
 if (sc->sc_c_busy == 0) {
  csr |= HIFN_DMACSR_C_CTRL_ENA;
  sc->sc_c_busy = 1;
 }
 if (sc->sc_s_busy == 0) {
  csr |= HIFN_DMACSR_S_CTRL_ENA;
  sc->sc_s_busy = 1;
 }
 if (sc->sc_r_busy == 0) {
  csr |= HIFN_DMACSR_R_CTRL_ENA;
  sc->sc_r_busy = 1;
 }
 if (sc->sc_d_busy == 0) {
  csr |= HIFN_DMACSR_D_CTRL_ENA;
  sc->sc_d_busy = 1;
 }
 if (csr)
  WRITE_REG_1(sc, HIFN_1_DMA_CSR, csr);
 sc->sc_active = 5;
 HIFN_UNLOCK(sc);
 KASSERT(err == 0, ("hifn_crypto: success with error %u", err));
 return (err);

err_dstmap:
 if (cmd->src_map != cmd->dst_map)
  bus_dmamap_unload(sc->sc_dmat, cmd->dst_map);
err_dstmap1:
 if (cmd->src_map != cmd->dst_map)
  bus_dmamap_destroy(sc->sc_dmat, cmd->dst_map);
err_srcmap:
 if (crp->crp_flags & CRYPTO_F_IMBUF) {
  if (cmd->src_m != cmd->dst_m)
   m_freem(cmd->dst_m);
 }
 bus_dmamap_unload(sc->sc_dmat, cmd->src_map);
err_srcmap1:
 bus_dmamap_destroy(sc->sc_dmat, cmd->src_map);
 HIFN_UNLOCK(sc);
 return (err);
}
