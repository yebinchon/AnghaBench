
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdp_sock {int dummy; } ;


 int MIN (int ,scalar_t__) ;
 int SDP_MIN_TX_CREDITS ;
 scalar_t__ SDP_TX_SIZE ;
 int tx_credits (struct sdp_sock*) ;
 scalar_t__ tx_ring_posted (struct sdp_sock*) ;

__attribute__((used)) static inline int tx_slots_free(struct sdp_sock *ssk)
{
 int min_free;

 min_free = MIN(tx_credits(ssk),
   SDP_TX_SIZE - tx_ring_posted(ssk));
 if (min_free < SDP_MIN_TX_CREDITS)
  return 0;

 return min_free - SDP_MIN_TX_CREDITS;
}
