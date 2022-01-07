
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {int sa_family; } ;
struct TYPE_4__ {int sa; } ;
struct TYPE_3__ {int sa; } ;
struct secasindex {scalar_t__ reqid; TYPE_2__ dst; TYPE_1__ src; } ;
struct ipsec_softc {scalar_t__ family; scalar_t__ reqid; } ;
struct ifnet {struct ipsec_softc* if_softc; } ;


 int EEXIST ;
 int IPSEC_DIR_OUTBOUND ;
 int SA_XLOCKED ;
 struct secasindex* ipsec_getsaidx (struct ipsec_softc*,int ,int ) ;
 scalar_t__ ipsec_init_reqid (struct ipsec_softc*) ;
 int ipsec_ioctl_sx ;
 int ipsec_set_tunnel (struct ipsec_softc*,struct sockaddr*,struct sockaddr*,scalar_t__) ;
 scalar_t__ key_sockaddrcmp (int *,struct sockaddr*,int ) ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static int
ipsec_set_addresses(struct ifnet *ifp, struct sockaddr *src,
    struct sockaddr *dst)
{
 struct ipsec_softc *sc;
 struct secasindex *saidx;

 sx_assert(&ipsec_ioctl_sx, SA_XLOCKED);

 sc = ifp->if_softc;
 if (sc->family != 0) {
  saidx = ipsec_getsaidx(sc, IPSEC_DIR_OUTBOUND,
      src->sa_family);
  if (saidx != ((void*)0) && saidx->reqid == sc->reqid &&
      key_sockaddrcmp(&saidx->src.sa, src, 0) == 0 &&
      key_sockaddrcmp(&saidx->dst.sa, dst, 0) == 0)
   return (0);

 }

 if (ipsec_init_reqid(sc) != 0)
  return (EEXIST);
 return (ipsec_set_tunnel(sc, src, dst, sc->reqid));
}
