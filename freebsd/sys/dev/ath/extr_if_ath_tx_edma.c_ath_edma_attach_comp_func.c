
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int sc_txtask; } ;


 int TASK_INIT (int *,int ,int ,struct ath_softc*) ;
 int ath_edma_tx_proc ;

__attribute__((used)) static void
ath_edma_attach_comp_func(struct ath_softc *sc)
{

 TASK_INIT(&sc->sc_txtask, 0, ath_edma_tx_proc, sc);
}
