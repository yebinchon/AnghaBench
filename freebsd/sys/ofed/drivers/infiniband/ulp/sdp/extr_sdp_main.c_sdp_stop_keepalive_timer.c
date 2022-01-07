
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sdp_sock {int keep2msl; } ;


 int callout_stop (int *) ;
 struct sdp_sock* sdp_sk (struct socket*) ;

__attribute__((used)) static void
sdp_stop_keepalive_timer(struct socket *so)
{
 struct sdp_sock *ssk;

 ssk = sdp_sk(so);
 callout_stop(&ssk->keep2msl);
}
