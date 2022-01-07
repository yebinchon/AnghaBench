
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;
struct sdp_sock {int laddr; int lport; } ;
struct in_addr {int s_addr; } ;
typedef int in_port_t ;


 int SDP_RLOCK (struct sdp_sock*) ;
 int SDP_RUNLOCK (struct sdp_sock*) ;
 struct sdp_sock* sdp_sk (struct socket*) ;
 struct sockaddr* sdp_sockaddr (int ,struct in_addr*) ;

__attribute__((used)) static int
sdp_getsockaddr(struct socket *so, struct sockaddr **nam)
{
 struct sdp_sock *ssk;
 struct in_addr addr;
 in_port_t port;

 ssk = sdp_sk(so);
 SDP_RLOCK(ssk);
 port = ssk->lport;
 addr.s_addr = ssk->laddr;
 SDP_RUNLOCK(ssk);

 *nam = sdp_sockaddr(port, &addr);
 return 0;
}
