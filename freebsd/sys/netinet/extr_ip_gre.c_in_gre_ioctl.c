
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_long ;
struct TYPE_8__ {int s_addr; } ;
struct sockaddr_in {void* sin_family; int sin_len; TYPE_3__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct TYPE_7__ {int s_addr; } ;
struct TYPE_6__ {int s_addr; } ;
struct ip {TYPE_2__ ip_dst; TYPE_1__ ip_src; } ;
struct in_aliasreq {struct sockaddr_in ifra_dstaddr; struct sockaddr_in ifra_addr; } ;
struct ifreq {int ifr_addr; } ;
struct greudp {int dummy; } ;
struct TYPE_9__ {TYPE_3__ ip_dst; TYPE_3__ ip_src; } ;
struct gre_softc {void* gre_family; TYPE_4__ gre_oip; struct ip* gre_hdr; int gre_iseq; int gre_oseq; int gre_options; } ;
struct gre_sockets {int dummy; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_10__ {int td_ucred; } ;


 void* AF_INET ;
 int CK_LIST_REMOVE (struct gre_softc*,int ) ;
 int EADDRNOTAVAIL ;
 int EEXIST ;
 int EINVAL ;
 int GRE_WAIT () ;
 int INADDR_ANY ;
 int M_GRE ;
 int M_WAITOK ;
 int M_ZERO ;



 int UINT32_MAX ;
 int * V_ipv4_hashtbl ;
 struct gre_sockets* V_ipv4_sockets ;
 void* V_ipv4_srchashtbl ;
 int chain ;
 TYPE_5__* curthread ;
 int free (struct ip*,int ) ;
 void* gre_hashinit () ;
 int in_gre_attach (struct gre_softc*) ;
 int in_gre_checkdup (struct gre_softc*,int ,int ,int ) ;
 struct ip* malloc (int,int ,int) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int prison_if (int ,struct sockaddr*) ;
 int srchash ;

int
in_gre_ioctl(struct gre_softc *sc, u_long cmd, caddr_t data)
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
   V_ipv4_hashtbl = gre_hashinit();
   V_ipv4_srchashtbl = gre_hashinit();
   V_ipv4_sockets = (struct gre_sockets *)gre_hashinit();
  }
  error = in_gre_checkdup(sc, src->sin_addr.s_addr,
      dst->sin_addr.s_addr, sc->gre_options);
  if (error == EADDRNOTAVAIL)
   break;
  if (error == EEXIST) {

   error = 0;
   break;
  }
  ip = malloc(sizeof(struct greudp) + 3 * sizeof(uint32_t),
      M_GRE, M_WAITOK | M_ZERO);
  ip->ip_src.s_addr = src->sin_addr.s_addr;
  ip->ip_dst.s_addr = dst->sin_addr.s_addr;
  if (sc->gre_family != 0) {

   CK_LIST_REMOVE(sc, chain);
   CK_LIST_REMOVE(sc, srchash);
   GRE_WAIT();
   free(sc->gre_hdr, M_GRE);

  }
  sc->gre_family = AF_INET;
  sc->gre_hdr = ip;
  sc->gre_oseq = 0;
  sc->gre_iseq = UINT32_MAX;
  error = in_gre_attach(sc);
  if (error != 0) {
   sc->gre_family = 0;
   free(sc->gre_hdr, M_GRE);
  }
  break;
 case 129:
 case 130:
  if (sc->gre_family != AF_INET) {
   error = EADDRNOTAVAIL;
   break;
  }
  src = (struct sockaddr_in *)&ifr->ifr_addr;
  memset(src, 0, sizeof(*src));
  src->sin_family = AF_INET;
  src->sin_len = sizeof(*src);
  src->sin_addr = (cmd == 129) ?
      sc->gre_oip.ip_src: sc->gre_oip.ip_dst;
  error = prison_if(curthread->td_ucred, (struct sockaddr *)src);
  if (error != 0)
   memset(src, 0, sizeof(*src));
  break;
 }
 return (error);
}
