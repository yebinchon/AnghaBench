
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct ti_status {int dummy; } ;
struct TYPE_5__ {int ti_rx_mini_sparemap; int ti_rx_mini_tag; int * ti_rx_mini_maps; int ti_parent_tag; int ti_rx_mini_ring_map; int ti_rx_mini_ring_tag; int ti_tx_ring_map; int ti_tx_ring_tag; TYPE_1__* ti_txdesc; int ti_tx_tag; int ti_rx_jumbo_sparemap; int ti_rx_jumbo_tag; int * ti_rx_jumbo_maps; int ti_rx_std_sparemap; int ti_rx_std_tag; int * ti_rx_std_maps; int ti_rx_return_ring_map; int ti_rx_return_ring_tag; int ti_rx_jumbo_ring_map; int ti_rx_jumbo_ring_tag; int ti_rx_std_ring_map; int ti_rx_std_ring_tag; int ti_event_ring_map; int ti_event_ring_tag; int ti_status_map; int ti_status_tag; int ti_gib_map; int ti_gib_tag; } ;
struct TYPE_6__ {int ti_rx_mini_ring_paddr; int ti_rx_mini_ring; int ti_tx_ring_paddr; int ti_tx_ring; int ti_rx_return_ring_paddr; int ti_rx_return_ring; int ti_rx_jumbo_ring_paddr; int ti_rx_jumbo_ring; int ti_rx_std_ring_paddr; int ti_rx_std_ring; int ti_event_ring_paddr; int ti_event_ring; int ti_status_paddr; int ti_status; int ti_info_paddr; int ti_info; } ;
struct ti_softc {scalar_t__ ti_dac; scalar_t__ ti_hwrev; int ti_dev; TYPE_2__ ti_cdata; TYPE_3__ ti_rdata; } ;
struct ti_gib {int dummy; } ;
typedef int bus_addr_t ;
struct TYPE_4__ {int tx_dmamap; } ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int ENOMEM ;
 int MCLBYTES ;
 int MHLEN ;
 int MJUM9BYTES ;
 int PAGE_SIZE ;
 int TI_EVENT_RING_SZ ;
 scalar_t__ TI_HWREV_TIGON ;
 int TI_JUMBO_RING_ALIGN ;
 int TI_JUMBO_RX_RING_CNT ;
 int TI_JUMBO_RX_RING_SZ ;
 int TI_MAXTXSEGS ;
 int TI_MINI_RX_RING_CNT ;
 int TI_MINI_RX_RING_SZ ;
 int TI_RING_ALIGN ;
 int TI_RX_RETURN_RING_SZ ;
 int TI_STD_RX_RING_CNT ;
 int TI_STD_RX_RING_SZ ;
 int TI_TX_RING_CNT ;
 int TI_TX_RING_SZ ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*) ;
 int ti_dma_ring_alloc (struct ti_softc*,int ,int,int *,int **,int *,int *,char*) ;

