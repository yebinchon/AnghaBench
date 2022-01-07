
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_rxq {int refill_delay; int refill_callout; } ;
typedef scalar_t__ boolean_t ;


 int callout_reset_curcpu (int *,int,int ,struct sfxge_rxq*) ;
 int hz ;
 int min (int,int) ;
 int sfxge_rx_post_refill ;

__attribute__((used)) static void
sfxge_rx_schedule_refill(struct sfxge_rxq *rxq, boolean_t retrying)
{



 if (retrying)
  rxq->refill_delay = min(rxq->refill_delay * 2, 10 * hz);
 else
  rxq->refill_delay = hz / 10;

 callout_reset_curcpu(&rxq->refill_callout, rxq->refill_delay,
        sfxge_rx_post_refill, rxq);
}
