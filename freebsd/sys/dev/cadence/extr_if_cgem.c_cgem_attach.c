
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct cgem_softc {int rxhangwar; int intrhand; int * irq_res; int sc_mtx; int tick_ch; int miibus; int rxbufs; int if_old_flags; int * ifp; int * mem_res; scalar_t__ ref_clk_num; int dev; } ;
typedef int phandle_t ;
typedef int pcell_t ;
typedef int * if_t ;
typedef int device_t ;
typedef int cell ;


 int BMSR_DEFCAPMASK ;
 int CGEM_LOCK (struct cgem_softc*) ;
 int CGEM_LOCK_INIT (struct cgem_softc*) ;
 int CGEM_NUM_TX_DESCS ;
 int CGEM_UNLOCK (struct cgem_softc*) ;
 int DEFAULT_NUM_RX_BUFS ;
 int ENOMEM ;
 int ETHER_ADDR_LEN ;
 int IFCAP_HWCSUM ;
 int IFCAP_HWCSUM_IPV6 ;
 int IFCAP_VLAN_HWCSUM ;
 int IFCAP_VLAN_MTU ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFT_ETHER ;
 int IF_CGEM_NAME ;
 int INTR_EXCL ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int MII_OFFSET_ANY ;
 int MII_PHY_ANY ;
 scalar_t__ OF_getprop (int ,char*,int *,int) ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct cgem_softc*,int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int cgem_add_sysctls (int ) ;
 int cgem_detach (int ) ;
 int cgem_get_mac (struct cgem_softc*,int *) ;
 int cgem_ifmedia_sts ;
 int cgem_ifmedia_upd ;
 int cgem_init ;
 int cgem_intr ;
 int cgem_ioctl ;
 int cgem_reset (struct cgem_softc*) ;
 int cgem_setup_descs (struct cgem_softc*) ;
 int cgem_start ;
 struct cgem_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int ether_ifattach (int *,int *) ;
 int ether_ifdetach (int *) ;
 scalar_t__ fdt32_to_cpu (int ) ;
 int * if_alloc (int ) ;
 int if_getcapabilities (int *) ;
 int if_getflags (int *) ;
 int if_initname (int *,int ,int ) ;
 int if_setcapabilitiesbit (int *,int,int ) ;
 int if_setcapenable (int *,int) ;
 int if_setflags (int *,int) ;
 int if_sethwassist (int *,int ) ;
 int if_setinitfn (int *,int ) ;
 int if_setioctlfn (int *,int ) ;
 int if_setsendqlen (int *,int ) ;
 int if_setsendqready (int *) ;
 int if_setsoftc (int *,struct cgem_softc*) ;
 int if_setstartfn (int *,int ) ;
 int mii_attach (int ,int *,int *,int ,int ,int ,int ,int ,int ) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
cgem_attach(device_t dev)
{
 struct cgem_softc *sc = device_get_softc(dev);
 if_t ifp = ((void*)0);
 phandle_t node;
 pcell_t cell;
 int rid, err;
 u_char eaddr[ETHER_ADDR_LEN];

 sc->dev = dev;
 CGEM_LOCK_INIT(sc);


 node = ofw_bus_get_node(dev);
 sc->ref_clk_num = 0;
 if (OF_getprop(node, "ref-clock-num", &cell, sizeof(cell)) > 0)
  sc->ref_clk_num = fdt32_to_cpu(cell);


 rid = 0;
 sc->mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
          RF_ACTIVE);
 if (sc->mem_res == ((void*)0)) {
  device_printf(dev, "could not allocate memory resources.\n");
  return (ENOMEM);
 }


 rid = 0;
 sc->irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
          RF_ACTIVE);
 if (sc->irq_res == ((void*)0)) {
  device_printf(dev, "could not allocate interrupt resource.\n");
  cgem_detach(dev);
  return (ENOMEM);
 }


 ifp = sc->ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0)) {
  device_printf(dev, "could not allocate ifnet structure\n");
  cgem_detach(dev);
  return (ENOMEM);
 }
 if_setsoftc(ifp, sc);
 if_initname(ifp, IF_CGEM_NAME, device_get_unit(dev));
 if_setflags(ifp, IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST);
 if_setinitfn(ifp, cgem_init);
 if_setioctlfn(ifp, cgem_ioctl);
 if_setstartfn(ifp, cgem_start);
 if_setcapabilitiesbit(ifp, IFCAP_HWCSUM | IFCAP_HWCSUM_IPV6 |
         IFCAP_VLAN_MTU | IFCAP_VLAN_HWCSUM, 0);
 if_setsendqlen(ifp, CGEM_NUM_TX_DESCS);
 if_setsendqready(ifp);


 if_sethwassist(ifp, 0);
 if_setcapenable(ifp, if_getcapabilities(ifp) &
  ~(IFCAP_HWCSUM | IFCAP_HWCSUM_IPV6 | IFCAP_VLAN_HWCSUM));

 sc->if_old_flags = if_getflags(ifp);
 sc->rxbufs = DEFAULT_NUM_RX_BUFS;
 sc->rxhangwar = 1;


 CGEM_LOCK(sc);
 cgem_reset(sc);
 CGEM_UNLOCK(sc);


 err = mii_attach(dev, &sc->miibus, ifp,
    cgem_ifmedia_upd, cgem_ifmedia_sts,
    BMSR_DEFCAPMASK, MII_PHY_ANY, MII_OFFSET_ANY, 0);
 if (err) {
  device_printf(dev, "attaching PHYs failed\n");
  cgem_detach(dev);
  return (err);
 }


 err = cgem_setup_descs(sc);
 if (err) {
  device_printf(dev, "could not set up dma mem for descs.\n");
  cgem_detach(dev);
  return (ENOMEM);
 }


 cgem_get_mac(sc, eaddr);


 callout_init_mtx(&sc->tick_ch, &sc->sc_mtx, 0);

 ether_ifattach(ifp, eaddr);

 err = bus_setup_intr(dev, sc->irq_res, INTR_TYPE_NET | INTR_MPSAFE |
        INTR_EXCL, ((void*)0), cgem_intr, sc, &sc->intrhand);
 if (err) {
  device_printf(dev, "could not set interrupt handler.\n");
  ether_ifdetach(ifp);
  cgem_detach(dev);
  return (err);
 }

 cgem_add_sysctls(dev);

 return (0);
}
