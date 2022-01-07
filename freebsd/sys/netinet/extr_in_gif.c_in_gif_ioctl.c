
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_3__ {int s_addr; } ;
struct sockaddr_in {void* sin_family; int sin_len; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct ip {TYPE_1__ ip_dst; TYPE_1__ ip_src; } ;
struct in_aliasreq {struct sockaddr_in ifra_dstaddr; struct sockaddr_in ifra_addr; } ;
struct ifreq {int ifr_addr; } ;
struct gif_softc {void* gif_family; struct ip* gif_iphdr; int gif_hdr; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_4__ {int td_ucred; } ;


 void* AF_INET ;
 int CK_LIST_REMOVE (struct gif_softc*,int ) ;
 int EADDRNOTAVAIL ;
 int EEXIST ;
 int EINVAL ;
 int GIF_WAIT () ;
 int INADDR_ANY ;
 int M_GIF ;
 int M_WAITOK ;
 int M_ZERO ;



 int * V_ipv4_hashtbl ;
 void* V_ipv4_srchashtbl ;
 int chain ;
 TYPE_2__* curthread ;
 int free (int ,int ) ;
 void* gif_hashinit () ;
 int in_gif_attach (struct gif_softc*) ;
 int in_gif_checkdup (struct gif_softc*,int ,int ) ;
 int in_gif_set_running (struct gif_softc*) ;
 struct ip* malloc (int,int ,int) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int prison_if (int ,struct sockaddr*) ;
 int srchash ;

int
in_gif_ioctl(struct gif_softc *sc, u_long cmd, caddr_t data)
{
 struct ifreq *ifr = (struct ifreq *)data;
 struct sockaddr_in *dst, *src;
 struct ip *ip;
 int error;


 error = EINVAL;
 switch (cmd) {
 case 128:
  src = &((struct in_aliasreq *)data)->ifra_addr;
  dst = &((struct in_aliasreq *)data)->ifra_dstaddr;


  if (src->sin_family != dst->sin_family ||
      src->sin_family != AF_INET ||
      src->sin_len != dst->sin_len ||
      src->sin_len != sizeof(*src))
   break;
  if (src->sin_addr.s_addr == INADDR_ANY ||
      dst->sin_addr.s_addr == INADDR_ANY) {
   error = EADDRNOTAVAIL;
   break;
  }
  if (V_ipv4_hashtbl == ((void*)0)) {
   V_ipv4_hashtbl = gif_hashinit();
   V_ipv4_srchashtbl = gif_hashinit();
  }
  error = in_gif_checkdup(sc, src->sin_addr.s_addr,
      dst->sin_addr.s_addr);
  if (error == EADDRNOTAVAIL)
   break;
  if (error == EEXIST) {

   error = 0;
   break;
  }
  ip = malloc(sizeof(*ip), M_GIF, M_WAITOK | M_ZERO);
  ip->ip_src.s_addr = src->sin_addr.s_addr;
  ip->ip_dst.s_addr = dst->sin_addr.s_addr;
  if (sc->gif_family != 0) {

   CK_LIST_REMOVE(sc, srchash);
   CK_LIST_REMOVE(sc, chain);
   GIF_WAIT();
   free(sc->gif_hdr, M_GIF);

  }
  sc->gif_family = AF_INET;
  sc->gif_iphdr = ip;
  in_gif_attach(sc);
  in_gif_set_running(sc);
  break;
 case 129:
 case 130:
  if (sc->gif_family != AF_INET) {
   error = EADDRNOTAVAIL;
   break;
  }
  src = (struct sockaddr_in *)&ifr->ifr_addr;
  memset(src, 0, sizeof(*src));
  src->sin_family = AF_INET;
  src->sin_len = sizeof(*src);
  src->sin_addr = (cmd == 129) ?
      sc->gif_iphdr->ip_src: sc->gif_iphdr->ip_dst;
  error = prison_if(curthread->td_ucred, (struct sockaddr *)src);
  if (error != 0)
   memset(src, 0, sizeof(*src));
  break;
 }
 return (error);
}
