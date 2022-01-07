
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int sa_family; } ;
struct ifnet {int if_flags; } ;





 int EADDRNOTAVAIL ;
 int EAFNOSUPPORT ;
 int IFF_ALLMULTI ;
 int IN6_IS_ADDR_MULTICAST (int *) ;
 int IN6_IS_ADDR_UNSPECIFIED (int *) ;
 int IN_MULTICAST (int ) ;
 int ntohl (int ) ;

__attribute__((used)) static int
firewire_resolvemulti(struct ifnet *ifp, struct sockaddr **llsa,
    struct sockaddr *sa)
{







 switch(sa->sa_family) {
 case 128:



  *llsa = ((void*)0);
  return 0;
 default:




  return EAFNOSUPPORT;
 }
}
