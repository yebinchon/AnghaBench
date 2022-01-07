
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sring; } ;
struct netfront_rxq {TYPE_1__ ring; int rx_refill; } ;


 int M_DEVBUF ;
 int callout_drain (int *) ;
 int free (int ,int ) ;

__attribute__((used)) static void
destroy_rxq(struct netfront_rxq *rxq)
{

 callout_drain(&rxq->rx_refill);
 free(rxq->ring.sring, M_DEVBUF);
}
