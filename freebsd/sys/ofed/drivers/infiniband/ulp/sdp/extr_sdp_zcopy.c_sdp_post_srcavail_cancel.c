
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sdp_sock {int srcavail_cancel_work; int socket; } ;
struct mbuf {int dummy; } ;


 int SDP_SRCAVAIL_CANCEL_TIMEOUT ;
 int mb_entail (struct socket*,struct sdp_sock*,struct mbuf*) ;
 int schedule_delayed_work (int *,int ) ;
 struct mbuf* sdp_alloc_mb_srcavail_cancel (struct socket*,int ) ;
 int sdp_dbg_data (int ,char*) ;
 int sdp_post_sends (struct sdp_sock*,int ) ;
 struct sdp_sock* sdp_sk (struct socket*) ;

__attribute__((used)) static int sdp_post_srcavail_cancel(struct socket *sk)
{
 struct sdp_sock *ssk = sdp_sk(sk);
 struct mbuf *mb;

 sdp_dbg_data(ssk->socket, "Posting srcavail cancel\n");

 mb = sdp_alloc_mb_srcavail_cancel(sk, 0);
 mb_entail(sk, ssk, mb);

 sdp_post_sends(ssk, 0);

 schedule_delayed_work(&ssk->srcavail_cancel_work,
   SDP_SRCAVAIL_CANCEL_TIMEOUT);

 return 0;
}
