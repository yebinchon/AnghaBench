
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_txq {int completed; int reaped; } ;


 int SFXGE_TXQ_LOCK_ASSERT_OWNED (struct sfxge_txq*) ;

__attribute__((used)) static void
sfxge_tx_qreap(struct sfxge_txq *txq)
{
 SFXGE_TXQ_LOCK_ASSERT_OWNED(txq);

 txq->reaped = txq->completed;
}
