
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_addrinfo {int dummy; } ;
struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;


 int AF_UNSPEC ;
 int RTM_IFANNOUNCE ;
 int rt_dispatch (struct mbuf*,int ) ;
 struct mbuf* rt_makeifannouncemsg (struct ifnet*,int ,int,struct rt_addrinfo*) ;

void
rt_ifannouncemsg(struct ifnet *ifp, int what)
{
 struct mbuf *m;
 struct rt_addrinfo info;

 m = rt_makeifannouncemsg(ifp, RTM_IFANNOUNCE, what, &info);
 if (m != ((void*)0))
  rt_dispatch(m, AF_UNSPEC);
}