__attribute__((used)) static int
ti_dma_alloc(struct ti_softc *sc)
{
 bus_addr_t lowaddr;
 int i, error;

 lowaddr = BUS_SPACE_MAXADDR;
 if (sc->ti_dac == 0)
  lowaddr = BUS_SPACE_MAXADDR_32BIT;

 error = bus_dma_tag_create(bus_get_dma_tag(sc->ti_dev), 1, 0, lowaddr,
     BUS_SPACE_MAXADDR, ((void*)0), ((void*)0), BUS_SPACE_MAXSIZE_32BIT, 0,
     BUS_SPACE_MAXSIZE_32BIT, 0, ((void*)0), ((void*)0),
     &sc->ti_cdata.ti_parent_tag);
 if (error != 0) {
  device_printf(sc->ti_dev,
      "could not allocate parent dma tag\n");
  return (ENOMEM);
 }

 error = ti_dma_ring_alloc(sc, TI_RING_ALIGN, sizeof(struct ti_gib),
     &sc->ti_cdata.ti_gib_tag, (uint8_t **)&sc->ti_rdata.ti_info,
     &sc->ti_cdata.ti_gib_map, &sc->ti_rdata.ti_info_paddr, "GIB");
 if (error)
  return (error);


 error = ti_dma_ring_alloc(sc, TI_RING_ALIGN, sizeof(struct ti_status),
     &sc->ti_cdata.ti_status_tag, (uint8_t **)&sc->ti_rdata.ti_status,
     &sc->ti_cdata.ti_status_map, &sc->ti_rdata.ti_status_paddr,
     "event ring");
 if (error)
  return (error);


 error = ti_dma_ring_alloc(sc, TI_RING_ALIGN, TI_EVENT_RING_SZ,
     &sc->ti_cdata.ti_event_ring_tag,
     (uint8_t **)&sc->ti_rdata.ti_event_ring,
     &sc->ti_cdata.ti_event_ring_map, &sc->ti_rdata.ti_event_ring_paddr,
     "event ring");
 if (error)
  return (error);




 error = ti_dma_ring_alloc(sc, TI_RING_ALIGN, TI_STD_RX_RING_SZ,
     &sc->ti_cdata.ti_rx_std_ring_tag,
     (uint8_t **)&sc->ti_rdata.ti_rx_std_ring,
     &sc->ti_cdata.ti_rx_std_ring_map,
     &sc->ti_rdata.ti_rx_std_ring_paddr, "RX ring");
 if (error)
  return (error);


 error = ti_dma_ring_alloc(sc, TI_JUMBO_RING_ALIGN, TI_JUMBO_RX_RING_SZ,
     &sc->ti_cdata.ti_rx_jumbo_ring_tag,
     (uint8_t **)&sc->ti_rdata.ti_rx_jumbo_ring,
     &sc->ti_cdata.ti_rx_jumbo_ring_map,
     &sc->ti_rdata.ti_rx_jumbo_ring_paddr, "jumbo RX ring");
 if (error)
  return (error);


 error = ti_dma_ring_alloc(sc, TI_RING_ALIGN, TI_RX_RETURN_RING_SZ,
     &sc->ti_cdata.ti_rx_return_ring_tag,
     (uint8_t **)&sc->ti_rdata.ti_rx_return_ring,
     &sc->ti_cdata.ti_rx_return_ring_map,
     &sc->ti_rdata.ti_rx_return_ring_paddr, "RX return ring");
 if (error)
  return (error);


 error = bus_dma_tag_create(sc->ti_cdata.ti_parent_tag, 1, 0,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0), MCLBYTES, 1,
     MCLBYTES, 0, ((void*)0), ((void*)0), &sc->ti_cdata.ti_rx_std_tag);
 if (error) {
  device_printf(sc->ti_dev, "could not allocate RX dma tag\n");
  return (error);
 }
 error = bus_dma_tag_create(sc->ti_cdata.ti_parent_tag, 1, 0,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0), MJUM9BYTES, 1,
     MJUM9BYTES, 0, ((void*)0), ((void*)0), &sc->ti_cdata.ti_rx_jumbo_tag);

 if (error) {
  device_printf(sc->ti_dev,
      "could not allocate jumbo RX dma tag\n");
  return (error);
 }


 error = bus_dma_tag_create(sc->ti_cdata.ti_parent_tag, 1,
     0, BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     MCLBYTES * TI_MAXTXSEGS, TI_MAXTXSEGS, MCLBYTES, 0, ((void*)0), ((void*)0),
     &sc->ti_cdata.ti_tx_tag);
 if (error) {
  device_printf(sc->ti_dev, "could not allocate TX dma tag\n");
  return (ENOMEM);
 }


 for (i = 0; i < TI_STD_RX_RING_CNT; i++) {
  error = bus_dmamap_create(sc->ti_cdata.ti_rx_std_tag, 0,
      &sc->ti_cdata.ti_rx_std_maps[i]);
  if (error) {
   device_printf(sc->ti_dev,
       "could not create DMA map for RX\n");
   return (error);
  }
 }
 error = bus_dmamap_create(sc->ti_cdata.ti_rx_std_tag, 0,
     &sc->ti_cdata.ti_rx_std_sparemap);
 if (error) {
  device_printf(sc->ti_dev,
      "could not create spare DMA map for RX\n");
  return (error);
 }


 for (i = 0; i < TI_JUMBO_RX_RING_CNT; i++) {
  error = bus_dmamap_create(sc->ti_cdata.ti_rx_jumbo_tag, 0,
      &sc->ti_cdata.ti_rx_jumbo_maps[i]);
  if (error) {
   device_printf(sc->ti_dev,
       "could not create DMA map for jumbo RX\n");
   return (error);
  }
 }
 error = bus_dmamap_create(sc->ti_cdata.ti_rx_jumbo_tag, 0,
     &sc->ti_cdata.ti_rx_jumbo_sparemap);
 if (error) {
  device_printf(sc->ti_dev,
      "could not create spare DMA map for jumbo RX\n");
  return (error);
 }


 for (i = 0; i < TI_TX_RING_CNT; i++) {
  error = bus_dmamap_create(sc->ti_cdata.ti_tx_tag, 0,
      &sc->ti_cdata.ti_txdesc[i].tx_dmamap);
  if (error) {
   device_printf(sc->ti_dev,
       "could not create DMA map for TX\n");
   return (ENOMEM);
  }
 }


 if (sc->ti_hwrev == TI_HWREV_TIGON)
  return (0);


 error = ti_dma_ring_alloc(sc, TI_RING_ALIGN, TI_TX_RING_SZ,
     &sc->ti_cdata.ti_tx_ring_tag, (uint8_t **)&sc->ti_rdata.ti_tx_ring,
     &sc->ti_cdata.ti_tx_ring_map, &sc->ti_rdata.ti_tx_ring_paddr,
     "TX ring");
 if (error)
  return (error);


 error = ti_dma_ring_alloc(sc, TI_RING_ALIGN, TI_MINI_RX_RING_SZ,
     &sc->ti_cdata.ti_rx_mini_ring_tag,
     (uint8_t **)&sc->ti_rdata.ti_rx_mini_ring,
     &sc->ti_cdata.ti_rx_mini_ring_map,
     &sc->ti_rdata.ti_rx_mini_ring_paddr, "mini RX ring");
 if (error)
  return (error);


 error = bus_dma_tag_create(sc->ti_cdata.ti_parent_tag, 1, 0,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0), MHLEN, 1,
     MHLEN, 0, ((void*)0), ((void*)0), &sc->ti_cdata.ti_rx_mini_tag);
 if (error) {
  device_printf(sc->ti_dev,
      "could not allocate mini RX dma tag\n");
  return (error);
 }


 for (i = 0; i < TI_MINI_RX_RING_CNT; i++) {
  error = bus_dmamap_create(sc->ti_cdata.ti_rx_mini_tag, 0,
      &sc->ti_cdata.ti_rx_mini_maps[i]);
  if (error) {
   device_printf(sc->ti_dev,
       "could not create DMA map for mini RX\n");
   return (error);
  }
 }
 error = bus_dmamap_create(sc->ti_cdata.ti_rx_mini_tag, 0,
     &sc->ti_cdata.ti_rx_mini_sparemap);
 if (error) {
  device_printf(sc->ti_dev,
      "could not create spare DMA map for mini RX\n");
  return (error);
 }

 return (0);
}
