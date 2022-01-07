
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sdp_sock {int keep2msl; } ;


 int SDP_KEEPALIVE_TIME ;
 int callout_pending (int *) ;
 int callout_reset (int *,int ,int ,struct sdp_sock*) ;
 int sdp_keepalive_timeout ;
 struct sdp_sock* sdp_sk (struct socket*) ;

void
sdp_start_keepalive_timer(struct socket *so)
{
 struct sdp_sock *ssk;

 ssk = sdp_sk(so);
 if (!callout_pending(&ssk->keep2msl))
                callout_reset(&ssk->keep2msl, SDP_KEEPALIVE_TIME,
                    sdp_keepalive_timeout, ssk);
}
