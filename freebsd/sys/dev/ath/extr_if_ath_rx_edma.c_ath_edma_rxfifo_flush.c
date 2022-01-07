
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_softc {int sc_debug; struct ath_rx_edma* sc_rxedma; } ;
struct ath_rx_edma {int m_fifolen; scalar_t__ m_fifo_depth; scalar_t__ m_fifo_tail; scalar_t__ m_fifo_head; int * m_rxpending; struct ath_buf** m_fifo; } ;
struct ath_buf {int dummy; } ;
typedef size_t HAL_RX_QUEUE ;


 int ATH_DEBUG_RECV_DESC ;
 int ATH_RX_LOCK_ASSERT (struct ath_softc*) ;
 int HAL_OK ;
 int ath_edma_rxbuf_free (struct ath_softc*,struct ath_buf*) ;
 int ath_printrxbuf (struct ath_softc*,struct ath_buf*,int ,int ) ;
 int m_freem (int *) ;

__attribute__((used)) static int
ath_edma_rxfifo_flush(struct ath_softc *sc, HAL_RX_QUEUE qtype)
{
 struct ath_rx_edma *re = &sc->sc_rxedma[qtype];
 int i;

 ATH_RX_LOCK_ASSERT(sc);

 for (i = 0; i < re->m_fifolen; i++) {
  if (re->m_fifo[i] != ((void*)0)) {






   ath_edma_rxbuf_free(sc, re->m_fifo[i]);
   re->m_fifo[i] = ((void*)0);
   re->m_fifo_depth--;
  }
 }

 if (re->m_rxpending != ((void*)0)) {
  m_freem(re->m_rxpending);
  re->m_rxpending = ((void*)0);
 }
 re->m_fifo_head = re->m_fifo_tail = re->m_fifo_depth = 0;

 return (0);
}
