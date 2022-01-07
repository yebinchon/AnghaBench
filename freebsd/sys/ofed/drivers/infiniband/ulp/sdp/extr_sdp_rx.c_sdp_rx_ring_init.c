
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int destroyed_lock; scalar_t__ destroyed; int * buffer; } ;
struct sdp_sock {TYPE_1__ rx_ring; } ;


 int rw_init (int *,char*) ;

void
sdp_rx_ring_init(struct sdp_sock *ssk)
{
 ssk->rx_ring.buffer = ((void*)0);
 ssk->rx_ring.destroyed = 0;
 rw_init(&ssk->rx_ring.destroyed_lock, "sdp rx lock");
}
