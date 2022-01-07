
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_2__ {int ifq_maxlen; } ;
struct ifnet {int if_flags; TYPE_1__ if_snd; scalar_t__ if_addrlen; scalar_t__ if_hdrlen; int if_output; int if_ioctl; int if_drv_flags; int if_mtu; struct disc_softc* if_softc; } ;
struct if_clone {int dummy; } ;
struct disc_softc {struct ifnet* sc_ifp; } ;
typedef int caddr_t ;


 int DLT_NULL ;
 int DSMTU ;
 int ENOSPC ;
 int IFF_DRV_RUNNING ;
 int IFF_LOOPBACK ;
 int IFF_MULTICAST ;
 int IFT_LOOP ;
 int M_DISC ;
 int M_WAITOK ;
 int M_ZERO ;
 int bpfattach (struct ifnet*,int ,int) ;
 int discioctl ;
 int discname ;
 int discoutput ;
 int free (struct disc_softc*,int ) ;
 struct ifnet* if_alloc (int ) ;
 int if_attach (struct ifnet*) ;
 int if_initname (struct ifnet*,int ,int) ;
 struct disc_softc* malloc (int,int ,int) ;

__attribute__((used)) static int
disc_clone_create(struct if_clone *ifc, int unit, caddr_t params)
{
 struct ifnet *ifp;
 struct disc_softc *sc;

 sc = malloc(sizeof(struct disc_softc), M_DISC, M_WAITOK | M_ZERO);
 ifp = sc->sc_ifp = if_alloc(IFT_LOOP);
 if (ifp == ((void*)0)) {
  free(sc, M_DISC);
  return (ENOSPC);
 }

 ifp->if_softc = sc;
 if_initname(ifp, discname, unit);
 ifp->if_mtu = DSMTU;
 ifp->if_flags = IFF_LOOPBACK | IFF_MULTICAST;
 ifp->if_drv_flags = IFF_DRV_RUNNING;
 ifp->if_ioctl = discioctl;
 ifp->if_output = discoutput;
 ifp->if_hdrlen = 0;
 ifp->if_addrlen = 0;
 ifp->if_snd.ifq_maxlen = 20;
 if_attach(ifp);
 bpfattach(ifp, DLT_NULL, sizeof(u_int32_t));

 return (0);
}
