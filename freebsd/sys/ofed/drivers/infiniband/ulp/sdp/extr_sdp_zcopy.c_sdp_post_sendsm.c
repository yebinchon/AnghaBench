
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct mbuf {int dummy; } ;


 struct mbuf* sdp_alloc_mb_sendsm (struct socket*,int ) ;
 int sdp_post_send (int ,struct mbuf*) ;
 int sdp_sk (struct socket*) ;

int sdp_post_sendsm(struct socket *sk)
{
 struct mbuf *mb = sdp_alloc_mb_sendsm(sk, 0);

 sdp_post_send(sdp_sk(sk), mb);

 return 0;
}
