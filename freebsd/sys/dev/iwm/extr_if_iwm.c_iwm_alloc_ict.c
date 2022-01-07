
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int ict_dma; int sc_dmat; } ;


 int IWM_ICT_PADDR_SHIFT ;
 int IWM_ICT_SIZE ;
 int iwm_dma_contig_alloc (int ,int *,int ,int) ;

__attribute__((used)) static int
iwm_alloc_ict(struct iwm_softc *sc)
{
 return iwm_dma_contig_alloc(sc->sc_dmat, &sc->ict_dma,
     IWM_ICT_SIZE, 1<<IWM_ICT_PADDR_SHIFT);
}
