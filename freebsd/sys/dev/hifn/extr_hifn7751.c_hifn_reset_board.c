
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct hifn_softc {int sc_flags; int * sc_dma; } ;


 int DELAY (int) ;
 int HIFN_1_7811_MIPSRST ;
 int HIFN_1_DMA_CNFG ;
 int HIFN_1_DMA_CNFG2 ;
 int HIFN_DMACNFG2_INIT_READ_BURST_SHIFT ;
 int HIFN_DMACNFG2_INIT_WRITE_BURST_SHIFT ;
 int HIFN_DMACNFG2_TGT_READ_BURST_SHIFT ;
 int HIFN_DMACNFG2_TGT_WRITE_BURST_SHIFT ;
 int HIFN_DMACNFG_DMARESET ;
 int HIFN_DMACNFG_MODE ;
 int HIFN_DMACNFG_MSTRESET ;
 int HIFN_IS_7811 ;
 int HIFN_MIPSRST_CRAMINIT ;
 int KASSERT (int ,char*) ;
 int READ_REG_1 (struct hifn_softc*,int ) ;
 int WRITE_REG_1 (struct hifn_softc*,int ,int) ;
 int bzero (int *,int) ;
 int hifn_puc_wait (struct hifn_softc*) ;
 int hifn_reset_puc (struct hifn_softc*) ;
 int hifn_set_retry (struct hifn_softc*) ;
 int printf (char*) ;

__attribute__((used)) static void
hifn_reset_board(struct hifn_softc *sc, int full)
{
 u_int32_t reg;





 WRITE_REG_1(sc, HIFN_1_DMA_CNFG, HIFN_DMACNFG_MSTRESET |
     HIFN_DMACNFG_DMARESET | HIFN_DMACNFG_MODE);





 DELAY(1000);


 if (full) {
  WRITE_REG_1(sc, HIFN_1_DMA_CNFG, HIFN_DMACNFG_MODE);
  DELAY(1000);
 } else {
  WRITE_REG_1(sc, HIFN_1_DMA_CNFG,
      HIFN_DMACNFG_MODE | HIFN_DMACNFG_MSTRESET);
  hifn_reset_puc(sc);
 }

 KASSERT(sc->sc_dma != ((void*)0), ("hifn_reset_board: null DMA tag!"));
 bzero(sc->sc_dma, sizeof(*sc->sc_dma));


 WRITE_REG_1(sc, HIFN_1_DMA_CNFG, HIFN_DMACNFG_MSTRESET |
     HIFN_DMACNFG_DMARESET | HIFN_DMACNFG_MODE);

 hifn_puc_wait(sc);
 hifn_set_retry(sc);

 if (sc->sc_flags & HIFN_IS_7811) {
  for (reg = 0; reg < 1000; reg++) {
   if (READ_REG_1(sc, HIFN_1_7811_MIPSRST) &
       HIFN_MIPSRST_CRAMINIT)
    break;
   DELAY(1000);
  }
  if (reg == 1000)
   printf(": cram init timeout\n");
 } else {


   WRITE_REG_1(sc, HIFN_1_DMA_CNFG2,
        (3 << HIFN_DMACNFG2_INIT_WRITE_BURST_SHIFT)|
        (3 << HIFN_DMACNFG2_INIT_READ_BURST_SHIFT)|
        (2 << HIFN_DMACNFG2_TGT_WRITE_BURST_SHIFT)|
        (2 << HIFN_DMACNFG2_TGT_READ_BURST_SHIFT));
 }

}
