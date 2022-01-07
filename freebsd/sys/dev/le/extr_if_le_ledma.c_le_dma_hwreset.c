
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lsi64854_softc {int sc_res; } ;
struct le_dma_softc {int sc_laddr; struct lsi64854_softc* sc_dma; } ;
struct lance_softc {int dummy; } ;


 int DELAY (int) ;
 int DMA_ENINTR (struct lsi64854_softc*) ;
 int DMA_RESET (struct lsi64854_softc*) ;
 int E_DSBL_WR_INVAL ;
 int E_TP_AUI ;
 int L64854_GCSR (struct lsi64854_softc*) ;
 int L64854_REG_ENBAR ;
 int L64854_SCSR (struct lsi64854_softc*,int) ;
 int bus_write_4 (int ,int ,int) ;

__attribute__((used)) static void
le_dma_hwreset(struct lance_softc *sc)
{
 struct le_dma_softc *lesc = (struct le_dma_softc *)sc;
 struct lsi64854_softc *dma = lesc->sc_dma;
 uint32_t aui_bit, csr;




 csr = L64854_GCSR(dma);
 aui_bit = csr & E_TP_AUI;
 DMA_RESET(dma);


 bus_write_4(dma->sc_res, L64854_REG_ENBAR,
     lesc->sc_laddr & 0xff000000);

 DMA_ENINTR(dma);





 csr = L64854_GCSR(dma);
 csr |= (E_DSBL_WR_INVAL | aui_bit);
 L64854_SCSR(dma, csr);
 DELAY(20000);
}
