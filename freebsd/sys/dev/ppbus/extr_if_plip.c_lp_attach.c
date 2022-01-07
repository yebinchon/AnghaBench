
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct lp_data {int * res_irq; int sc_intr_cookie; struct ifnet* sc_ifp; int sc_dev; } ;
struct TYPE_2__ {int ifq_maxlen; } ;
struct ifnet {int if_flags; TYPE_1__ if_snd; scalar_t__ if_addrlen; scalar_t__ if_hdrlen; int if_output; int if_ioctl; int if_mtu; struct lp_data* if_softc; } ;
typedef int device_t ;


 struct lp_data* DEVTOSOFTC (int ) ;
 int DLT_NULL ;
 int ENOSPC ;
 int ENXIO ;
 int IFF_MULTICAST ;
 int IFF_POINTOPOINT ;
 int IFF_SIMPLEX ;
 int IFT_PARA ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int LPMTU ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int bpfattach (struct ifnet*,int ,int) ;
 int bpfdetach (struct ifnet*) ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct lp_data*,int *) ;
 int device_get_name (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 struct ifnet* if_alloc (int ) ;
 int if_attach (struct ifnet*) ;
 int if_detach (struct ifnet*) ;
 int if_initname (struct ifnet*,int ,int ) ;
 int ifqmaxlen ;
 int lp_intr ;
 int lpioctl ;
 int lpoutput ;

__attribute__((used)) static int
lp_attach(device_t dev)
{
 struct lp_data *lp = DEVTOSOFTC(dev);
 struct ifnet *ifp;
 int error, rid = 0;

 lp->sc_dev = dev;





 lp->res_irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_SHAREABLE);
 if (lp->res_irq == ((void*)0)) {
  device_printf(dev, "cannot reserve interrupt, failed.\n");
  return (ENXIO);
 }

 ifp = lp->sc_ifp = if_alloc(IFT_PARA);
 if (ifp == ((void*)0)) {
  return (ENOSPC);
 }

 ifp->if_softc = lp;
 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 ifp->if_mtu = LPMTU;
 ifp->if_flags = IFF_SIMPLEX | IFF_POINTOPOINT | IFF_MULTICAST;
 ifp->if_ioctl = lpioctl;
 ifp->if_output = lpoutput;
 ifp->if_hdrlen = 0;
 ifp->if_addrlen = 0;
 ifp->if_snd.ifq_maxlen = ifqmaxlen;
 if_attach(ifp);

 bpfattach(ifp, DLT_NULL, sizeof(u_int32_t));





 error = bus_setup_intr(dev, lp->res_irq, INTR_TYPE_NET | INTR_MPSAFE,
     ((void*)0), lp_intr, lp, &lp->sc_intr_cookie);
 if (error) {
  bpfdetach(ifp);
  if_detach(ifp);
  bus_release_resource(dev, SYS_RES_IRQ, 0, lp->res_irq);
  device_printf(dev, "Unable to register interrupt handler\n");
  return (error);
 }

 return (0);
}
