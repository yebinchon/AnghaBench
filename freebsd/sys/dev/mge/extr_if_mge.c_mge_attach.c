
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct mii_softc {int mii_phy; } ;
struct mge_softc {int phy_attached; int switch_attached; int rx_ic_time; int tx_ic_time; int mge_intr_cnt; int * ih_cookie; int * res; int mge_ifmedia; TYPE_1__* mii; int miibus; struct ifnet* ifp; int wd_callout; scalar_t__ mge_hw_csum; scalar_t__ tx_desc_used_count; scalar_t__ tx_desc_used_idx; scalar_t__ rx_desc_curr; scalar_t__ tx_desc_curr; int receive_lock; int transmit_lock; int node; struct mge_softc* phy_sc; int dev; } ;
struct TYPE_7__ {scalar_t__ ifq_drv_maxlen; } ;
struct ifnet {int if_flags; TYPE_3__ if_snd; int if_ioctl; int if_start; int if_init; int if_capabilities; int if_capenable; int if_hwassist; struct mge_softc* if_softc; } ;
typedef int device_t ;
struct TYPE_6__ {int description; int * handler; } ;
struct TYPE_5__ {int mii_phys; } ;


 int BMSR_DEFCAPMASK ;
 int ENOMEM ;
 int ENXIO ;
 int ETHER_ADDR_LEN ;
 int IFCAP_HWCSUM ;
 int IFCAP_POLLING ;
 int IFCAP_VLAN_MTU ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFM_1000_T ;
 int IFM_ETHER ;
 int IFM_FDX ;
 int IFQ_SET_MAXLEN (TYPE_3__*,scalar_t__) ;
 int IFQ_SET_READY (TYPE_3__*) ;
 int IFT_ETHER ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 struct mii_softc* LIST_FIRST (int *) ;
 int MGE_CHECKSUM_FEATURES ;
 int MGE_REG_PHYDEV ;
 int MGE_SWITCH_PHYDEV ;
 scalar_t__ MGE_TX_DESC_NUM ;
 int MGE_WRITE (struct mge_softc*,int ,int ) ;
 int MII_OFFSET_ANY ;
 int MTX_DEF ;
 int bus_alloc_resources (int ,int ,int *) ;
 int bus_generic_attach (int ) ;
 int bus_setup_intr (int ,int ,int,int *,int ,struct mge_softc*,int *) ;
 int callout_init (int *,int ) ;
 int device_add_child (int ,char*,int) ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 void* device_get_softc (int ) ;
 scalar_t__ device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int ether_ifattach (struct ifnet*,int *) ;
 scalar_t__ fdt_find_compatible (int ,char*,int) ;
 scalar_t__ fdt_get_phyaddr (int ,int ,int*,void**) ;
 struct ifnet* if_alloc (int ) ;
 int if_free (struct ifnet*) ;
 int if_initname (struct ifnet*,int ,scalar_t__) ;
 int ifmedia_add (int *,int,int ,int *) ;
 int ifmedia_init (int *,int ,int ,int ) ;
 int ifmedia_set (int *,int) ;
 int mge_add_sysctls (struct mge_softc*) ;
 int mge_allocate_dma (struct mge_softc*) ;
 int mge_detach (int ) ;
 int mge_get_mac_address (struct mge_softc*,int *) ;
 int mge_ifmedia_sts ;
 int mge_ifmedia_upd ;
 int mge_init ;
 TYPE_2__* mge_intrs ;
 int mge_ioctl ;
 int mge_start ;
 int mge_ver_params (struct mge_softc*) ;
 int mii_attach (int ,int *,struct ifnet*,int ,int ,int ,int,int ,int ) ;
 int mtx_init (int *,int ,char*,int ) ;
 int ofw_bus_get_node (int ) ;
 int res_spec ;
 int switch_attached ;
 int sx_init (int *,char*) ;
 int sx_smi ;

