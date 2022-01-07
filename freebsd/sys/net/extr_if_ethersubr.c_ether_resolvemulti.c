
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr_dl {void* sdl_alen; } ;
struct sockaddr {int sa_family; } ;
struct ifnet {int if_flags; } ;





 int EADDRNOTAVAIL ;
 int EAFNOSUPPORT ;
 void* ETHER_ADDR_LEN ;
 int ETHER_IS_MULTICAST (int *) ;
 int ETHER_MAP_IPV6_MULTICAST (int *,int *) ;
 int ETHER_MAP_IP_MULTICAST (TYPE_1__*,int *) ;
 int IFF_ALLMULTI ;
 int IFT_ETHER ;
 int IN6_IS_ADDR_MULTICAST (int *) ;
 int IN6_IS_ADDR_UNSPECIFIED (int *) ;
 int IN_MULTICAST (int ) ;
 int * LLADDR (struct sockaddr_dl*) ;
 struct sockaddr_dl* link_init_sdl (struct ifnet*,struct sockaddr*,int ) ;
 int ntohl (int ) ;

__attribute__((used)) static int
ether_resolvemulti(struct ifnet *ifp, struct sockaddr **llsa,
 struct sockaddr *sa)
{
 struct sockaddr_dl *sdl;






 u_char *e_addr;

 switch(sa->sa_family) {
 case 128:



  sdl = (struct sockaddr_dl *)sa;
  e_addr = LLADDR(sdl);
  if (!ETHER_IS_MULTICAST(e_addr))
   return EADDRNOTAVAIL;
  *llsa = ((void*)0);
  return 0;
 default:




  return EAFNOSUPPORT;
 }
}
