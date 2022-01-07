
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ifnet {int if_mtu; int if_drv_flags; } ;
struct TYPE_5__ {int max_mtu; int driver_mtx; struct ifnet* ifp; } ;
typedef TYPE_1__ mxge_softc_t ;


 int EINVAL ;
 int ETHER_HDR_LEN ;
 int ETHER_VLAN_ENCAP_LEN ;
 int IFF_DRV_RUNNING ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int mxge_close (TYPE_1__*,int ) ;
 int mxge_open (TYPE_1__*) ;

__attribute__((used)) static int
mxge_change_mtu(mxge_softc_t *sc, int mtu)
{
 struct ifnet *ifp = sc->ifp;
 int real_mtu, old_mtu;
 int err = 0;


 real_mtu = mtu + ETHER_HDR_LEN + ETHER_VLAN_ENCAP_LEN;
 if ((real_mtu > sc->max_mtu) || real_mtu < 60)
  return EINVAL;
 mtx_lock(&sc->driver_mtx);
 old_mtu = ifp->if_mtu;
 ifp->if_mtu = mtu;
 if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
  mxge_close(sc, 0);
  err = mxge_open(sc);
  if (err != 0) {
   ifp->if_mtu = old_mtu;
   mxge_close(sc, 0);
   (void) mxge_open(sc);
  }
 }
 mtx_unlock(&sc->driver_mtx);
 return err;
}
