
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwn_softc {int schedsz; int sched; int sched_dma; } ;


 int iwn_dma_contig_alloc (struct iwn_softc*,int *,void**,int ,int) ;

__attribute__((used)) static int
iwn_alloc_sched(struct iwn_softc *sc)
{

 return iwn_dma_contig_alloc(sc, &sc->sched_dma, (void **)&sc->sched,
     sc->schedsz, 1024);
}
