
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ifq_maxlen; } ;
struct ifnet {int if_flags; TYPE_1__ if_snd; scalar_t__ if_addrlen; scalar_t__ if_hdrlen; int if_output; int if_ioctl; struct ic_softc* if_softc; } ;
struct ic_softc {int ic_dev; int ic_addr; int ic_lock; struct ifnet* ic_ifp; } ;
typedef int device_t ;


 int DLT_NULL ;
 int ENOSPC ;
 int ICHDRLEN ;
 int ICMTU ;
 int IFF_MULTICAST ;
 int IFF_POINTOPOINT ;
 int IFF_SIMPLEX ;
 int IFT_PARA ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int PCF_MASTER_ADDRESS ;
 int bpfattach (struct ifnet*,int ,int ) ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 scalar_t__ device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int ic_alloc_buffers (struct ic_softc*,int ) ;
 int icioctl ;
 int icoutput ;
 struct ifnet* if_alloc (int ) ;
 int if_attach (struct ifnet*) ;
 int if_initname (struct ifnet*,int ,int ) ;
 int ifqmaxlen ;
 int mtx_init (int *,int ,int ,int ) ;

__attribute__((used)) static int
icattach(device_t dev)
{
 struct ic_softc *sc = (struct ic_softc *)device_get_softc(dev);
 struct ifnet *ifp;

 ifp = sc->ic_ifp = if_alloc(IFT_PARA);
 if (ifp == ((void*)0))
  return (ENOSPC);

 mtx_init(&sc->ic_lock, device_get_nameunit(dev), MTX_NETWORK_LOCK,
     MTX_DEF);
 sc->ic_addr = PCF_MASTER_ADDRESS;
 sc->ic_dev = dev;

 ifp->if_softc = sc;
 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 ifp->if_flags = IFF_SIMPLEX | IFF_POINTOPOINT | IFF_MULTICAST;
 ifp->if_ioctl = icioctl;
 ifp->if_output = icoutput;
 ifp->if_hdrlen = 0;
 ifp->if_addrlen = 0;
 ifp->if_snd.ifq_maxlen = ifqmaxlen;

 ic_alloc_buffers(sc, ICMTU);

 if_attach(ifp);

 bpfattach(ifp, DLT_NULL, ICHDRLEN);

 return (0);
}
