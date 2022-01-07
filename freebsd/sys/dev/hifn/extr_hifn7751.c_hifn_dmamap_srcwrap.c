
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hifn_softc {struct hifn_dma* sc_dma; } ;
struct hifn_dma {TYPE_1__* srcr; } ;
struct TYPE_2__ {int l; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int HIFN_D_JUMP ;
 int HIFN_D_MASKDONEIRQ ;
 int HIFN_D_SRC_RSIZE ;
 int HIFN_D_VALID ;
 int HIFN_SRCR_SYNC (struct hifn_softc*,int,int) ;
 int htole32 (int) ;

__attribute__((used)) static __inline int
hifn_dmamap_srcwrap(struct hifn_softc *sc, int idx)
{
 struct hifn_dma *dma = sc->sc_dma;

 if (++idx == HIFN_D_SRC_RSIZE) {
  dma->srcr[idx].l = htole32(HIFN_D_VALID |
      HIFN_D_JUMP | HIFN_D_MASKDONEIRQ);
  HIFN_SRCR_SYNC(sc, HIFN_D_SRC_RSIZE,
      BUS_DMASYNC_PREWRITE | BUS_DMASYNC_PREREAD);
  idx = 0;
 }
 return (idx);
}