__attribute__((used)) static int
mge_attach(device_t dev)
{
 struct mge_softc *sc;
 struct mii_softc *miisc;
 struct ifnet *ifp;
 uint8_t hwaddr[ETHER_ADDR_LEN];
 int i, error, phy;

 sc = device_get_softc(dev);
 sc->dev = dev;
 sc->node = ofw_bus_get_node(dev);
 phy = 0;

 if (fdt_get_phyaddr(sc->node, sc->dev, &phy, (void **)&sc->phy_sc) == 0) {
  device_printf(dev, "PHY%i attached, phy_sc points to %s\n", phy,
      device_get_nameunit(sc->phy_sc->dev));
  sc->phy_attached = 1;
 } else {
  device_printf(dev, "PHY not attached.\n");
  sc->phy_attached = 0;
  sc->phy_sc = sc;
 }

 if (fdt_find_compatible(sc->node, "mrvl,sw", 1) != 0) {
  device_printf(dev, "Switch attached.\n");
  sc->switch_attached = 1;

  switch_attached = 1;
 } else {
  sc->switch_attached = 0;
 }

 if (device_get_unit(dev) == 0) {
  sx_init(&sx_smi, "mge_tick() SMI access threads interlock");
 }


 mge_ver_params(sc);


 mtx_init(&sc->transmit_lock, device_get_nameunit(dev), "mge TX lock",
     MTX_DEF);
 mtx_init(&sc->receive_lock, device_get_nameunit(dev), "mge RX lock",
     MTX_DEF);


 error = bus_alloc_resources(dev, res_spec, sc->res);
 if (error) {
  device_printf(dev, "could not allocate resources\n");
  mge_detach(dev);
  return (ENXIO);
 }


 error = mge_allocate_dma(sc);
 if (error) {
  mge_detach(dev);
  return (ENXIO);
 }

 sc->tx_desc_curr = 0;
 sc->rx_desc_curr = 0;
 sc->tx_desc_used_idx = 0;
 sc->tx_desc_used_count = 0;


 sc->rx_ic_time = 768;
 sc->tx_ic_time = 768;
 mge_add_sysctls(sc);


 ifp = sc->ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0)) {
  device_printf(dev, "if_alloc() failed\n");
  mge_detach(dev);
  return (ENOMEM);
 }

 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 ifp->if_softc = sc;
 ifp->if_flags = IFF_SIMPLEX | IFF_MULTICAST | IFF_BROADCAST;
 ifp->if_capabilities = IFCAP_VLAN_MTU;
 if (sc->mge_hw_csum) {
  ifp->if_capabilities |= IFCAP_HWCSUM;
  ifp->if_hwassist = MGE_CHECKSUM_FEATURES;
 }
 ifp->if_capenable = ifp->if_capabilities;






 ifp->if_init = mge_init;
 ifp->if_start = mge_start;
 ifp->if_ioctl = mge_ioctl;

 ifp->if_snd.ifq_drv_maxlen = MGE_TX_DESC_NUM - 1;
 IFQ_SET_MAXLEN(&ifp->if_snd, ifp->if_snd.ifq_drv_maxlen);
 IFQ_SET_READY(&ifp->if_snd);

 mge_get_mac_address(sc, hwaddr);
 ether_ifattach(ifp, hwaddr);
 callout_init(&sc->wd_callout, 0);


 if (sc->phy_attached) {
  error = mii_attach(dev, &sc->miibus, ifp, mge_ifmedia_upd,
      mge_ifmedia_sts, BMSR_DEFCAPMASK, phy, MII_OFFSET_ANY, 0);
  if (error) {
   device_printf(dev, "MII failed to find PHY\n");
   if_free(ifp);
   sc->ifp = ((void*)0);
   mge_detach(dev);
   return (error);
  }
  sc->mii = device_get_softc(sc->miibus);


  miisc = LIST_FIRST(&sc->mii->mii_phys);
  MGE_WRITE(sc, MGE_REG_PHYDEV, miisc->mii_phy);
 } else {

  ifmedia_init(&sc->mge_ifmedia, 0,
      mge_ifmedia_upd,
      mge_ifmedia_sts);
  ifmedia_add(&sc->mge_ifmedia,
      IFM_ETHER | IFM_1000_T | IFM_FDX,
      0, ((void*)0));
  ifmedia_set(&sc->mge_ifmedia,
      IFM_ETHER | IFM_1000_T | IFM_FDX);
 }



 for (i = 1; i <= sc->mge_intr_cnt; ++i) {
  error = bus_setup_intr(dev, sc->res[i],
      INTR_TYPE_NET | INTR_MPSAFE,
      ((void*)0), *mge_intrs[(sc->mge_intr_cnt == 1 ? 0 : i)].handler,
      sc, &sc->ih_cookie[i - 1]);
  if (error) {
   device_printf(dev, "could not setup %s\n",
       mge_intrs[(sc->mge_intr_cnt == 1 ? 0 : i)].description);
   mge_detach(dev);
   return (error);
  }
 }

 if (sc->switch_attached) {
  device_t child;
  MGE_WRITE(sc, MGE_REG_PHYDEV, MGE_SWITCH_PHYDEV);
  child = device_add_child(dev, "mdio", -1);
  bus_generic_attach(dev);
 }

 return (0);
}
