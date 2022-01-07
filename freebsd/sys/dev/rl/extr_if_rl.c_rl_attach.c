
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int tn ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct rl_type {int rl_did; scalar_t__ rl_basetype; int * rl_name; } ;
struct rl_softc {int rl_twister_enable; int rl_res_id; scalar_t__ rl_type; int rl_dev; int * rl_intrhand; int ** rl_irq; int rl_miibus; struct ifnet* rl_ifp; int rl_eecmd_read; int rl_cfg5; int rl_cfg4; int rl_cfg3; scalar_t__ rl_cfg2; int rl_cfg1; int rl_cfg0; int * rl_res; int rl_bhandle; int rl_btag; int rl_res_type; int rl_mtx; int rl_stat_callout; } ;
struct TYPE_3__ {int ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_capabilities; int if_capenable; TYPE_1__ if_snd; int if_init; int if_start; int if_ioctl; int if_mtu; struct rl_softc* if_softc; } ;
typedef int device_t ;


 int BMSR_DEFCAPMASK ;
 int CSR_READ_1 (struct rl_softc*,scalar_t__) ;
 int CSR_READ_4 (struct rl_softc*,int ) ;
 int CTLFLAG_RD ;
 int ENOSPC ;
 int ENXIO ;
 int ETHERMTU ;
 int ETHER_ADDR_LEN ;
 int IFCAP_POLLING ;
 int IFCAP_VLAN_MTU ;
 int IFCAP_WOL ;
 int IFCAP_WOL_MCAST ;
 int IFCAP_WOL_UCAST ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFQ_SET_MAXLEN (TYPE_1__*,int ) ;
 int IFQ_SET_READY (TYPE_1__*) ;
 int IFT_ETHER ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int MII_OFFSET_ANY ;
 int MII_PHY_ANY ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int OID_AUTO ;
 void* PCIR_BAR (int) ;
 int PCIY_PMG ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 scalar_t__ RL_8139 ;
 int RL_8139_CFG0 ;
 int RL_8139_CFG1 ;
 int RL_8139_CFG3 ;
 int RL_8139_CFG4 ;
 int RL_8139_CFG5 ;
 int RL_EECMD_READ_6BIT ;
 int RL_EECMD_READ_8BIT ;
 int RL_EE_EADDR ;
 int RL_EE_PCI_DID ;






 scalar_t__ RL_IDR0 ;
 int RL_LOCK (struct rl_softc*) ;
 int RL_PHYAD_INTERNAL ;
 int RL_TXCFG ;
 int RL_TXCFG_HWREV ;
 int RL_UNLOCK (struct rl_softc*) ;
 int SYSCTL_ADD_INT (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int ,int*,int ,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (int ) ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int TUNABLE_INT_FETCH (char*,int*) ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct rl_softc*,int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 struct rl_softc* device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int ether_ifattach (struct ifnet*,int*) ;
 int ether_ifdetach (struct ifnet*) ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,int ,int) ;
 int ifqmaxlen ;
 int mii_attach (int ,int *,struct ifnet*,int ,int ,int ,int,int ,int ) ;
 int mtx_init (int *,int ,int ,int ) ;
 int pci_enable_busmaster (int ) ;
 scalar_t__ pci_find_cap (int ,int ,int*) ;
 int rl_clrwol (struct rl_softc*) ;
 int rl_detach (int ) ;
 struct rl_type* rl_devs ;
 int rl_dma_alloc (struct rl_softc*) ;
 int rl_ifmedia_sts ;
 int rl_ifmedia_upd ;
 int rl_init ;
 int rl_intr ;
 int rl_ioctl ;
 int rl_read_eeprom (struct rl_softc*,int*,int ,int,int ) ;
 int rl_reset (struct rl_softc*) ;
 int rl_start ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int rman_get_end (int *) ;
 int rman_get_start (int *) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int
