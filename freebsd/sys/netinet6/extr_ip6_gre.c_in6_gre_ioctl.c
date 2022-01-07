
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_long ;
struct sockaddr_in6 {void* sin6_family; int sin6_len; int sin6_addr; } ;
struct sockaddr {int dummy; } ;
struct ip6_hdr {int ip6_dst; int ip6_src; } ;
struct in6_ifreq {int ifr_addr; } ;
struct in6_aliasreq {struct sockaddr_in6 ifra_dstaddr; struct sockaddr_in6 ifra_addr; } ;
struct greudp6 {int dummy; } ;
struct TYPE_3__ {int ip6_dst; int ip6_src; } ;
struct gre_softc {void* gre_family; TYPE_1__ gre_oip6; struct ip6_hdr* gre_hdr; int gre_iseq; int gre_oseq; int gre_options; } ;
struct gre_sockets {int dummy; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_4__ {int td_ucred; } ;


 void* AF_INET6 ;
 int CK_LIST_REMOVE (struct gre_softc*,int ) ;
 int EADDRNOTAVAIL ;
 int EEXIST ;
 int EINVAL ;
 int GRE_WAIT () ;
 int IN6_IS_ADDR_UNSPECIFIED (int *) ;
 int M_GRE ;
 int M_WAITOK ;
 int M_ZERO ;



 int UINT32_MAX ;
 int * V_ipv6_hashtbl ;
 struct gre_sockets* V_ipv6_sockets ;
 void* V_ipv6_srchashtbl ;
 int chain ;
 TYPE_2__* curthread ;
 int free (struct ip6_hdr*,int ) ;
 void* gre_hashinit () ;
 int in6_gre_attach (struct gre_softc*) ;
 int in6_gre_checkdup (struct gre_softc*,int *,int *,int ) ;
 struct ip6_hdr* malloc (int,int ,int) ;
 int memset (struct sockaddr_in6*,int ,int) ;
 int prison_if (int ,struct sockaddr*) ;
 int sa6_embedscope (struct sockaddr_in6*,int ) ;
 int sa6_recoverscope (struct sockaddr_in6*) ;
 int srchash ;

int
in6_gre_ioctl(struct gre_softc *sc, u_long cmd, caddr_t data)
{
 struct in6_ifreq *ifr = (struct in6_ifreq *)data;
 struct sockaddr_in6 *dst, *src;
 struct ip6_hdr *ip6;
 int error;


 error = EINVAL;
 switch (cmd) {
 case 128:
  src = &((struct in6_aliasreq *)data)->ifra_addr;
  dst = &((struct in6_aliasreq *)data)->ifra_dstaddr;


  if (src->sin6_family != dst->sin6_family ||
      src->sin6_family != AF_INET6 ||
      src->sin6_len != dst->sin6_len ||
      src->sin6_len != sizeof(*src))
   break;
  if (IN6_IS_ADDR_UNSPECIFIED(&src->sin6_addr) ||
      IN6_IS_ADDR_UNSPECIFIED(&dst->sin6_addr)) {
   error = EADDRNOTAVAIL;
   break;
  }





  if ((error = sa6_embedscope(src, 0)) != 0 ||
      (error = sa6_embedscope(dst, 0)) != 0)
   break;

  if (V_ipv6_hashtbl == ((void*)0)) {
   V_ipv6_hashtbl = gre_hashinit();
   V_ipv6_srchashtbl = gre_hashinit();
   V_ipv6_sockets = (struct gre_sockets *)gre_hashinit();
  }
  error = in6_gre_checkdup(sc, &src->sin6_addr,
      &dst->sin6_addr, sc->gre_options);
  if (error == EADDRNOTAVAIL)
   break;
  if (error == EEXIST) {

   error = 0;
   break;
  }
  ip6 = malloc(sizeof(struct greudp6) + 3 * sizeof(uint32_t),
      M_GRE, M_WAITOK | M_ZERO);
  ip6->ip6_src = src->sin6_addr;
  ip6->ip6_dst = dst->sin6_addr;
  if (sc->gre_family != 0) {

   CK_LIST_REMOVE(sc, chain);
   CK_LIST_REMOVE(sc, srchash);
   GRE_WAIT();
   free(sc->gre_hdr, M_GRE);

  }
  sc->gre_family = AF_INET6;
  sc->gre_hdr = ip6;
  sc->gre_oseq = 0;
  sc->gre_iseq = UINT32_MAX;
  error = in6_gre_attach(sc);
  if (error != 0) {
   sc->gre_family = 0;
   free(sc->gre_hdr, M_GRE);
  }
  break;
 case 129:
 case 130:
  if (sc->gre_family != AF_INET6) {
   error = EADDRNOTAVAIL;
   break;
  }
  src = (struct sockaddr_in6 *)&ifr->ifr_addr;
  memset(src, 0, sizeof(*src));
  src->sin6_family = AF_INET6;
  src->sin6_len = sizeof(*src);
  src->sin6_addr = (cmd == 129) ?
      sc->gre_oip6.ip6_src: sc->gre_oip6.ip6_dst;
  error = prison_if(curthread->td_ucred, (struct sockaddr *)src);
  if (error == 0)
   error = sa6_recoverscope(src);
  if (error != 0)
   memset(src, 0, sizeof(*src));
  break;
 }
 return (error);
}
