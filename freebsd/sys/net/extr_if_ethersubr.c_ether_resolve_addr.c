
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int u_char ;
struct in6_addr {int dummy; } ;
struct sockaddr_in6 {struct in6_addr sin6_addr; } ;
struct in_addr {int dummy; } ;
struct sockaddr_in {struct in_addr sin_addr; } ;
struct sockaddr {int sa_family; } ;
struct route {int ro_flags; } ;
struct mbuf {int m_flags; } ;
struct llentry {int dummy; } ;
struct ifnet {int * if_broadcastaddr; } ;
struct ether_header {int * ether_shost; int ether_type; int * ether_dhost; } ;
typedef int etype ;




 int EAFNOSUPPORT ;
 int EHOSTDOWN ;
 int EHOSTUNREACH ;
 int ETHERTYPE_IP ;
 int ETHERTYPE_IPV6 ;
 int ETHER_ADDR_LEN ;
 int ETHER_MAP_IPV6_MULTICAST (struct in6_addr const*,int *) ;
 int ETHER_MAP_IP_MULTICAST (struct in_addr const*,int *) ;
 int * IF_LLADDR (struct ifnet*) ;
 int LLE_IFADDR ;
 int M_BCAST ;
 int M_MCAST ;
 int RT_HAS_GW ;
 int RT_L2_ME ;
 int RT_MAY_LOOP ;
 int arpresolve (struct ifnet*,int ,struct mbuf*,struct sockaddr const*,int *,int*,struct llentry**) ;
 int htons (int ) ;
 int if_printf (struct ifnet*,char*,int) ;
 int m_freem (struct mbuf*) ;
 int memcpy (int *,int *,int) ;
 int nd6_resolve (struct ifnet*,int ,struct mbuf*,struct sockaddr const*,int *,int*,struct llentry**) ;

__attribute__((used)) static int
ether_resolve_addr(struct ifnet *ifp, struct mbuf *m,
 const struct sockaddr *dst, struct route *ro, u_char *phdr,
 uint32_t *pflags, struct llentry **plle)
{
 struct ether_header *eh;
 uint32_t lleflags = 0;
 int error = 0;




 if (plle)
  *plle = ((void*)0);
 eh = (struct ether_header *)phdr;

 switch (dst->sa_family) {
 default:
  if_printf(ifp, "can't handle af%d\n", dst->sa_family);
  if (m != ((void*)0))
   m_freem(m);
  return (EAFNOSUPPORT);
 }

 if (error == EHOSTDOWN) {
  if (ro != ((void*)0) && (ro->ro_flags & RT_HAS_GW) != 0)
   error = EHOSTUNREACH;
 }

 if (error != 0)
  return (error);

 *pflags = RT_MAY_LOOP;
 if (lleflags & LLE_IFADDR)
  *pflags |= RT_L2_ME;

 return (0);
}
