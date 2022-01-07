
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;
struct inpcb {int inp_vflag; } ;


 int INP_IPV4 ;
 int INP_IPV6 ;
 int KASSERT (int ,char*) ;
 int in6_getpeeraddr (struct socket*,struct sockaddr**) ;
 int in6_sin_2_v4mapsin6_in_sock (struct sockaddr**) ;
 int in_getpeeraddr (struct socket*,struct sockaddr**) ;
 struct inpcb* sotoinpcb (struct socket*) ;

int
in6_mapped_peeraddr(struct socket *so, struct sockaddr **nam)
{
 struct inpcb *inp;
 int error;

 inp = sotoinpcb(so);
 KASSERT(inp != ((void*)0), ("in6_mapped_peeraddr: inp == NULL"));
 error = in6_getpeeraddr(so, nam);

 return error;
}
