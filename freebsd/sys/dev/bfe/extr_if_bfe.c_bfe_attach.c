
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_hdrlen; int if_capenable; int if_capabilities; TYPE_1__ if_snd; int if_init; int if_start; int if_ioctl; struct bfe_softc* if_softc; } ;
struct ether_vlan_header {int dummy; } ;
struct bfe_softc {int bfe_intrhand; int * bfe_irq; int bfe_enaddr; int bfe_phyaddr; int bfe_miibus; struct ifnet* bfe_ifp; int * bfe_res; int bfe_dev; int bfe_mtx; int bfe_stat_co; } ;
typedef int device_t ;


 int BFE_LOCK (struct bfe_softc*) ;
 int BFE_TX_QLEN ;
 int BFE_UNLOCK (struct bfe_softc*) ;
 int BMSR_DEFCAPMASK ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int ENOSPC ;
 int ENXIO ;
 int IFCAP_VLAN_MTU ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFQ_SET_MAXLEN (TYPE_1__*,int ) ;
 int IFQ_SET_READY (TYPE_1__*) ;
 int IFT_ETHER ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int MII_OFFSET_ANY ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int OID_AUTO ;
 int PCIR_BAR (int ) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYSCTL_ADD_PROC (int ,int ,int ,char*,int,struct bfe_softc*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bfe_chip_reset (struct bfe_softc*) ;
 int bfe_detach (int ) ;
 scalar_t__ bfe_dma_alloc (struct bfe_softc*) ;
 int bfe_get_config (struct bfe_softc*) ;
 int bfe_ifmedia_sts ;
 int bfe_ifmedia_upd ;
 int bfe_init ;
 int bfe_intr ;
 int bfe_ioctl ;
 int bfe_start ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct bfe_softc*,int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 struct bfe_softc* device_get_softc (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int ether_ifattach (struct ifnet*,int ) ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,int ,int ) ;
 int mii_attach (int ,int *,struct ifnet*,int ,int ,int ,int ,int ,int ) ;
 int mtx_init (int *,int ,int ,int ) ;
 int pci_enable_busmaster (int ) ;
 int sysctl_bfe_stats ;

__attribute__((used)) static int
bfe_attach(device_t dev)
{
 struct ifnet *ifp = ((void*)0);
 struct bfe_softc *sc;
 int error = 0, rid;

 sc = device_get_softc(dev);
 mtx_init(&sc->bfe_mtx, device_get_nameunit(dev), MTX_NETWORK_LOCK,
   MTX_DEF);
 callout_init_mtx(&sc->bfe_stat_co, &sc->bfe_mtx, 0);

 sc->bfe_dev = dev;




 pci_enable_busmaster(dev);

 rid = PCIR_BAR(0);
 sc->bfe_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
   RF_ACTIVE);
 if (sc->bfe_res == ((void*)0)) {
  device_printf(dev, "couldn't map memory\n");
  error = ENXIO;
  goto fail;
 }


 rid = 0;

 sc->bfe_irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
   RF_SHAREABLE | RF_ACTIVE);
 if (sc->bfe_irq == ((void*)0)) {
  device_printf(dev, "couldn't map interrupt\n");
  error = ENXIO;
  goto fail;
 }

 if (bfe_dma_alloc(sc) != 0) {
  device_printf(dev, "failed to allocate DMA resources\n");
  error = ENXIO;
  goto fail;
 }

 SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(dev)), OID_AUTO,
     "stats", CTLTYPE_INT | CTLFLAG_RW, sc, 0, sysctl_bfe_stats,
     "I", "Statistics");


 ifp = sc->bfe_ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0)) {
  device_printf(dev, "failed to if_alloc()\n");
  error = ENOSPC;
  goto fail;
 }
 ifp->if_softc = sc;
 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
 ifp->if_ioctl = bfe_ioctl;
 ifp->if_start = bfe_start;
 ifp->if_init = bfe_init;
 IFQ_SET_MAXLEN(&ifp->if_snd, BFE_TX_QLEN);
 ifp->if_snd.ifq_drv_maxlen = BFE_TX_QLEN;
 IFQ_SET_READY(&ifp->if_snd);

 bfe_get_config(sc);


 BFE_LOCK(sc);
 bfe_chip_reset(sc);
 BFE_UNLOCK(sc);

 error = mii_attach(dev, &sc->bfe_miibus, ifp, bfe_ifmedia_upd,
     bfe_ifmedia_sts, BMSR_DEFCAPMASK, sc->bfe_phyaddr, MII_OFFSET_ANY,
     0);
 if (error != 0) {
  device_printf(dev, "attaching PHYs failed\n");
  goto fail;
 }

 ether_ifattach(ifp, sc->bfe_enaddr);




 ifp->if_hdrlen = sizeof(struct ether_vlan_header);
 ifp->if_capabilities |= IFCAP_VLAN_MTU;
 ifp->if_capenable |= IFCAP_VLAN_MTU;




 error = bus_setup_intr(dev, sc->bfe_irq, INTR_TYPE_NET | INTR_MPSAFE,
   ((void*)0), bfe_intr, sc, &sc->bfe_intrhand);

 if (error) {
  device_printf(dev, "couldn't set up irq\n");
  goto fail;
 }
fail:
 if (error != 0)
  bfe_detach(dev);
 return (error);
}
