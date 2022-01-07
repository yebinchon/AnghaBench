
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipsec_softc {scalar_t__ family; int * sp; TYPE_1__* ifp; } ;
struct TYPE_2__ {int if_drv_flags; } ;


 int CK_LIST_REMOVE (struct ipsec_softc*,int ) ;
 int IFF_DRV_RUNNING ;
 int IPSEC_SPCOUNT ;
 int IPSEC_WAIT () ;
 int SA_XLOCKED ;
 int ipsec_ioctl_sx ;
 int key_freesp (int *) ;
 int key_unregister_ifnet (int *,int) ;
 int srchash ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static void
ipsec_delete_tunnel(struct ipsec_softc *sc)
{
 int i;

 sx_assert(&ipsec_ioctl_sx, SA_XLOCKED);

 sc->ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
 if (sc->family != 0) {
  CK_LIST_REMOVE(sc, srchash);
  sc->family = 0;




  IPSEC_WAIT();

  key_unregister_ifnet(sc->sp, IPSEC_SPCOUNT);
  for (i = 0; i < IPSEC_SPCOUNT; i++)
   key_freesp(&sc->sp[i]);
 }
}
