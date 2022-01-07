
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwn_softc {int ict; int ict_dma; } ;


 int IWN_ICT_SIZE ;
 int iwn_dma_contig_alloc (struct iwn_softc*,int *,void**,int ,int) ;

__attribute__((used)) static int
iwn_alloc_ict(struct iwn_softc *sc)
{

 return iwn_dma_contig_alloc(sc, &sc->ict_dma, (void **)&sc->ict,
     IWN_ICT_SIZE, 4096);
}
