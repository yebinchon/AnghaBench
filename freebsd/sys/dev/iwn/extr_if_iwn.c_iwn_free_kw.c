
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwn_softc {int kw_dma; } ;


 int iwn_dma_contig_free (int *) ;

__attribute__((used)) static void
iwn_free_kw(struct iwn_softc *sc)
{
 iwn_dma_contig_free(&sc->kw_dma);
}
