
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_rxq {int flush_state; } ;


 int SFXGE_FLUSH_FAILED ;

void
sfxge_rx_qflush_failed(struct sfxge_rxq *rxq)
{

 rxq->flush_state = SFXGE_FLUSH_FAILED;
}
