
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sis_txdesc {int tx_dmamap; int * tx_m; } ;
struct sis_softc {int sis_dev; int sis_tx_tag; struct sis_txdesc* sis_txdesc; int sis_rx_tag; struct sis_rxdesc* sis_rxdesc; int sis_rx_sparemap; int sis_parent_tag; int sis_tx_paddr; int sis_tx_list_map; int sis_tx_list; int sis_tx_list_tag; int sis_rx_paddr; int sis_rx_list_map; int sis_rx_list; int sis_rx_list_tag; } ;
struct sis_rxdesc {int rx_dmamap; int * rx_m; } ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int ENOMEM ;
 int MCLBYTES ;
 int SIS_DESC_ALIGN ;
 int SIS_MAXTXSEGS ;
 int SIS_RX_BUF_ALIGN ;
 int SIS_RX_LIST_CNT ;
 int SIS_RX_LIST_SZ ;
 int SIS_TX_LIST_CNT ;
 int SIS_TX_LIST_SZ ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*) ;
 int sis_dma_ring_alloc (struct sis_softc*,int ,int ,int *,int **,int *,int *,char*) ;

__attribute__((used)) static int
sis_dma_alloc(struct sis_softc *sc)
{
 struct sis_rxdesc *rxd;
 struct sis_txdesc *txd;
 int error, i;


 error = bus_dma_tag_create(bus_get_dma_tag(sc->sis_dev),
     1, 0, BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0),
     ((void*)0), BUS_SPACE_MAXSIZE_32BIT, 0, BUS_SPACE_MAXSIZE_32BIT,
     0, ((void*)0), ((void*)0), &sc->sis_parent_tag);
 if (error != 0) {
  device_printf(sc->sis_dev,
      "could not allocate parent dma tag\n");
  return (ENOMEM);
 }


 error = sis_dma_ring_alloc(sc, SIS_DESC_ALIGN, SIS_RX_LIST_SZ,
     &sc->sis_rx_list_tag, (uint8_t **)&sc->sis_rx_list,
     &sc->sis_rx_list_map, &sc->sis_rx_paddr, "RX ring");
 if (error)
  return (error);


 error = sis_dma_ring_alloc(sc, SIS_DESC_ALIGN, SIS_TX_LIST_SZ,
     &sc->sis_tx_list_tag, (uint8_t **)&sc->sis_tx_list,
     &sc->sis_tx_list_map, &sc->sis_tx_paddr, "TX ring");
 if (error)
  return (error);


 error = bus_dma_tag_create(sc->sis_parent_tag, SIS_RX_BUF_ALIGN, 0,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0), MCLBYTES, 1,
     MCLBYTES, 0, ((void*)0), ((void*)0), &sc->sis_rx_tag);
 if (error) {
  device_printf(sc->sis_dev, "could not allocate RX dma tag\n");
  return (error);
 }


 error = bus_dma_tag_create(sc->sis_parent_tag, 1, 0,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     MCLBYTES * SIS_MAXTXSEGS, SIS_MAXTXSEGS, MCLBYTES, 0, ((void*)0), ((void*)0),
     &sc->sis_tx_tag);
 if (error) {
  device_printf(sc->sis_dev, "could not allocate TX dma tag\n");
  return (error);
 }


 error = bus_dmamap_create(sc->sis_rx_tag, 0, &sc->sis_rx_sparemap);
 if (error) {
  device_printf(sc->sis_dev,
      "can't create spare DMA map for RX\n");
  return (error);
 }
 for (i = 0; i < SIS_RX_LIST_CNT; i++) {
  rxd = &sc->sis_rxdesc[i];
  rxd->rx_m = ((void*)0);
  error = bus_dmamap_create(sc->sis_rx_tag, 0, &rxd->rx_dmamap);
  if (error) {
   device_printf(sc->sis_dev,
       "can't create DMA map for RX\n");
   return (error);
  }
 }


 for (i = 0; i < SIS_TX_LIST_CNT; i++) {
  txd = &sc->sis_txdesc[i];
  txd->tx_m = ((void*)0);
  error = bus_dmamap_create(sc->sis_tx_tag, 0, &txd->tx_dmamap);
  if (error) {
   device_printf(sc->sis_dev,
       "can't create DMA map for TX\n");
   return (error);
  }
 }

 return (0);
}
