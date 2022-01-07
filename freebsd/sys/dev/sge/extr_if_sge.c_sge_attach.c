
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct sge_softc {int sge_res_id; int sge_flags; int sge_intrhand; int * sge_irq; int sge_miibus; struct ifnet* sge_ifp; int sge_rev; int * sge_res; int sge_res_type; int sge_mtx; int sge_stat_ch; int sge_dev; } ;
struct TYPE_3__ {scalar_t__ ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_capabilities; int if_hwassist; int if_capenable; int if_hdrlen; TYPE_1__ if_snd; int if_init; int if_start; int if_ioctl; struct sge_softc* if_softc; } ;
struct ether_vlan_header {int dummy; } ;
typedef int device_t ;


 int BMSR_DEFCAPMASK ;
 int CSUM_TSO ;
 int ENOSPC ;
 int ENXIO ;
 int ETHER_ADDR_LEN ;
 int IFCAP_RXCSUM ;
 int IFCAP_TSO4 ;
 int IFCAP_TXCSUM ;
 int IFCAP_VLAN_HWCSUM ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFCAP_VLAN_HWTSO ;
 int IFCAP_VLAN_MTU ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFQ_SET_MAXLEN (TYPE_1__*,scalar_t__) ;
 int IFQ_SET_READY (TYPE_1__*) ;
 int IFT_ETHER ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int MII_OFFSET_ANY ;
 int MII_PHY_ANY ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int PCIR_BAR (int ) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SGE_CSUM_FEATURES ;
 int SGE_FLAG_FASTETHER ;
 int SGE_FLAG_SIS190 ;
 scalar_t__ SGE_TX_RING_CNT ;
 scalar_t__ SIS_DEVICEID_190 ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct sge_softc*,int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 struct sge_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int ether_ifattach (struct ifnet*,int *) ;
 int ether_ifdetach (struct ifnet*) ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,int ,int ) ;
 int mii_attach (int ,int *,struct ifnet*,int ,int ,int ,int ,int ,int ) ;
 int mtx_init (int *,int ,int ,int ) ;
 int pci_enable_busmaster (int ) ;
 scalar_t__ pci_get_device (int ) ;
 int pci_get_revid (int ) ;
 int pci_read_config (int ,int,int) ;
 int sge_detach (int ) ;
 int sge_dma_alloc (struct sge_softc*) ;
 int sge_get_mac_addr_apc (struct sge_softc*,int *) ;
 int sge_get_mac_addr_eeprom (struct sge_softc*,int *) ;
 int sge_ifmedia_sts ;
 int sge_ifmedia_upd ;
 int sge_init ;
 int sge_intr ;
 int sge_ioctl ;
 int sge_reset (struct sge_softc*) ;
 int sge_start ;

__attribute__((used)) static int
sge_attach(device_t dev)
{
 struct sge_softc *sc;
 struct ifnet *ifp;
 uint8_t eaddr[ETHER_ADDR_LEN];
 int error = 0, rid;

 sc = device_get_softc(dev);
 sc->sge_dev = dev;

 mtx_init(&sc->sge_mtx, device_get_nameunit(dev), MTX_NETWORK_LOCK,
     MTX_DEF);
        callout_init_mtx(&sc->sge_stat_ch, &sc->sge_mtx, 0);




 pci_enable_busmaster(dev);


 sc->sge_res_id = PCIR_BAR(0);
 sc->sge_res_type = SYS_RES_MEMORY;
 sc->sge_res = bus_alloc_resource_any(dev, sc->sge_res_type,
     &sc->sge_res_id, RF_ACTIVE);
 if (sc->sge_res == ((void*)0)) {
  device_printf(dev, "couldn't allocate resource\n");
  error = ENXIO;
  goto fail;
 }

 rid = 0;
 sc->sge_irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_SHAREABLE | RF_ACTIVE);
 if (sc->sge_irq == ((void*)0)) {
  device_printf(dev, "couldn't allocate IRQ resources\n");
  error = ENXIO;
  goto fail;
 }
 sc->sge_rev = pci_get_revid(dev);
 if (pci_get_device(dev) == SIS_DEVICEID_190)
  sc->sge_flags |= SGE_FLAG_FASTETHER | SGE_FLAG_SIS190;

 sge_reset(sc);


 if ((pci_read_config(dev, 0x73, 1) & 0x01) != 0)
  sge_get_mac_addr_apc(sc, eaddr);
 else
  sge_get_mac_addr_eeprom(sc, eaddr);

 if ((error = sge_dma_alloc(sc)) != 0)
  goto fail;

 ifp = sc->sge_ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0)) {
  device_printf(dev, "cannot allocate ifnet structure.\n");
  error = ENOSPC;
  goto fail;
 }
 ifp->if_softc = sc;
 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
 ifp->if_ioctl = sge_ioctl;
 ifp->if_start = sge_start;
 ifp->if_init = sge_init;
 ifp->if_snd.ifq_drv_maxlen = SGE_TX_RING_CNT - 1;
 IFQ_SET_MAXLEN(&ifp->if_snd, ifp->if_snd.ifq_drv_maxlen);
 IFQ_SET_READY(&ifp->if_snd);
 ifp->if_capabilities = IFCAP_TXCSUM | IFCAP_RXCSUM | IFCAP_TSO4;
 ifp->if_hwassist = SGE_CSUM_FEATURES | CSUM_TSO;
 ifp->if_capenable = ifp->if_capabilities;



 error = mii_attach(dev, &sc->sge_miibus, ifp, sge_ifmedia_upd,
     sge_ifmedia_sts, BMSR_DEFCAPMASK, MII_PHY_ANY, MII_OFFSET_ANY, 0);
 if (error != 0) {
  device_printf(dev, "attaching PHYs failed\n");
  goto fail;
 }




 ether_ifattach(ifp, eaddr);


 ifp->if_capabilities |= IFCAP_VLAN_HWTAGGING | IFCAP_VLAN_HWCSUM |
     IFCAP_VLAN_HWTSO | IFCAP_VLAN_MTU;
 ifp->if_capenable = ifp->if_capabilities;

 ifp->if_hdrlen = sizeof(struct ether_vlan_header);


 error = bus_setup_intr(dev, sc->sge_irq, INTR_TYPE_NET | INTR_MPSAFE,
     ((void*)0), sge_intr, sc, &sc->sge_intrhand);
 if (error) {
  device_printf(dev, "couldn't set up irq\n");
  ether_ifdetach(ifp);
  goto fail;
 }

fail:
 if (error)
  sge_detach(dev);

 return (error);
}
