
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwn_softc {int kw_dma; } ;


 int iwn_dma_contig_alloc (struct iwn_softc*,int *,int *,int,int) ;

__attribute__((used)) static int
iwn_alloc_kw(struct iwn_softc *sc)
{

 return iwn_dma_contig_alloc(sc, &sc->kw_dma, ((void*)0), 4096, 4096);
}
