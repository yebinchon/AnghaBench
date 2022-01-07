
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef size_t uint32_t ;
struct mbuf {int dummy; } ;
struct TYPE_9__ {size_t ifq_drv_maxlen; } ;
struct ifnet {int if_flags; int if_hdrlen; int if_linkmiblen; int * if_linkmib; TYPE_4__ if_snd; int if_init; int if_ioctl; int if_start; int if_capabilities; int if_capenable; struct ffec_softc* if_softc; } ;
struct ffec_softc {size_t fecflags; int rxbuf_align; int txbuf_align; scalar_t__ phy_conn_type; int is_attached; int miibus; void* mii_softc; int mibdata; struct ifnet* ifp; int * intr_cookie; int ** irq_res; int dev; TYPE_2__* rxbuf_map; int rxbuf_tag; int rxdesc_ring_paddr; int rxdesc_ring; int rxdesc_map; int rxdesc_tag; TYPE_1__* txbuf_map; int txbuf_tag; int txdesc_ring_paddr; int txdesc_ring; int txdesc_map; int txdesc_tag; int * mem_res; int mtx; int ffec_callout; scalar_t__ fectype; } ;
struct ether_vlan_header {int dummy; } ;
typedef int phandle_t ;
typedef int device_t ;
struct TYPE_8__ {uintptr_t ocd_data; } ;
struct TYPE_7__ {int map; } ;
struct TYPE_6__ {int map; } ;


 int BMSR_DEFCAPMASK ;
 int BUS_DMA_COHERENT ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int ENOATTR ;
 int ENOMEM ;
 int ENXIO ;
 int ETHER_ADDR_LEN ;
 int FECFLAG_AVB ;
 uintptr_t FECTYPE_MASK ;
 int FECTYPE_MVF ;
 int FEC_DESC_RING_ALIGN ;
 int FEC_ECR_REG ;
 size_t FEC_ECR_RESET ;
 size_t FEC_MSCR_DIS_PRE ;
 int FEC_MSCR_MII_SPEED_SHIFT ;
 int FEC_MSCR_REG ;
 int FFEC_LOCK_INIT (struct ffec_softc*) ;
 int IFCAP_VLAN_MTU ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFQ_SET_MAXLEN (TYPE_4__*,size_t) ;
 int IFQ_SET_READY (TYPE_4__*) ;
 int IFT_ETHER ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int MAX_IRQ_COUNT ;
 int MCLBYTES ;
 int MIIF_FORCEANEG ;
 scalar_t__ MII_CONTYPE_UNKNOWN ;
 int MII_OFFSET_ANY ;
 int MII_PHY_ANY ;
 scalar_t__ OF_hasprop (int,char*) ;
 int RF_ACTIVE ;
 size_t RX_DESC_COUNT ;
 int RX_DESC_SIZE ;
 int SYS_RES_MEMORY ;
 size_t TX_DESC_COUNT ;
 int TX_DESC_SIZE ;
 int WR4 (struct ffec_softc*,int ,size_t) ;
 scalar_t__ bootverbose ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_alloc_resources (int ,int ,int **) ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_dmamap_load (int ,int ,int ,int ,int ,int *,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_get_dma_tag (int ) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct ffec_softc*,int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int compat_data ;
 int device_get_name (int ) ;
 void* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int ether_ifattach (struct ifnet*,scalar_t__*) ;
 scalar_t__ fdt_get_phyaddr (int,int ,int*,void**) ;
 struct mbuf* ffec_alloc_mbufcl (struct ffec_softc*) ;
 int ffec_detach (int ) ;
 int ffec_get1paddr ;
 int ffec_get_hwaddr (struct ffec_softc*,scalar_t__*) ;
 int ffec_init ;
 int ffec_intr ;
 int ffec_ioctl ;
 int ffec_media_change ;
 int ffec_media_status ;
 int ffec_miigasket_setup (struct ffec_softc*) ;
 int ffec_setup_rxbuf (struct ffec_softc*,size_t,struct mbuf*) ;
 int ffec_setup_txdesc (struct ffec_softc*,size_t,int ,int ) ;
 int ffec_txstart ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,int ,int ) ;
 int irq_res_spec ;
 int mii_attach (int ,int *,struct ifnet*,int ,int ,int ,int,int ,int ) ;
 scalar_t__ mii_fdt_get_contype (int) ;
 int ofw_bus_get_node (int ) ;
 TYPE_3__* ofw_bus_search_compatible (int ,int ) ;

