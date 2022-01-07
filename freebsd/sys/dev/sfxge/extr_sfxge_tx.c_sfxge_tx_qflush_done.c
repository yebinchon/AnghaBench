
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_txq {int flush_state; } ;


 int SFXGE_FLUSH_DONE ;

void
sfxge_tx_qflush_done(struct sfxge_txq *txq)
{

 txq->flush_state = SFXGE_FLUSH_DONE;
}
