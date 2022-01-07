
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_txq {int netdown_drops; int sc; } ;
struct mbuf {int dummy; } ;


 int ENETDOWN ;
 int SFXGE_LINK_UP (int ) ;
 int SFXGE_TXQ_LOCK_ASSERT_NOTOWNED (struct sfxge_txq*) ;
 scalar_t__ SFXGE_TXQ_TRYLOCK (struct sfxge_txq*) ;
 int atomic_add_long (int *,int) ;
 int sfxge_tx_qdpl_put_locked (struct sfxge_txq*,struct mbuf*) ;
 int sfxge_tx_qdpl_put_unlocked (struct sfxge_txq*,struct mbuf*) ;
 int sfxge_tx_qdpl_service (struct sfxge_txq*) ;
 int sfxge_tx_qdpl_swizzle (struct sfxge_txq*) ;

__attribute__((used)) static int
sfxge_tx_packet_add(struct sfxge_txq *txq, struct mbuf *m)
{
 int rc;

 if (!SFXGE_LINK_UP(txq->sc)) {
  atomic_add_long(&txq->netdown_drops, 1);
  return (ENETDOWN);
 }






 if (SFXGE_TXQ_TRYLOCK(txq)) {

  sfxge_tx_qdpl_swizzle(txq);

  rc = sfxge_tx_qdpl_put_locked(txq, m);


  sfxge_tx_qdpl_service(txq);

 } else {
  rc = sfxge_tx_qdpl_put_unlocked(txq, m);
  if ((rc == 0) && SFXGE_TXQ_TRYLOCK(txq)) {
   sfxge_tx_qdpl_service(txq);

  }
 }

 SFXGE_TXQ_LOCK_ASSERT_NOTOWNED(txq);

 return (rc);
}
