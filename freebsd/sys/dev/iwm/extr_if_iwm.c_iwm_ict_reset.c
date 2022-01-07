
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int paddr; int vaddr; } ;
struct iwm_softc {int sc_flags; TYPE_1__ ict_dma; scalar_t__ ict_cur; } ;


 int IWM_CSR_DRAM_INIT_TBL_WRAP_CHECK ;
 int IWM_CSR_DRAM_INIT_TBL_WRITE_POINTER ;
 int IWM_CSR_DRAM_INT_TBL_ENABLE ;
 int IWM_CSR_DRAM_INT_TBL_REG ;
 int IWM_CSR_INT ;
 int IWM_FLAG_USE_ICT ;
 int IWM_ICT_PADDR_SHIFT ;
 int IWM_ICT_SIZE ;
 int IWM_WRITE (struct iwm_softc*,int ,int) ;
 int iwm_disable_interrupts (struct iwm_softc*) ;
 int iwm_enable_interrupts (struct iwm_softc*) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static void
iwm_ict_reset(struct iwm_softc *sc)
{
 iwm_disable_interrupts(sc);


 memset(sc->ict_dma.vaddr, 0, IWM_ICT_SIZE);
 sc->ict_cur = 0;


 IWM_WRITE(sc, IWM_CSR_DRAM_INT_TBL_REG,
     IWM_CSR_DRAM_INT_TBL_ENABLE
     | IWM_CSR_DRAM_INIT_TBL_WRITE_POINTER
     | IWM_CSR_DRAM_INIT_TBL_WRAP_CHECK
     | sc->ict_dma.paddr >> IWM_ICT_PADDR_SHIFT);


 sc->sc_flags |= IWM_FLAG_USE_ICT;


 IWM_WRITE(sc, IWM_CSR_INT, ~0);
 iwm_enable_interrupts(sc);
}
