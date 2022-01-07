
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct sockaddr {scalar_t__ sa_family; } ;
struct secpolicy {int dummy; } ;
struct ipsec_softc {scalar_t__ family; TYPE_1__* ifp; struct secpolicy** sp; } ;
struct TYPE_2__ {int if_drv_flags; } ;


 int CK_LIST_INSERT_HEAD (int ,struct ipsec_softc*,int ) ;
 int EAGAIN ;
 int ENOMEM ;
 int IFF_DRV_RUNNING ;
 int IPSEC_SPCOUNT ;
 int SA_XLOCKED ;
 int ipsec_delete_tunnel (struct ipsec_softc*) ;
 int ipsec_ioctl_sx ;
 scalar_t__ ipsec_newpolicies (struct ipsec_softc*,struct secpolicy**,struct sockaddr*,struct sockaddr*,int ) ;
 int ipsec_set_running (struct ipsec_softc*) ;
 int ipsec_srchash (struct sockaddr*) ;
 int key_freesp (struct secpolicy**) ;
 scalar_t__ key_register_ifnet (struct secpolicy**,int) ;
 int srchash ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static int
ipsec_set_tunnel(struct ipsec_softc *sc, struct sockaddr *src,
    struct sockaddr *dst, uint32_t reqid)
{
 struct secpolicy *sp[IPSEC_SPCOUNT];
 int i;

 sx_assert(&ipsec_ioctl_sx, SA_XLOCKED);


 if (ipsec_newpolicies(sc, sp, src, dst, reqid) == 0) {

  if (key_register_ifnet(sp, IPSEC_SPCOUNT) != 0) {
   for (i = 0; i < IPSEC_SPCOUNT; i++)
    key_freesp(&sp[i]);
   return (EAGAIN);
  }
  if (sc->family != 0)
   ipsec_delete_tunnel(sc);
  for (i = 0; i < IPSEC_SPCOUNT; i++)
   sc->sp[i] = sp[i];
  sc->family = src->sa_family;
  CK_LIST_INSERT_HEAD(ipsec_srchash(src), sc, srchash);
 } else {
  sc->ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
  return (ENOMEM);
 }
 ipsec_set_running(sc);
 return (0);
}
