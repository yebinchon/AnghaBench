
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_tx_dpl {struct mbuf* std_get; struct mbuf** std_getp; scalar_t__ std_get_non_tcp_count; scalar_t__ std_get_count; } ;
struct sfxge_txq {struct sfxge_tx_dpl dpl; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;


 int SFXGE_TXQ_LOCK (struct sfxge_txq*) ;
 int SFXGE_TXQ_UNLOCK (struct sfxge_txq*) ;
 int m_freem (struct mbuf*) ;
 int sfxge_tx_qdpl_swizzle (struct sfxge_txq*) ;

__attribute__((used)) static void
sfxge_tx_qdpl_flush(struct sfxge_txq *txq)
{
 struct sfxge_tx_dpl *stdp = &txq->dpl;
 struct mbuf *mbuf, *next;

 SFXGE_TXQ_LOCK(txq);

 sfxge_tx_qdpl_swizzle(txq);
 for (mbuf = stdp->std_get; mbuf != ((void*)0); mbuf = next) {
  next = mbuf->m_nextpkt;
  m_freem(mbuf);
 }
 stdp->std_get = ((void*)0);
 stdp->std_get_count = 0;
 stdp->std_get_non_tcp_count = 0;
 stdp->std_getp = &stdp->std_get;

 SFXGE_TXQ_UNLOCK(txq);
}
