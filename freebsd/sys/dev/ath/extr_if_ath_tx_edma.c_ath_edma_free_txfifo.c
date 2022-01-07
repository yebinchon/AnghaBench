
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_tx_edma_fifo {int m_fifo; } ;
struct ath_softc {struct ath_tx_edma_fifo* sc_txedma; } ;


 int M_ATHDEV ;
 int free (int ,int ) ;

__attribute__((used)) static int
ath_edma_free_txfifo(struct ath_softc *sc, int qnum)
{
 struct ath_tx_edma_fifo *te = &sc->sc_txedma[qnum];


 free(te->m_fifo, M_ATHDEV);
 return (0);
}
