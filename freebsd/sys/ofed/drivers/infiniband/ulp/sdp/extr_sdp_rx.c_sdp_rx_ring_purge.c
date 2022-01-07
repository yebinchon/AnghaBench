
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdp_sock {int rx_ring; } ;
struct mbuf {int dummy; } ;


 int m_freem (struct mbuf*) ;
 int ring_tail (int ) ;
 scalar_t__ rx_ring_posted (struct sdp_sock*) ;
 struct mbuf* sdp_recv_completion (struct sdp_sock*,int ) ;

__attribute__((used)) static
void sdp_rx_ring_purge(struct sdp_sock *ssk)
{
 while (rx_ring_posted(ssk) > 0) {
  struct mbuf *mb;
  mb = sdp_recv_completion(ssk, ring_tail(ssk->rx_ring));
  if (!mb)
   break;
  m_freem(mb);
 }
}
