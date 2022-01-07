
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;
struct sockaddr_in6 {int sin6_len; struct in6_addr sin6_addr; int sin6_family; } ;
struct sockaddr {int dummy; } ;
struct llentry {int ln_state; } ;
struct ifnet {int dummy; } ;
typedef int sin6 ;


 int AF_INET6 ;
 int LLTABLE6 (struct ifnet*) ;
 int ND6_LLINFO_NOSTATE ;
 int bzero (struct sockaddr_in6*,int) ;
 struct llentry* lltable_alloc_entry (int ,int ,struct sockaddr*) ;

__attribute__((used)) static struct llentry *
nd6_alloc(const struct in6_addr *addr6, int flags, struct ifnet *ifp)
{
 struct sockaddr_in6 sin6;
 struct llentry *ln;

 bzero(&sin6, sizeof(sin6));
 sin6.sin6_len = sizeof(struct sockaddr_in6);
 sin6.sin6_family = AF_INET6;
 sin6.sin6_addr = *addr6;

 ln = lltable_alloc_entry(LLTABLE6(ifp), 0, (struct sockaddr *)&sin6);
 if (ln != ((void*)0))
  ln->ln_state = ND6_LLINFO_NOSTATE;

 return (ln);
}
