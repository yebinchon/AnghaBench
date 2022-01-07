
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct inpcb {struct in6_addr in6p_laddr; int inp_lport; } ;
typedef int in_port_t ;


 int INP_RLOCK (struct inpcb*) ;
 int INP_RUNLOCK (struct inpcb*) ;
 int KASSERT (int ,char*) ;
 struct sockaddr* in6_sockaddr (int ,struct in6_addr*) ;
 struct inpcb* sotoinpcb (struct socket*) ;

int
in6_getsockaddr(struct socket *so, struct sockaddr **nam)
{
 struct inpcb *inp;
 struct in6_addr addr;
 in_port_t port;

 inp = sotoinpcb(so);
 KASSERT(inp != ((void*)0), ("in6_getsockaddr: inp == NULL"));

 INP_RLOCK(inp);
 port = inp->inp_lport;
 addr = inp->in6p_laddr;
 INP_RUNLOCK(inp);

 *nam = in6_sockaddr(port, &addr);
 return 0;
}
