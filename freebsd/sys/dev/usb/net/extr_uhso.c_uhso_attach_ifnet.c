
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ usb_error_t ;
struct usb_interface {TYPE_1__* idesc; } ;
struct uhso_softc {int sc_dev; int sc_mtx; int sc_c; struct ifnet* sc_ifp; int sc_if_xfer; int sc_udev; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_5__ {int ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_xname; TYPE_2__ if_snd; struct uhso_softc* if_softc; int if_output; int if_start; int if_init; int if_ioctl; int if_mtu; } ;
struct TYPE_4__ {int bInterfaceNumber; } ;


 int CTLFLAG_RD ;
 int DLT_RAW ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_NOARP ;
 int IFQ_SET_MAXLEN (TYPE_2__*,int ) ;
 int IFQ_SET_READY (TYPE_2__*) ;
 int IFT_OTHER ;
 int OID_AUTO ;
 int SYSCTL_ADD_STRING (struct sysctl_ctx_list*,int ,int ,char*,int ,int ,int ,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int UHSO_DPRINTF (int ,char*,int ) ;
 int UHSO_IFNET_MAX ;
 int UHSO_MAX_MTU ;
 unsigned int alloc_unr (int ) ;
 int bpfattach (struct ifnet*,int ,int ) ;
 int callout_init_mtx (int *,int *,int ) ;
 int callout_reset (int *,int,int ,struct uhso_softc*) ;
 int device_get_name (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int device_printf (int ,char*) ;
 struct ifnet* if_alloc (int ) ;
 int if_attach (struct ifnet*) ;
 int if_initname (struct ifnet*,int ,unsigned int) ;
 int ifqmaxlen ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int uhso_if_init ;
 int uhso_if_ioctl ;
 int uhso_if_output ;
 int uhso_if_rxflush ;
 int uhso_if_start ;
 int uhso_ifnet_config ;
 int uhso_ifnet_unit ;
 int usbd_errstr (scalar_t__) ;
 scalar_t__ usbd_transfer_setup (int ,int *,int ,int ,int ,struct uhso_softc*,int *) ;

__attribute__((used)) static int
uhso_attach_ifnet(struct uhso_softc *sc, struct usb_interface *iface, int type)
{
 struct ifnet *ifp;
 usb_error_t uerr;
 struct sysctl_ctx_list *sctx;
 struct sysctl_oid *soid;
 unsigned int devunit;

 uerr = usbd_transfer_setup(sc->sc_udev,
     &iface->idesc->bInterfaceNumber, sc->sc_if_xfer,
     uhso_ifnet_config, UHSO_IFNET_MAX, sc, &sc->sc_mtx);
 if (uerr) {
  UHSO_DPRINTF(0, "usbd_transfer_setup failed: %s\n",
      usbd_errstr(uerr));
  return (-1);
 }

 sc->sc_ifp = ifp = if_alloc(IFT_OTHER);
 if (sc->sc_ifp == ((void*)0)) {
  device_printf(sc->sc_dev, "if_alloc() failed\n");
  return (-1);
 }

 callout_init_mtx(&sc->sc_c, &sc->sc_mtx, 0);
 mtx_lock(&sc->sc_mtx);
 callout_reset(&sc->sc_c, 1, uhso_if_rxflush, sc);
 mtx_unlock(&sc->sc_mtx);






 devunit = alloc_unr(uhso_ifnet_unit);

 if_initname(ifp, device_get_name(sc->sc_dev), devunit);
 ifp->if_mtu = UHSO_MAX_MTU;
 ifp->if_ioctl = uhso_if_ioctl;
 ifp->if_init = uhso_if_init;
 ifp->if_start = uhso_if_start;
 ifp->if_output = uhso_if_output;
 ifp->if_flags = IFF_BROADCAST | IFF_MULTICAST | IFF_NOARP;
 ifp->if_softc = sc;
 IFQ_SET_MAXLEN(&ifp->if_snd, ifqmaxlen);
 ifp->if_snd.ifq_drv_maxlen = ifqmaxlen;
 IFQ_SET_READY(&ifp->if_snd);

 if_attach(ifp);
 bpfattach(ifp, DLT_RAW, 0);

 sctx = device_get_sysctl_ctx(sc->sc_dev);
 soid = device_get_sysctl_tree(sc->sc_dev);

 SYSCTL_ADD_STRING(sctx, SYSCTL_CHILDREN(soid), OID_AUTO, "netif",
     CTLFLAG_RD, ifp->if_xname, 0, "Attached network interface");

 return (0);
}
