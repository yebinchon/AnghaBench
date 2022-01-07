
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct sockaddr {int dummy; } ;
struct inpcb {int dummy; } ;


 int in6_pcbconnect_mbuf (struct inpcb*,struct sockaddr*,struct ucred*,int *) ;

int
in6_pcbconnect(struct inpcb *inp, struct sockaddr *nam, struct ucred *cred)
{

 return (in6_pcbconnect_mbuf(inp, nam, cred, ((void*)0)));
}
