
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct mii_data {int mii_media; } ;
struct mgb_softc {int dev; int * pba; int miibus; int ctx; } ;
struct mgb_ring_desc {int dummy; } ;
struct ether_addr {int octet; } ;
typedef TYPE_1__* if_softc_ctx_t ;
typedef int if_ctx_t ;
struct TYPE_3__ {int* isc_txqsizes; int* isc_ntxd; int* isc_rxqsizes; int* isc_nrxd; int isc_nrxqsets; int isc_ntxqsets; int isc_capabilities; int isc_capenable; int isc_msix_bar; int * isc_media; scalar_t__ isc_tx_csum_flags; int isc_tx_nsegments; int * isc_txrx; } ;


 int BMSR_DEFCAPMASK ;
 int CSR_WRITE_REG (struct mgb_softc*,int ,int ) ;
 int ENXIO ;
 scalar_t__ ETHER_IS_BROADCAST (int ) ;
 scalar_t__ ETHER_IS_MULTICAST (int ) ;
 scalar_t__ ETHER_IS_ZERO (int ) ;
 int IFCAP_JUMBO_MTU ;
 int IFCAP_LRO ;
 int IFCAP_RXCSUM ;
 int IFCAP_RXCSUM_IPV6 ;
 int IFCAP_TSO4 ;
 int IFCAP_TSO6 ;
 int IFCAP_TXCSUM ;
 int IFCAP_TXCSUM_IPV6 ;
 int IFCAP_VLAN_HWCSUM ;
 int IFCAP_VLAN_HWFILTER ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFCAP_VLAN_HWTSO ;
 int IFCAP_VLAN_MTU ;
 int MGB_DMA_MAXSEGS ;
 int MGB_INTR_VEC_OTHER_MAP ;
 int MGB_INTR_VEC_RX_MAP ;
 int MGB_INTR_VEC_TX_MAP ;


 int MIIF_DOPAUSE ;
 int MII_OFFSET_ANY ;
 int MII_PHY_ANY ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 struct mii_data* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int ether_gen_addr (int ,struct ether_addr*) ;
 int iflib_get_dev (int ) ;
 int iflib_get_ifp (int ) ;
 struct mgb_softc* iflib_get_softc (int ) ;
 TYPE_1__* iflib_get_softc_ctx (int ) ;
 int iflib_set_mac (int ,int ) ;
 int mgb_alloc_regs (struct mgb_softc*) ;
 int mgb_detach (int ) ;
 int mgb_get_ethaddr (struct mgb_softc*,struct ether_addr*) ;
 int mgb_hw_init (struct mgb_softc*) ;
 int mgb_media_change ;
 int mgb_media_status ;
 int mgb_test_bar (struct mgb_softc*) ;
 int mgb_txrx ;
 int mii_attach (int ,int *,int ,int ,int ,int ,int,int ,int ) ;
 int pci_get_device (int ) ;
 int pci_msix_pba_bar (int ) ;
 int pci_msix_table_bar (int ) ;

__attribute__((used)) static int
mgb_attach_pre(if_ctx_t ctx)
{
 struct mgb_softc *sc;
 if_softc_ctx_t scctx;
 int error, phyaddr, rid;
 struct ether_addr hwaddr;
 struct mii_data *miid;

 sc = iflib_get_softc(ctx);
 sc->ctx = ctx;
 sc->dev = iflib_get_dev(ctx);
 scctx = iflib_get_softc_ctx(ctx);


 scctx->isc_txrx = &mgb_txrx;
 scctx->isc_tx_nsegments = MGB_DMA_MAXSEGS;

 scctx->isc_txqsizes[0] = sizeof(struct mgb_ring_desc) *
     scctx->isc_ntxd[0];
 scctx->isc_rxqsizes[0] = sizeof(struct mgb_ring_desc) *
     scctx->isc_nrxd[0];


 scctx->isc_txqsizes[1] = sizeof(uint32_t) * scctx->isc_ntxd[1];
 scctx->isc_rxqsizes[1] = sizeof(uint32_t) * scctx->isc_nrxd[1];


 scctx->isc_nrxqsets = 1;
 scctx->isc_ntxqsets = 1;



 scctx->isc_tx_csum_flags = 0;
 scctx->isc_capabilities = scctx->isc_capenable = 0;
 error = mgb_alloc_regs(sc);
 if (error != 0) {
  device_printf(sc->dev,
      "Unable to allocate bus resource: registers.\n");
  goto fail;
 }

 error = mgb_test_bar(sc);
 if (error != 0)
  goto fail;

 error = mgb_hw_init(sc);
 if (error != 0) {
  device_printf(sc->dev,
      "MGB device init failed. (err: %d)\n", error);
  goto fail;
 }

 switch (pci_get_device(sc->dev))
 {
 case 129:
  phyaddr = 1;
  break;
 case 128:
 default:
  phyaddr = MII_PHY_ANY;
  break;
 }


 error = mii_attach(sc->dev, &sc->miibus, iflib_get_ifp(ctx),
     mgb_media_change, mgb_media_status,
     BMSR_DEFCAPMASK, phyaddr, MII_OFFSET_ANY, MIIF_DOPAUSE);
 if (error != 0) {
  device_printf(sc->dev, "Failed to attach MII interface\n");
  goto fail;
 }

 miid = device_get_softc(sc->miibus);
 scctx->isc_media = &miid->mii_media;

 scctx->isc_msix_bar = pci_msix_table_bar(sc->dev);

 rid = pci_msix_pba_bar(sc->dev);
 if (rid != scctx->isc_msix_bar) {
  sc->pba = bus_alloc_resource_any(sc->dev, SYS_RES_MEMORY,
      &rid, RF_ACTIVE);
  if (sc->pba == ((void*)0)) {
   error = ENXIO;
   device_printf(sc->dev, "Failed to setup PBA BAR\n");
   goto fail;
  }
 }

 mgb_get_ethaddr(sc, &hwaddr);
 if (ETHER_IS_BROADCAST(hwaddr.octet) ||
     ETHER_IS_MULTICAST(hwaddr.octet) ||
     ETHER_IS_ZERO(hwaddr.octet))
  ether_gen_addr(iflib_get_ifp(ctx), &hwaddr);





 iflib_set_mac(ctx, hwaddr.octet);


 CSR_WRITE_REG(sc, MGB_INTR_VEC_RX_MAP, 0);
 CSR_WRITE_REG(sc, MGB_INTR_VEC_TX_MAP, 0);
 CSR_WRITE_REG(sc, MGB_INTR_VEC_OTHER_MAP, 0);

 return (0);

fail:
 mgb_detach(ctx);
 return (error);
}
