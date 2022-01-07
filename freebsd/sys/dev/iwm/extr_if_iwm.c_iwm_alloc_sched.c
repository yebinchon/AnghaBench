
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int txq; int sched_dma; int sc_dmat; } ;
struct iwm_agn_scd_bc_tbl {int dummy; } ;


 int iwm_dma_contig_alloc (int ,int *,int,int) ;
 int nitems (int ) ;

__attribute__((used)) static int
iwm_alloc_sched(struct iwm_softc *sc)
{

 return iwm_dma_contig_alloc(sc->sc_dmat, &sc->sched_dma,
     nitems(sc->txq) * sizeof(struct iwm_agn_scd_bc_tbl), 1024);
}
