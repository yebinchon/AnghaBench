
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sdp_sock {scalar_t__ min_bufs; struct socket* socket; } ;


 int sowwakeup (struct socket*) ;
 scalar_t__ tx_credits (struct sdp_sock*) ;

__attribute__((used)) static void
sdp_bzcopy_write_space(struct sdp_sock *ssk)
{
 struct socket *sk = ssk->socket;

 if (tx_credits(ssk) >= ssk->min_bufs && sk)
  sowwakeup(sk);
}
