
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int u_int8_t ;
struct octm_softc {int sc_port; int sc_flags; int sc_ifmedia; struct ifnet* sc_ifp; int * sc_intr; int sc_intr_cookie; int sc_dev; } ;
struct TYPE_11__ {int ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_hdrlen; TYPE_5__ if_snd; int if_capabilities; int if_capenable; int if_transmit; int if_ioctl; struct octm_softc* if_softc; int if_init; int if_mtu; } ;
struct ether_vlan_header {int dummy; } ;
typedef int device_t ;
struct TYPE_8__ {scalar_t__ u64; } ;
typedef TYPE_2__ cvmx_mixx_irhwm_t ;
struct TYPE_7__ {int ithena; } ;
struct TYPE_9__ {scalar_t__ u64; TYPE_1__ s; } ;
typedef TYPE_3__ cvmx_mixx_intena_t ;
struct TYPE_10__ {int mac_addr_base; } ;


 int CVMX_MGMT_PORT_NUM_TX_BUFFERS ;
 int CVMX_MIXX_INTENA (int) ;
 int CVMX_MIXX_IRHWM (int) ;
 int ENOMEM ;
 int ENXIO ;
 int ETHERMTU ;
 int IFCAP_VLAN_MTU ;
 int IFF_ALLMULTI ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFM_AUTO ;
 int IFM_ETHER ;
 int IFQ_SET_MAXLEN (TYPE_5__*,int ) ;
 int IFQ_SET_READY (TYPE_5__*) ;
 int IFT_ETHER ;
 int INTR_TYPE_NET ;
 int OCTEON_IRQ_MII ;
 int OCTEON_IRQ_MII1 ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int * bus_alloc_resource (int ,int ,int*,int,int,int,int ) ;
 int bus_describe_intr (int ,int *,int ,char*) ;
 int bus_generic_attach (int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_setup_intr (int ,int *,int ,int *,int ,struct octm_softc*,int *) ;
 int cvmx_mgmt_port_set_mac (int,scalar_t__) ;
 TYPE_4__* cvmx_sysinfo_get () ;
 int cvmx_write_csr (int ,scalar_t__) ;
 int device_get_name (int ) ;
 struct octm_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int ether_ifattach (struct ifnet*,int const*) ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,int ,int) ;
 int ifmedia_add (int *,int,int ,int *) ;
 int ifmedia_init (int *,int ,int ,int ) ;
 int ifmedia_set (int *,int) ;
 int memcpy (int *,int ,int) ;
 int octm_init ;
 int octm_ioctl ;
 int octm_medchange ;
 int octm_medstat ;
 int octm_rx_intr ;
 int octm_transmit ;

__attribute__((used)) static int
octm_attach(device_t dev)
{
 struct ifnet *ifp;
 struct octm_softc *sc;
 cvmx_mixx_irhwm_t mixx_irhwm;
 cvmx_mixx_intena_t mixx_intena;
 uint64_t mac;
 int error;
 int irq;
 int rid;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;
 sc->sc_port = device_get_unit(dev);

 switch (sc->sc_port) {
 case 0:
  irq = OCTEON_IRQ_MII;
  break;
 case 1:
  irq = OCTEON_IRQ_MII1;
  break;
 default:
  device_printf(dev, "unsupported management port %u.\n", sc->sc_port);
  return (ENXIO);
 }




 mac = 0;
 memcpy((u_int8_t *)&mac + 2, cvmx_sysinfo_get()->mac_addr_base, 6);
 mac += sc->sc_port;

 cvmx_mgmt_port_set_mac(sc->sc_port, mac);


 mixx_irhwm.u64 = 0;
 cvmx_write_csr(CVMX_MIXX_IRHWM(sc->sc_port), mixx_irhwm.u64);


 mixx_intena.u64 = 0;
 mixx_intena.s.ithena = 1;
 cvmx_write_csr(CVMX_MIXX_INTENA(sc->sc_port), mixx_intena.u64);


 rid = 0;
 sc->sc_intr = bus_alloc_resource(sc->sc_dev, SYS_RES_IRQ, &rid,
     irq, irq, 1, RF_ACTIVE);
 if (sc->sc_intr == ((void*)0)) {
  device_printf(dev, "unable to allocate IRQ.\n");
  return (ENXIO);
 }

 error = bus_setup_intr(sc->sc_dev, sc->sc_intr, INTR_TYPE_NET, ((void*)0),
     octm_rx_intr, sc, &sc->sc_intr_cookie);
 if (error != 0) {
  device_printf(dev, "unable to setup interrupt.\n");
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->sc_intr);
  return (ENXIO);
 }

 bus_describe_intr(sc->sc_dev, sc->sc_intr, sc->sc_intr_cookie, "rx");



 ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0)) {
  device_printf(dev, "cannot allocate ifnet.\n");
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->sc_intr);
  return (ENOMEM);
 }

 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 ifp->if_mtu = ETHERMTU;
 ifp->if_init = octm_init;
 ifp->if_softc = sc;
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST | IFF_ALLMULTI;
 ifp->if_ioctl = octm_ioctl;

 sc->sc_ifp = ifp;
 sc->sc_flags = ifp->if_flags;

 ifmedia_init(&sc->sc_ifmedia, 0, octm_medchange, octm_medstat);

 ifmedia_add(&sc->sc_ifmedia, IFM_ETHER | IFM_AUTO, 0, ((void*)0));
 ifmedia_set(&sc->sc_ifmedia, IFM_ETHER | IFM_AUTO);

 ether_ifattach(ifp, (const u_int8_t *)&mac + 2);

 ifp->if_transmit = octm_transmit;

 ifp->if_hdrlen = sizeof(struct ether_vlan_header);
 ifp->if_capabilities = IFCAP_VLAN_MTU;
 ifp->if_capenable = ifp->if_capabilities;

 IFQ_SET_MAXLEN(&ifp->if_snd, CVMX_MGMT_PORT_NUM_TX_BUFFERS);
 ifp->if_snd.ifq_drv_maxlen = CVMX_MGMT_PORT_NUM_TX_BUFFERS;
 IFQ_SET_READY(&ifp->if_snd);

 return (bus_generic_attach(dev));
}