__attribute__((used)) static int
ffec_attach(device_t dev)
{
 struct ffec_softc *sc;
 struct ifnet *ifp = ((void*)0);
 struct mbuf *m;
 void *dummy;
 uintptr_t typeflags;
 phandle_t ofw_node;
 uint32_t idx, mscr;
 int error, phynum, rid, irq;
 uint8_t eaddr[ETHER_ADDR_LEN];

 sc = device_get_softc(dev);
 sc->dev = dev;

 FFEC_LOCK_INIT(sc);





 typeflags = ofw_bus_search_compatible(dev, compat_data)->ocd_data;
 sc->fectype = (uint8_t)(typeflags & FECTYPE_MASK);
 sc->fecflags = (uint32_t)(typeflags & ~FECTYPE_MASK);

 if (sc->fecflags & FECFLAG_AVB) {
  sc->rxbuf_align = 64;
  sc->txbuf_align = 1;
 } else {
  sc->rxbuf_align = 16;
  sc->txbuf_align = 16;
 }





 if ((ofw_node = ofw_bus_get_node(dev)) == -1) {
  device_printf(dev, "Impossible: Can't find ofw bus node\n");
  error = ENXIO;
  goto out;
 }
 sc->phy_conn_type = mii_fdt_get_contype(ofw_node);
 if (sc->phy_conn_type == MII_CONTYPE_UNKNOWN) {
  device_printf(sc->dev, "No valid 'phy-mode' "
      "property found in FDT data for device.\n");
  error = ENOATTR;
  goto out;
 }

 callout_init_mtx(&sc->ffec_callout, &sc->mtx, 0);


 rid = 0;
 sc->mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->mem_res == ((void*)0)) {
  device_printf(dev, "could not allocate memory resources.\n");
  error = ENOMEM;
  goto out;
 }

 error = bus_alloc_resources(dev, irq_res_spec, sc->irq_res);
 if (error != 0) {
  device_printf(dev, "could not allocate interrupt resources\n");
  goto out;
 }




 error = bus_dma_tag_create(
     bus_get_dma_tag(dev),
     FEC_DESC_RING_ALIGN, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     TX_DESC_SIZE, 1,
     TX_DESC_SIZE,
     0,
     ((void*)0), ((void*)0),
     &sc->txdesc_tag);
 if (error != 0) {
  device_printf(sc->dev,
      "could not create TX ring DMA tag.\n");
  goto out;
 }

 error = bus_dmamem_alloc(sc->txdesc_tag, (void**)&sc->txdesc_ring,
     BUS_DMA_COHERENT | BUS_DMA_WAITOK | BUS_DMA_ZERO, &sc->txdesc_map);
 if (error != 0) {
  device_printf(sc->dev,
      "could not allocate TX descriptor ring.\n");
  goto out;
 }

 error = bus_dmamap_load(sc->txdesc_tag, sc->txdesc_map, sc->txdesc_ring,
     TX_DESC_SIZE, ffec_get1paddr, &sc->txdesc_ring_paddr, 0);
 if (error != 0) {
  device_printf(sc->dev,
      "could not load TX descriptor ring map.\n");
  goto out;
 }

 error = bus_dma_tag_create(
     bus_get_dma_tag(dev),
     sc->txbuf_align, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MCLBYTES, 1,
     MCLBYTES,
     0,
     ((void*)0), ((void*)0),
     &sc->txbuf_tag);
 if (error != 0) {
  device_printf(sc->dev,
      "could not create TX ring DMA tag.\n");
  goto out;
 }

 for (idx = 0; idx < TX_DESC_COUNT; ++idx) {
  error = bus_dmamap_create(sc->txbuf_tag, 0,
      &sc->txbuf_map[idx].map);
  if (error != 0) {
   device_printf(sc->dev,
       "could not create TX buffer DMA map.\n");
   goto out;
  }
  ffec_setup_txdesc(sc, idx, 0, 0);
 }




 error = bus_dma_tag_create(
     bus_get_dma_tag(dev),
     FEC_DESC_RING_ALIGN, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     RX_DESC_SIZE, 1,
     RX_DESC_SIZE,
     0,
     ((void*)0), ((void*)0),
     &sc->rxdesc_tag);
 if (error != 0) {
  device_printf(sc->dev,
      "could not create RX ring DMA tag.\n");
  goto out;
 }

 error = bus_dmamem_alloc(sc->rxdesc_tag, (void **)&sc->rxdesc_ring,
     BUS_DMA_COHERENT | BUS_DMA_WAITOK | BUS_DMA_ZERO, &sc->rxdesc_map);
 if (error != 0) {
  device_printf(sc->dev,
      "could not allocate RX descriptor ring.\n");
  goto out;
 }

 error = bus_dmamap_load(sc->rxdesc_tag, sc->rxdesc_map, sc->rxdesc_ring,
     RX_DESC_SIZE, ffec_get1paddr, &sc->rxdesc_ring_paddr, 0);
 if (error != 0) {
  device_printf(sc->dev,
      "could not load RX descriptor ring map.\n");
  goto out;
 }

 error = bus_dma_tag_create(
     bus_get_dma_tag(dev),
     1, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MCLBYTES, 1,
     MCLBYTES,
     0,
     ((void*)0), ((void*)0),
     &sc->rxbuf_tag);
 if (error != 0) {
  device_printf(sc->dev,
      "could not create RX buf DMA tag.\n");
  goto out;
 }

 for (idx = 0; idx < RX_DESC_COUNT; ++idx) {
  error = bus_dmamap_create(sc->rxbuf_tag, 0,
      &sc->rxbuf_map[idx].map);
  if (error != 0) {
   device_printf(sc->dev,
       "could not create RX buffer DMA map.\n");
   goto out;
  }
  if ((m = ffec_alloc_mbufcl(sc)) == ((void*)0)) {
   device_printf(dev, "Could not alloc mbuf\n");
   error = ENOMEM;
   goto out;
  }
  if ((error = ffec_setup_rxbuf(sc, idx, m)) != 0) {
   device_printf(sc->dev,
       "could not create new RX buffer.\n");
   goto out;
  }
 }


 ffec_get_hwaddr(sc, eaddr);
 if (sc->fecflags & FECFLAG_AVB)
  WR4(sc, FEC_ECR_REG, 0);
 else
  WR4(sc, FEC_ECR_REG, FEC_ECR_RESET);


 for (irq = 0; irq < MAX_IRQ_COUNT; ++irq) {
  if (sc->irq_res[irq] != ((void*)0)) {
   error = bus_setup_intr(dev, sc->irq_res[irq],
       INTR_TYPE_NET | INTR_MPSAFE, ((void*)0), ffec_intr, sc,
       &sc->intr_cookie[irq]);
   if (error != 0) {
    device_printf(dev,
        "could not setup interrupt handler.\n");
    goto out;
   }
  }
 }
 mscr = 13 << FEC_MSCR_MII_SPEED_SHIFT;
 if (OF_hasprop(ofw_node, "phy-disable-preamble")) {
  mscr |= FEC_MSCR_DIS_PRE;
  if (bootverbose)
   device_printf(dev, "PHY preamble disabled\n");
 }
 WR4(sc, FEC_MSCR_REG, mscr);


 sc->ifp = ifp = if_alloc(IFT_ETHER);

 ifp->if_softc = sc;
 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
 ifp->if_capabilities = IFCAP_VLAN_MTU;
 ifp->if_capenable = ifp->if_capabilities;
 ifp->if_start = ffec_txstart;
 ifp->if_ioctl = ffec_ioctl;
 ifp->if_init = ffec_init;
 IFQ_SET_MAXLEN(&ifp->if_snd, TX_DESC_COUNT - 1);
 ifp->if_snd.ifq_drv_maxlen = TX_DESC_COUNT - 1;
 IFQ_SET_READY(&ifp->if_snd);
 ifp->if_hdrlen = sizeof(struct ether_vlan_header);







 ffec_miigasket_setup(sc);


 if (fdt_get_phyaddr(ofw_node, dev, &phynum, &dummy) != 0) {
  phynum = MII_PHY_ANY;
 }
 error = mii_attach(dev, &sc->miibus, ifp, ffec_media_change,
     ffec_media_status, BMSR_DEFCAPMASK, phynum, MII_OFFSET_ANY,
     (sc->fecflags & FECTYPE_MVF) ? MIIF_FORCEANEG : 0);
 if (error != 0) {
  device_printf(dev, "PHY attach failed\n");
  goto out;
 }
 sc->mii_softc = device_get_softc(sc->miibus);


 ether_ifattach(ifp, eaddr);
 sc->is_attached = 1;

 error = 0;
out:

 if (error != 0)
  ffec_detach(dev);

 return (error);
}
