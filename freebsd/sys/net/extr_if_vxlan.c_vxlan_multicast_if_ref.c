
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vxlan_softc {TYPE_2__* vxl_im6o; TYPE_1__* vxl_im4o; } ;
struct ifnet {int dummy; } ;
struct TYPE_4__ {struct ifnet* im6o_multicast_ifp; } ;
struct TYPE_3__ {struct ifnet* imo_multicast_ifp; } ;


 int VXLAN_LOCK_ASSERT (struct vxlan_softc*) ;
 int if_ref (struct ifnet*) ;

__attribute__((used)) static struct ifnet *
vxlan_multicast_if_ref(struct vxlan_softc *sc, int ipv4)
{
 struct ifnet *ifp;

 VXLAN_LOCK_ASSERT(sc);

 if (ipv4 && sc->vxl_im4o != ((void*)0))
  ifp = sc->vxl_im4o->imo_multicast_ifp;
 else if (!ipv4 && sc->vxl_im6o != ((void*)0))
  ifp = sc->vxl_im6o->im6o_multicast_ifp;
 else
  ifp = ((void*)0);

 if (ifp != ((void*)0))
  if_ref(ifp);

 return (ifp);
}
