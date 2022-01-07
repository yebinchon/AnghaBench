
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdp_sock {int socket; } ;
struct rx_srcavail_state {int used; int reported; } ;
struct mbuf {int dummy; } ;


 struct mbuf* sdp_alloc_mb_rdmardcompl (int ,int,int ) ;
 int sdp_post_send (struct sdp_sock*,struct mbuf*) ;

int sdp_post_rdma_rd_compl(struct sdp_sock *ssk,
  struct rx_srcavail_state *rx_sa)
{
 struct mbuf *mb;
 int copied = rx_sa->used - rx_sa->reported;

 if (rx_sa->used <= rx_sa->reported)
  return 0;

 mb = sdp_alloc_mb_rdmardcompl(ssk->socket, copied, 0);

 rx_sa->reported += copied;


 sdp_post_send(ssk, mb);

 return 0;
}
