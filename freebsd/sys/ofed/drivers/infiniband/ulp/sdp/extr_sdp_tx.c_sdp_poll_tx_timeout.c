
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timer; } ;
struct sdp_sock {TYPE_1__ tx_ring; } ;


 int callout_active (int *) ;
 int callout_deactivate (int *) ;
 int sdp_poll_tx (struct sdp_sock*) ;

__attribute__((used)) static void
sdp_poll_tx_timeout(void *data)
{
 struct sdp_sock *ssk = (struct sdp_sock *)data;

 if (!callout_active(&ssk->tx_ring.timer))
  return;
 callout_deactivate(&ssk->tx_ring.timer);
 sdp_poll_tx(ssk);
}
