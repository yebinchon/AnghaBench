
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_tx_dpl {scalar_t__ std_get_count; scalar_t__ std_get_max; scalar_t__ std_get_non_tcp_count; scalar_t__ std_get_non_tcp_max; struct mbuf** std_getp; } ;
struct sfxge_txq {int get_non_tcp_overflow; int get_overflow; struct sfxge_tx_dpl dpl; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;


 int ENOBUFS ;
 int KASSERT (int ,char*) ;
 int SFXGE_TXQ_LOCK_ASSERT_OWNED (struct sfxge_txq*) ;
 scalar_t__ sfxge_is_mbuf_non_tcp (struct mbuf*) ;

__attribute__((used)) static int
sfxge_tx_qdpl_put_locked(struct sfxge_txq *txq, struct mbuf *mbuf)
{
 struct sfxge_tx_dpl *stdp;

 stdp = &txq->dpl;

 KASSERT(mbuf->m_nextpkt == ((void*)0), ("mbuf->m_nextpkt != NULL"));

 SFXGE_TXQ_LOCK_ASSERT_OWNED(txq);

 if (stdp->std_get_count >= stdp->std_get_max) {
  txq->get_overflow++;
  return (ENOBUFS);
 }
 if (sfxge_is_mbuf_non_tcp(mbuf)) {
  if (stdp->std_get_non_tcp_count >=
      stdp->std_get_non_tcp_max) {
   txq->get_non_tcp_overflow++;
   return (ENOBUFS);
  }
  stdp->std_get_non_tcp_count++;
 }

 *(stdp->std_getp) = mbuf;
 stdp->std_getp = &mbuf->m_nextpkt;
 stdp->std_get_count++;

 return (0);
}
