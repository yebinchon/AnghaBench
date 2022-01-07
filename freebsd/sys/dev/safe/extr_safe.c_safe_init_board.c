
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_6__ {int dma_paddr; } ;
struct TYPE_5__ {int dma_paddr; } ;
struct TYPE_4__ {int dma_paddr; } ;
struct safe_softc {scalar_t__ sc_chiprev; TYPE_3__ sc_dpalloc; TYPE_2__ sc_spalloc; TYPE_1__ sc_ringalloc; int sc_dev; } ;
struct safe_ringentry {int dummy; } ;


 int KASSERT (int,char*) ;
 int READ_REG (struct safe_softc*,int ) ;
 int SAFE_DMA_CFG ;
 int SAFE_ENDIAN ;
 int SAFE_HI_CFG ;
 int SAFE_HI_CFG_LEVEL ;
 int SAFE_HI_DESC_CNT ;
 int SAFE_HI_MASK ;
 int SAFE_INT_PE_DDONE ;
 int SAFE_INT_PE_ERROR ;
 int SAFE_MAX_DSIZE ;
 int SAFE_MAX_NQUEUE ;
 int SAFE_PE_DMACFG ;
 int SAFE_PE_DMACFG_ESDESC ;
 int SAFE_PE_DMACFG_ESPDESC ;
 int SAFE_PE_DMACFG_ESSA ;
 int SAFE_PE_DMACFG_FSENA ;
 int SAFE_PE_DMACFG_GPRPCI ;
 int SAFE_PE_DMACFG_PEMODE ;
 int SAFE_PE_DMACFG_SPRPCI ;
 int SAFE_PE_GRNGBASE ;
 int SAFE_PE_PARTCFG ;
 int SAFE_PE_PARTSIZE ;
 int SAFE_PE_PDRBASE ;
 int SAFE_PE_RDRBASE ;
 int SAFE_PE_RINGCFG ;
 int SAFE_PE_RINGCFG_OFFSET_S ;
 int SAFE_PE_RINGPOLL ;
 int SAFE_PE_SRNGBASE ;
 scalar_t__ SAFE_REV (int,int ) ;
 int SAFE_REV_MAJ (scalar_t__) ;
 int SAFE_REV_MIN (scalar_t__) ;
 int SAFE_TOTAL_DPART ;
 int SAFE_TOTAL_SPART ;
 int WRITE_REG (struct safe_softc*,int ,int) ;
 int device_printf (int ,char*,int,int ,int ) ;

__attribute__((used)) static void
safe_init_board(struct safe_softc *sc)
{
 u_int32_t v, dwords;

 v = READ_REG(sc, SAFE_PE_DMACFG);
 v &=~ SAFE_PE_DMACFG_PEMODE;
 v |= SAFE_PE_DMACFG_FSENA
   | SAFE_PE_DMACFG_GPRPCI
   | SAFE_PE_DMACFG_SPRPCI
   | SAFE_PE_DMACFG_ESDESC
   | SAFE_PE_DMACFG_ESSA
   | SAFE_PE_DMACFG_ESPDESC
   ;
 WRITE_REG(sc, SAFE_PE_DMACFG, v);




 if (sc->sc_chiprev == SAFE_REV(1,0)) {







  WRITE_REG(sc, SAFE_DMA_CFG, 256);
  device_printf(sc->sc_dev,
   "Reduce max DMA size to %u words for rev %u.%u WAR\n",
   (READ_REG(sc, SAFE_DMA_CFG)>>2) & 0xff,
   SAFE_REV_MAJ(sc->sc_chiprev),
   SAFE_REV_MIN(sc->sc_chiprev));
 }


 WRITE_REG(sc, SAFE_PE_PDRBASE, sc->sc_ringalloc.dma_paddr);
 WRITE_REG(sc, SAFE_PE_RDRBASE, sc->sc_ringalloc.dma_paddr);



 KASSERT((sizeof(struct safe_ringentry) % sizeof(u_int32_t)) == 0,
  ("PE ring entry not 32-bit aligned!"));
 dwords = sizeof(struct safe_ringentry) / sizeof(u_int32_t);
 WRITE_REG(sc, SAFE_PE_RINGCFG,
  (dwords << SAFE_PE_RINGCFG_OFFSET_S) | SAFE_MAX_NQUEUE);
 WRITE_REG(sc, SAFE_PE_RINGPOLL, 0);

 WRITE_REG(sc, SAFE_PE_GRNGBASE, sc->sc_spalloc.dma_paddr);
 WRITE_REG(sc, SAFE_PE_SRNGBASE, sc->sc_dpalloc.dma_paddr);
 WRITE_REG(sc, SAFE_PE_PARTSIZE,
  (SAFE_TOTAL_DPART<<16) | SAFE_TOTAL_SPART);





 WRITE_REG(sc, SAFE_PE_PARTCFG, SAFE_MAX_DSIZE);


 WRITE_REG(sc, SAFE_PE_DMACFG, v | SAFE_PE_DMACFG_PEMODE);





 WRITE_REG(sc, SAFE_HI_CFG, SAFE_HI_CFG_LEVEL);
 WRITE_REG(sc, SAFE_HI_DESC_CNT, 1);
 WRITE_REG(sc, SAFE_HI_MASK, SAFE_INT_PE_DDONE | SAFE_INT_PE_ERROR);
}
