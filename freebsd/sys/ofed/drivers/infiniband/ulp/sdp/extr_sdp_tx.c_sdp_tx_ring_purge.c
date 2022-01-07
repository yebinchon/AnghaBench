
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdp_sock {int tx_ring; } ;
struct mbuf {int dummy; } ;


 int m_freem (struct mbuf*) ;
 int ring_tail (int ) ;
 struct mbuf* sdp_send_completion (struct sdp_sock*,int ) ;
 scalar_t__ tx_ring_posted (struct sdp_sock*) ;

__attribute__((used)) static
void sdp_tx_ring_purge(struct sdp_sock *ssk)
{
 while (tx_ring_posted(ssk)) {
  struct mbuf *mb;
  mb = sdp_send_completion(ssk, ring_tail(ssk->tx_ring));
  if (!mb)
   break;
  m_freem(mb);
 }
}
