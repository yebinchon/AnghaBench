
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_rxq {scalar_t__ init_state; int entries; } ;


 int B_TRUE ;
 int EFX_RXQ_LIMIT (int ) ;
 scalar_t__ SFXGE_RXQ_STARTED ;
 scalar_t__ __predict_false (int) ;
 int sfxge_rx_qfill (struct sfxge_rxq*,int ,int ) ;

void
sfxge_rx_qrefill(struct sfxge_rxq *rxq)
{

 if (__predict_false(rxq->init_state != SFXGE_RXQ_STARTED))
  return;


 sfxge_rx_qfill(rxq, EFX_RXQ_LIMIT(rxq->entries), B_TRUE);
}
