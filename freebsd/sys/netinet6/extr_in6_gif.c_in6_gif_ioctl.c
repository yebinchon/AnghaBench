
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct sockaddr_in6 {void* sin6_family; int sin6_len; int sin6_addr; } ;
struct sockaddr {int dummy; } ;
struct ip6_hdr {int ip6_dst; int ip6_src; int ip6_vfc; } ;
struct in6_ifreq {int ifr_addr; } ;
struct in6_aliasreq {struct sockaddr_in6 ifra_dstaddr; struct sockaddr_in6 ifra_addr; } ;
struct gif_softc {void* gif_family; struct ip6_hdr* gif_ip6hdr; int gif_hdr; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {int td_ucred; } ;


 void* AF_INET6 ;
 int CK_LIST_REMOVE (struct gif_softc*,int ) ;
 int EADDRNOTAVAIL ;
 int EEXIST ;
 int EINVAL ;
 int GIF_WAIT () ;
 int IN6_IS_ADDR_UNSPECIFIED (int *) ;
 int IPV6_VERSION ;
 int M_GIF ;
 int M_WAITOK ;
 int M_ZERO ;



 int * V_ipv6_hashtbl ;
 void* V_ipv6_srchashtbl ;
 int chain ;
 TYPE_1__* curthread ;
 int free (int ,int ) ;
 void* gif_hashinit () ;
 int in6_gif_attach (struct gif_softc*) ;
 int in6_gif_checkdup (struct gif_softc*,int *,int *) ;
 int in6_gif_set_running (struct gif_softc*) ;
 struct ip6_hdr* malloc (int,int ,int) ;
 int memset (struct sockaddr_in6*,int ,int) ;
 int prison_if (int ,struct sockaddr*) ;
 int sa6_embedscope (struct sockaddr_in6*,int ) ;
 int sa6_recoverscope (struct sockaddr_in6*) ;
 int srchash ;

int
in6_gif_ioctl(struct gif_softc *sc, u_long cmd, caddr_t data)
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
   V_ipv6_hashtbl = gif_hashinit();
   V_ipv6_srchashtbl = gif_hashinit();
  }
  error = in6_gif_checkdup(sc, &src->sin6_addr,
      &dst->sin6_addr);
  if (error == EADDRNOTAVAIL)
   break;
  if (error == EEXIST) {

   error = 0;
   break;
  }
  ip6 = malloc(sizeof(*ip6), M_GIF, M_WAITOK | M_ZERO);
  ip6->ip6_src = src->sin6_addr;
  ip6->ip6_dst = dst->sin6_addr;
  ip6->ip6_vfc = IPV6_VERSION;
  if (sc->gif_family != 0) {

   CK_LIST_REMOVE(sc, srchash);
   CK_LIST_REMOVE(sc, chain);
   GIF_WAIT();
   free(sc->gif_hdr, M_GIF);

  }
  sc->gif_family = AF_INET6;
  sc->gif_ip6hdr = ip6;
  in6_gif_attach(sc);
  in6_gif_set_running(sc);
  break;
 case 129:
 case 130:
  if (sc->gif_family != AF_INET6) {
   error = EADDRNOTAVAIL;
   break;
  }
  src = (struct sockaddr_in6 *)&ifr->ifr_addr;
  memset(src, 0, sizeof(*src));
  src->sin6_family = AF_INET6;
  src->sin6_len = sizeof(*src);
  src->sin6_addr = (cmd == 129) ?
      sc->gif_ip6hdr->ip6_src: sc->gif_ip6hdr->ip6_dst;
  error = prison_if(curthread->td_ucred, (struct sockaddr *)src);
  if (error == 0)
   error = sa6_recoverscope(src);
  if (error != 0)
   memset(src, 0, sizeof(*src));
  break;
 }
 return (error);
}
