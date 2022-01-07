
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdp_sock {int dummy; } ;


 int SDP_TX_SIZE ;
 int tx_ring_posted (struct sdp_sock*) ;

__attribute__((used)) static inline int sdp_tx_ring_slots_left(struct sdp_sock *ssk)
{
 return SDP_TX_SIZE - tx_ring_posted(ssk);
}
