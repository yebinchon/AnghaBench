
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_in6 {int dummy; } ;
struct in6_addr {int dummy; } ;
struct TYPE_3__ {int sin6_len; struct in6_addr sin6_addr; void* sin6_family; } ;
struct TYPE_4__ {int sin6_len; struct in6_addr sin6_addr; void* sin6_family; } ;
struct in6_aliasreq {TYPE_1__ ifra_prefixmask; TYPE_2__ ifra_addr; } ;


 void* AF_INET6 ;
 int memset (struct in6_aliasreq*,int ,int) ;

void
in6_prepare_ifra(struct in6_aliasreq *ifra, const struct in6_addr *addr,
    const struct in6_addr *mask)
{

 memset(ifra, 0, sizeof(struct in6_aliasreq));

 ifra->ifra_addr.sin6_family = AF_INET6;
 ifra->ifra_addr.sin6_len = sizeof(struct sockaddr_in6);
 if (addr != ((void*)0))
  ifra->ifra_addr.sin6_addr = *addr;

 ifra->ifra_prefixmask.sin6_family = AF_INET6;
 ifra->ifra_prefixmask.sin6_len = sizeof(struct sockaddr_in6);
 if (mask != ((void*)0))
  ifra->ifra_prefixmask.sin6_addr = *mask;
}
