
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct hifn_softc {int sc_srci; int sc_srcu; struct hifn_dma* sc_dma; } ;
struct hifn_operand {int nsegs; TYPE_2__* segs; } ;
struct hifn_dma {TYPE_1__* srcr; } ;
struct hifn_command {struct hifn_operand src; } ;
struct TYPE_4__ {int ds_addr; int ds_len; } ;
struct TYPE_3__ {void* l; void* p; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int HIFN_D_LAST ;
 int HIFN_D_MASKDONEIRQ ;
 int HIFN_D_VALID ;
 int HIFN_SRCR_SYNC (struct hifn_softc*,int,int) ;
 int hifn_dmamap_srcwrap (struct hifn_softc*,int) ;
 void* htole32 (int) ;

__attribute__((used)) static int
hifn_dmamap_load_src(struct hifn_softc *sc, struct hifn_command *cmd)
{
 struct hifn_dma *dma = sc->sc_dma;
 struct hifn_operand *src = &cmd->src;
 int idx, i;
 u_int32_t last = 0;

 idx = sc->sc_srci;
 for (i = 0; i < src->nsegs; i++) {
  if (i == src->nsegs - 1)
   last = HIFN_D_LAST;

  dma->srcr[idx].p = htole32(src->segs[i].ds_addr);
  dma->srcr[idx].l = htole32(src->segs[i].ds_len |
      HIFN_D_VALID | HIFN_D_MASKDONEIRQ | last);
  HIFN_SRCR_SYNC(sc, idx,
      BUS_DMASYNC_PREWRITE | BUS_DMASYNC_PREREAD);

  idx = hifn_dmamap_srcwrap(sc, idx);
 }
 sc->sc_srci = idx;
 sc->sc_srcu += src->nsegs;
 return (idx);
}
