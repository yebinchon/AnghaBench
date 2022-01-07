
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwn_softc {int fw_dma; } ;


 int iwn_dma_contig_free (int *) ;

__attribute__((used)) static void
iwn_free_fwmem(struct iwn_softc *sc)
{
 iwn_dma_contig_free(&sc->fw_dma);
}
