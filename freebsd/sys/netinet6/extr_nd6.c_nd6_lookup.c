
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;
struct sockaddr_in6 {int sin6_len; struct in6_addr sin6_addr; int sin6_family; } ;
struct sockaddr {int dummy; } ;
struct llentry {int dummy; } ;
struct ifnet {int dummy; } ;
typedef int sin6 ;


 int AF_INET6 ;
 int IF_AFDATA_LOCK_ASSERT (struct ifnet*) ;
 int LLTABLE6 (struct ifnet*) ;
 int bzero (struct sockaddr_in6*,int) ;
 struct llentry* lla_lookup (int ,int,struct sockaddr*) ;

struct llentry *
nd6_lookup(const struct in6_addr *addr6, int flags, struct ifnet *ifp)
{
 struct sockaddr_in6 sin6;
 struct llentry *ln;

 bzero(&sin6, sizeof(sin6));
 sin6.sin6_len = sizeof(struct sockaddr_in6);
 sin6.sin6_family = AF_INET6;
 sin6.sin6_addr = *addr6;

 IF_AFDATA_LOCK_ASSERT(ifp);

 ln = lla_lookup(LLTABLE6(ifp), flags, (struct sockaddr *)&sin6);

 return (ln);
}