rl_attach(device_t dev)
{
 uint8_t eaddr[ETHER_ADDR_LEN];
 uint16_t as[3];
 struct ifnet *ifp;
 struct rl_softc *sc;
 const struct rl_type *t;
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid_list *children;
 int error = 0, hwrev, i, phy, pmc, rid;
 int prefer_iomap, unit;
 uint16_t rl_did = 0;
 char tn[32];

 sc = device_get_softc(dev);
 unit = device_get_unit(dev);
 sc->rl_dev = dev;

 sc->rl_twister_enable = 0;
 snprintf(tn, sizeof(tn), "dev.rl.%d.twister_enable", unit);
 TUNABLE_INT_FETCH(tn, &sc->rl_twister_enable);
 ctx = device_get_sysctl_ctx(sc->rl_dev);
 children = SYSCTL_CHILDREN(device_get_sysctl_tree(sc->rl_dev));
 SYSCTL_ADD_INT(ctx, children, OID_AUTO, "twister_enable", CTLFLAG_RD,
    &sc->rl_twister_enable, 0, "");

 mtx_init(&sc->rl_mtx, device_get_nameunit(dev), MTX_NETWORK_LOCK,
     MTX_DEF);
 callout_init_mtx(&sc->rl_stat_callout, &sc->rl_mtx, 0);

 pci_enable_busmaster(dev);
 prefer_iomap = 1;
 snprintf(tn, sizeof(tn), "dev.rl.%d.prefer_iomap", unit);
 TUNABLE_INT_FETCH(tn, &prefer_iomap);
 if (prefer_iomap) {
  sc->rl_res_id = PCIR_BAR(0);
  sc->rl_res_type = SYS_RES_IOPORT;
  sc->rl_res = bus_alloc_resource_any(dev, sc->rl_res_type,
      &sc->rl_res_id, RF_ACTIVE);
 }
 if (prefer_iomap == 0 || sc->rl_res == ((void*)0)) {
  sc->rl_res_id = PCIR_BAR(1);
  sc->rl_res_type = SYS_RES_MEMORY;
  sc->rl_res = bus_alloc_resource_any(dev, sc->rl_res_type,
      &sc->rl_res_id, RF_ACTIVE);
 }
 if (sc->rl_res == ((void*)0)) {
  device_printf(dev, "couldn't map ports/memory\n");
  error = ENXIO;
  goto fail;
 }
 sc->rl_btag = rman_get_bustag(sc->rl_res);
 sc->rl_bhandle = rman_get_bushandle(sc->rl_res);


 rid = 0;
 sc->rl_irq[0] = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_SHAREABLE | RF_ACTIVE);

 if (sc->rl_irq[0] == ((void*)0)) {
  device_printf(dev, "couldn't map interrupt\n");
  error = ENXIO;
  goto fail;
 }

 sc->rl_cfg0 = RL_8139_CFG0;
 sc->rl_cfg1 = RL_8139_CFG1;
 sc->rl_cfg2 = 0;
 sc->rl_cfg3 = RL_8139_CFG3;
 sc->rl_cfg4 = RL_8139_CFG4;
 sc->rl_cfg5 = RL_8139_CFG5;





 RL_LOCK(sc);
 rl_reset(sc);
 RL_UNLOCK(sc);

 sc->rl_eecmd_read = RL_EECMD_READ_6BIT;
 rl_read_eeprom(sc, (uint8_t *)&rl_did, 0, 1, 0);
 if (rl_did != 0x8129)
  sc->rl_eecmd_read = RL_EECMD_READ_8BIT;




 rl_read_eeprom(sc, (uint8_t *)as, RL_EE_EADDR, 3, 0);
 for (i = 0; i < 3; i++) {
  eaddr[(i * 2) + 0] = as[i] & 0xff;
  eaddr[(i * 2) + 1] = as[i] >> 8;
 }





 rl_read_eeprom(sc, (uint8_t *)&rl_did, RL_EE_PCI_DID, 1, 0);

 t = rl_devs;
 sc->rl_type = 0;
 while(t->rl_name != ((void*)0)) {
  if (rl_did == t->rl_did) {
   sc->rl_type = t->rl_basetype;
   break;
  }
  t++;
 }

 if (sc->rl_type == 0) {
  device_printf(dev, "unknown device ID: %x assuming 8139\n",
      rl_did);
  sc->rl_type = RL_8139;




  for (i = 0; i < ETHER_ADDR_LEN; i++)
   eaddr[i] = CSR_READ_1(sc, RL_IDR0 + i);
 }

 if ((error = rl_dma_alloc(sc)) != 0)
  goto fail;

 ifp = sc->rl_ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0)) {
  device_printf(dev, "can not if_alloc()\n");
  error = ENOSPC;
  goto fail;
 }




 phy = MII_PHY_ANY;
 if (sc->rl_type == RL_8139)
  phy = 0;
 error = mii_attach(dev, &sc->rl_miibus, ifp, rl_ifmedia_upd,
     rl_ifmedia_sts, BMSR_DEFCAPMASK, phy, MII_OFFSET_ANY, 0);
 if (error != 0) {
  device_printf(dev, "attaching PHYs failed\n");
  goto fail;
 }

 ifp->if_softc = sc;
 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 ifp->if_mtu = ETHERMTU;
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
 ifp->if_ioctl = rl_ioctl;
 ifp->if_start = rl_start;
 ifp->if_init = rl_init;
 ifp->if_capabilities = IFCAP_VLAN_MTU;

 if (sc->rl_type == RL_8139 &&
     pci_find_cap(sc->rl_dev, PCIY_PMG, &pmc) == 0) {
  hwrev = CSR_READ_4(sc, RL_TXCFG) & RL_TXCFG_HWREV;
  switch (hwrev) {
  case 130:
  case 131:
  case 129:
  case 128:
  case 132:
  case 133:
   ifp->if_capabilities |= IFCAP_WOL;

   rl_clrwol(sc);
   break;
  default:
   break;
  }
 }
 ifp->if_capenable = ifp->if_capabilities;
 ifp->if_capenable &= ~(IFCAP_WOL_UCAST | IFCAP_WOL_MCAST);



 IFQ_SET_MAXLEN(&ifp->if_snd, ifqmaxlen);
 ifp->if_snd.ifq_drv_maxlen = ifqmaxlen;
 IFQ_SET_READY(&ifp->if_snd);




 ether_ifattach(ifp, eaddr);


 error = bus_setup_intr(dev, sc->rl_irq[0], INTR_TYPE_NET | INTR_MPSAFE,
     ((void*)0), rl_intr, sc, &sc->rl_intrhand[0]);
 if (error) {
  device_printf(sc->rl_dev, "couldn't set up irq\n");
  ether_ifdetach(ifp);
 }

fail:
 if (error)
  rl_detach(dev);

 return (error);
}
