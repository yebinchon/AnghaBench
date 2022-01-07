
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int fw_dma; int sc_dmat; } ;


 int IWM_FH_MEM_TB_MAX_LENGTH ;
 int iwm_dma_contig_alloc (int ,int *,int ,int) ;

__attribute__((used)) static int
iwm_alloc_fwmem(struct iwm_softc *sc)
{

 return iwm_dma_contig_alloc(sc->sc_dmat, &sc->fw_dma,
     IWM_FH_MEM_TB_MAX_LENGTH, 16);
}
