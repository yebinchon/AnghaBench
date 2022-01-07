
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sdp_sock {struct rx_srcavail_state* rx_sa; } ;
struct rx_srcavail_state {int umem; int fmr; } ;


 int sdp_free_fmr (struct socket*,int *,int *) ;
 struct sdp_sock* sdp_sk (struct socket*) ;

void sdp_abort_rdma_read(struct socket *sk)
{
 struct sdp_sock *ssk = sdp_sk(sk);
 struct rx_srcavail_state *rx_sa = ssk->rx_sa;

 if (!rx_sa)
  return;

 sdp_free_fmr(sk, &rx_sa->fmr, &rx_sa->umem);

 ssk->rx_sa = ((void*)0);
}
