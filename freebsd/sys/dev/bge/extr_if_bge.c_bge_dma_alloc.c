
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct ether_vlan_header {int dummy; } ;
struct TYPE_4__ {int * bge_rx_jumbo_dmamap; int bge_mtag_jumbo; int bge_rx_jumbo_sparemap; int bge_buffer_tag; int * bge_tx_dmamap; int bge_tx_mtag; int * bge_rx_std_dmamap; int bge_rx_mtag; int bge_rx_std_sparemap; int bge_rx_jumbo_ring_map; int bge_rx_jumbo_ring_tag; int bge_stats_map; int bge_stats_tag; int bge_status_map; int bge_status_tag; int bge_tx_ring_map; int bge_tx_ring_tag; int bge_rx_return_ring_map; int bge_rx_return_ring_tag; int bge_rx_std_ring_map; int bge_rx_std_ring_tag; int bge_parent_tag; } ;
struct TYPE_3__ {int bge_rx_jumbo_ring_paddr; int bge_rx_jumbo_ring; int bge_stats_paddr; int bge_stats; int bge_status_block_paddr; int bge_status_block; int bge_tx_ring_paddr; int bge_tx_ring; int bge_rx_return_ring_paddr; int bge_rx_return_ring; int bge_rx_std_ring_paddr; int bge_rx_std_ring; } ;
struct bge_softc {int bge_flags; scalar_t__ bge_asicrev; scalar_t__ bge_chipid; scalar_t__ bge_pcixcap; int bge_dev; TYPE_2__ bge_cdata; TYPE_1__ bge_ldata; } ;
typedef int bus_size_t ;
typedef int bus_addr_t ;


 scalar_t__ BGE_ASICREV_BCM5700 ;
 scalar_t__ BGE_CHIPID_BCM5700_C0 ;
 int BGE_DMA_BNDRY ;
 int BGE_DMA_MAXADDR ;
 int BGE_FLAG_40BIT_BUG ;
 int BGE_FLAG_4G_BNDRY_BUG ;
 int BGE_FLAG_JUMBO_STD ;
 int BGE_FLAG_TSO ;
 int BGE_FLAG_TSO3 ;
 scalar_t__ BGE_IS_JUMBO_CAPABLE (struct bge_softc*) ;
 int BGE_JUMBO_RX_RING_CNT ;
 int BGE_JUMBO_RX_RING_SZ ;
 int BGE_NSEG_JUMBO ;
 int BGE_NSEG_NEW ;
 int BGE_RX_RTN_RING_SZ (struct bge_softc*) ;
 int BGE_STATS_SZ ;
 int BGE_STATUS_BLK_SZ ;
 int BGE_STD_RX_RING_CNT ;
 int BGE_STD_RX_RING_SZ ;
 int BGE_TSOSEG_SZ ;
 int BGE_TX_RING_CNT ;
 int BGE_TX_RING_SZ ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int ENOMEM ;
 int MCLBYTES ;
 int MJUM9BYTES ;
 int PAGE_SIZE ;
 int bge_dma_ring_alloc (struct bge_softc*,int,int,int *,int **,int *,int *,char*) ;
 int bus_dma_tag_create (int ,int,int,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
bge_dma_alloc(struct bge_softc *sc)
{
 bus_addr_t lowaddr;
 bus_size_t boundary, sbsz, rxmaxsegsz, txsegsz, txmaxsegsz;
 int i, error;

 lowaddr = BUS_SPACE_MAXADDR;
 if ((sc->bge_flags & BGE_FLAG_40BIT_BUG) != 0)
  lowaddr = BGE_DMA_MAXADDR;



 error = bus_dma_tag_create(bus_get_dma_tag(sc->bge_dev),
     1, 0, lowaddr, BUS_SPACE_MAXADDR, ((void*)0),
     ((void*)0), BUS_SPACE_MAXSIZE_32BIT, 0, BUS_SPACE_MAXSIZE_32BIT,
     0, ((void*)0), ((void*)0), &sc->bge_cdata.bge_parent_tag);
 if (error != 0) {
  device_printf(sc->bge_dev,
      "could not allocate parent dma tag\n");
  return (ENOMEM);
 }


 error = bge_dma_ring_alloc(sc, PAGE_SIZE, BGE_STD_RX_RING_SZ,
     &sc->bge_cdata.bge_rx_std_ring_tag,
     (uint8_t **)&sc->bge_ldata.bge_rx_std_ring,
     &sc->bge_cdata.bge_rx_std_ring_map,
     &sc->bge_ldata.bge_rx_std_ring_paddr, "RX ring");
 if (error)
  return (error);


 error = bge_dma_ring_alloc(sc, PAGE_SIZE, BGE_RX_RTN_RING_SZ(sc),
     &sc->bge_cdata.bge_rx_return_ring_tag,
     (uint8_t **)&sc->bge_ldata.bge_rx_return_ring,
     &sc->bge_cdata.bge_rx_return_ring_map,
     &sc->bge_ldata.bge_rx_return_ring_paddr, "RX return ring");
 if (error)
  return (error);


 error = bge_dma_ring_alloc(sc, PAGE_SIZE, BGE_TX_RING_SZ,
     &sc->bge_cdata.bge_tx_ring_tag,
     (uint8_t **)&sc->bge_ldata.bge_tx_ring,
     &sc->bge_cdata.bge_tx_ring_map,
     &sc->bge_ldata.bge_tx_ring_paddr, "TX ring");
 if (error)
  return (error);
 if (sc->bge_asicrev == BGE_ASICREV_BCM5700 &&
     sc->bge_chipid != BGE_CHIPID_BCM5700_C0)
  sbsz = BGE_STATUS_BLK_SZ;
 else
  sbsz = 32;
 error = bge_dma_ring_alloc(sc, PAGE_SIZE, sbsz,
     &sc->bge_cdata.bge_status_tag,
     (uint8_t **)&sc->bge_ldata.bge_status_block,
     &sc->bge_cdata.bge_status_map,
     &sc->bge_ldata.bge_status_block_paddr, "status block");
 if (error)
  return (error);


 error = bge_dma_ring_alloc(sc, PAGE_SIZE, BGE_STATS_SZ,
     &sc->bge_cdata.bge_stats_tag,
     (uint8_t **)&sc->bge_ldata.bge_stats,
     &sc->bge_cdata.bge_stats_map,
     &sc->bge_ldata.bge_stats_paddr, "statistics block");
 if (error)
  return (error);


 if (BGE_IS_JUMBO_CAPABLE(sc)) {
  error = bge_dma_ring_alloc(sc, PAGE_SIZE, BGE_JUMBO_RX_RING_SZ,
      &sc->bge_cdata.bge_rx_jumbo_ring_tag,
      (uint8_t **)&sc->bge_ldata.bge_rx_jumbo_ring,
      &sc->bge_cdata.bge_rx_jumbo_ring_map,
      &sc->bge_ldata.bge_rx_jumbo_ring_paddr, "jumbo RX ring");
  if (error)
   return (error);
 }


 boundary = 0;
 if ((sc->bge_flags & BGE_FLAG_4G_BNDRY_BUG) != 0) {
  boundary = BGE_DMA_BNDRY;







  if (sc->bge_pcixcap != 0)
   lowaddr = BUS_SPACE_MAXADDR_32BIT;
 }
 error = bus_dma_tag_create(bus_get_dma_tag(sc->bge_dev),
     1, boundary, lowaddr, BUS_SPACE_MAXADDR, ((void*)0),
     ((void*)0), BUS_SPACE_MAXSIZE_32BIT, 0, BUS_SPACE_MAXSIZE_32BIT,
     0, ((void*)0), ((void*)0), &sc->bge_cdata.bge_buffer_tag);
 if (error != 0) {
  device_printf(sc->bge_dev,
      "could not allocate buffer dma tag\n");
  return (ENOMEM);
 }

 if (sc->bge_flags & (BGE_FLAG_TSO | BGE_FLAG_TSO3)) {
  txsegsz = BGE_TSOSEG_SZ;
  txmaxsegsz = 65535 + sizeof(struct ether_vlan_header);
 } else {
  txsegsz = MCLBYTES;
  txmaxsegsz = MCLBYTES * BGE_NSEG_NEW;
 }
 error = bus_dma_tag_create(sc->bge_cdata.bge_buffer_tag, 1,
     0, BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     txmaxsegsz, BGE_NSEG_NEW, txsegsz, 0, ((void*)0), ((void*)0),
     &sc->bge_cdata.bge_tx_mtag);

 if (error) {
  device_printf(sc->bge_dev, "could not allocate TX dma tag\n");
  return (ENOMEM);
 }


 if (sc->bge_flags & BGE_FLAG_JUMBO_STD)
  rxmaxsegsz = MJUM9BYTES;
 else
  rxmaxsegsz = MCLBYTES;
 error = bus_dma_tag_create(sc->bge_cdata.bge_buffer_tag, 1, 0,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0), rxmaxsegsz, 1,
     rxmaxsegsz, 0, ((void*)0), ((void*)0), &sc->bge_cdata.bge_rx_mtag);

 if (error) {
  device_printf(sc->bge_dev, "could not allocate RX dma tag\n");
  return (ENOMEM);
 }


 error = bus_dmamap_create(sc->bge_cdata.bge_rx_mtag, 0,
     &sc->bge_cdata.bge_rx_std_sparemap);
 if (error) {
  device_printf(sc->bge_dev,
      "can't create spare DMA map for RX\n");
  return (ENOMEM);
 }
 for (i = 0; i < BGE_STD_RX_RING_CNT; i++) {
  error = bus_dmamap_create(sc->bge_cdata.bge_rx_mtag, 0,
       &sc->bge_cdata.bge_rx_std_dmamap[i]);
  if (error) {
   device_printf(sc->bge_dev,
       "can't create DMA map for RX\n");
   return (ENOMEM);
  }
 }


 for (i = 0; i < BGE_TX_RING_CNT; i++) {
  error = bus_dmamap_create(sc->bge_cdata.bge_tx_mtag, 0,
       &sc->bge_cdata.bge_tx_dmamap[i]);
  if (error) {
   device_printf(sc->bge_dev,
       "can't create DMA map for TX\n");
   return (ENOMEM);
  }
 }


 if (BGE_IS_JUMBO_CAPABLE(sc)) {
  error = bus_dma_tag_create(sc->bge_cdata.bge_buffer_tag,
      1, 0, BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0),
      ((void*)0), MJUM9BYTES, BGE_NSEG_JUMBO, PAGE_SIZE,
      0, ((void*)0), ((void*)0), &sc->bge_cdata.bge_mtag_jumbo);
  if (error) {
   device_printf(sc->bge_dev,
       "could not allocate jumbo dma tag\n");
   return (ENOMEM);
  }

  error = bus_dmamap_create(sc->bge_cdata.bge_mtag_jumbo,
      0, &sc->bge_cdata.bge_rx_jumbo_sparemap);
  if (error) {
   device_printf(sc->bge_dev,
       "can't create spare DMA map for jumbo RX\n");
   return (ENOMEM);
  }
  for (i = 0; i < BGE_JUMBO_RX_RING_CNT; i++) {
   error = bus_dmamap_create(sc->bge_cdata.bge_mtag_jumbo,
        0, &sc->bge_cdata.bge_rx_jumbo_dmamap[i]);
   if (error) {
    device_printf(sc->bge_dev,
        "can't create DMA map for jumbo RX\n");
    return (ENOMEM);
   }
  }
 }

 return (0);
}
