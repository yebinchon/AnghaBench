
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct et_txstatus_data {int txsd_paddr; int txsd_dmap; int txsd_status; int txsd_dtag; } ;
struct et_txdesc_ring {int tr_paddr; int tr_dmap; int tr_desc; int tr_dtag; } ;
struct et_txbuf_data {TYPE_2__* tbd_buf; } ;
struct et_rxstatus_data {int rxsd_paddr; int rxsd_dmap; int rxsd_status; int rxsd_dtag; } ;
struct et_rxstat_ring {int rsr_paddr; int rsr_dmap; int rsr_stat; int rsr_dtag; } ;
struct et_softc {int dev; int sc_tx_tag; struct et_txbuf_data sc_tx_data; int sc_rx_sparemap; int sc_rx_tag; struct et_rxdesc_ring* sc_rx_ring; struct et_rxbuf_data* sc_rx_data; int sc_rx_mini_sparemap; int sc_rx_mini_tag; int sc_mbuf_dtag; struct et_rxstatus_data sc_rx_status; struct et_rxstat_ring sc_rxstat_ring; struct et_txstatus_data sc_tx_status; struct et_txdesc_ring sc_tx_ring; int sc_dtag; } ;
struct et_rxstatus {int dummy; } ;
struct et_rxdesc_ring {int rr_posreg; int rr_paddr; int rr_dmap; int rr_desc; int rr_dtag; } ;
struct et_rxbuf_data {TYPE_1__* rbd_buf; struct et_rxdesc_ring* rbd_ring; struct et_softc* rbd_softc; void* rbd_discard; int rbd_newbuf; int rbd_bufsize; } ;
struct TYPE_4__ {int tb_dmap; } ;
struct TYPE_3__ {int rb_dmap; } ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int ET_NSEG_MAX ;
 int ET_RING_ALIGN ;
 int ET_RXDMA_CTRL_RING0_128 ;
 int ET_RXDMA_CTRL_RING1_2048 ;
 int ET_RXSTAT_RING_SIZE ;
 int ET_RX_NDESC ;
 int ET_RX_RING0_POS ;
 int ET_RX_RING1_POS ;
 int ET_RX_RING_SIZE ;
 int ET_STATUS_ALIGN ;
 int ET_TX_NDESC ;
 int ET_TX_RING_SIZE ;
 int MCLBYTES ;
 int MHLEN ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*) ;
 int et_dma_ring_alloc (struct et_softc*,int ,int,int *,int **,int *,int *,char*) ;
 int et_newbuf_cluster ;
 int et_newbuf_hdr ;
 void* et_rxbuf_discard ;

__attribute__((used)) static int
et_dma_alloc(struct et_softc *sc)
{
 struct et_txdesc_ring *tx_ring;
 struct et_rxdesc_ring *rx_ring;
 struct et_rxstat_ring *rxst_ring;
 struct et_rxstatus_data *rxsd;
 struct et_rxbuf_data *rbd;
        struct et_txbuf_data *tbd;
 struct et_txstatus_data *txsd;
 int i, error;

 error = bus_dma_tag_create(bus_get_dma_tag(sc->dev), 1, 0,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     BUS_SPACE_MAXSIZE_32BIT, 0, BUS_SPACE_MAXSIZE_32BIT, 0, ((void*)0), ((void*)0),
     &sc->sc_dtag);
 if (error != 0) {
  device_printf(sc->dev, "could not allocate parent dma tag\n");
  return (error);
 }


 tx_ring = &sc->sc_tx_ring;
 error = et_dma_ring_alloc(sc, ET_RING_ALIGN, ET_TX_RING_SIZE,
     &tx_ring->tr_dtag, (uint8_t **)&tx_ring->tr_desc, &tx_ring->tr_dmap,
     &tx_ring->tr_paddr, "TX ring");
 if (error)
  return (error);


 txsd = &sc->sc_tx_status;
 error = et_dma_ring_alloc(sc, ET_STATUS_ALIGN, sizeof(uint32_t),
     &txsd->txsd_dtag, (uint8_t **)&txsd->txsd_status, &txsd->txsd_dmap,
     &txsd->txsd_paddr, "TX status block");
 if (error)
  return (error);


 rx_ring = &sc->sc_rx_ring[0];
 error = et_dma_ring_alloc(sc, ET_RING_ALIGN, ET_RX_RING_SIZE,
     &rx_ring->rr_dtag, (uint8_t **)&rx_ring->rr_desc, &rx_ring->rr_dmap,
     &rx_ring->rr_paddr, "RX ring 0");
 rx_ring->rr_posreg = ET_RX_RING0_POS;
 if (error)
  return (error);


 rx_ring = &sc->sc_rx_ring[1];
 error = et_dma_ring_alloc(sc, ET_RING_ALIGN, ET_RX_RING_SIZE,
     &rx_ring->rr_dtag, (uint8_t **)&rx_ring->rr_desc, &rx_ring->rr_dmap,
     &rx_ring->rr_paddr, "RX ring 1");
 rx_ring->rr_posreg = ET_RX_RING1_POS;
 if (error)
  return (error);


 rxst_ring = &sc->sc_rxstat_ring;
 error = et_dma_ring_alloc(sc, ET_RING_ALIGN, ET_RXSTAT_RING_SIZE,
     &rxst_ring->rsr_dtag, (uint8_t **)&rxst_ring->rsr_stat,
     &rxst_ring->rsr_dmap, &rxst_ring->rsr_paddr, "RX stat ring");
 if (error)
  return (error);


 rxsd = &sc->sc_rx_status;
 error = et_dma_ring_alloc(sc, ET_STATUS_ALIGN,
     sizeof(struct et_rxstatus), &rxsd->rxsd_dtag,
     (uint8_t **)&rxsd->rxsd_status, &rxsd->rxsd_dmap,
     &rxsd->rxsd_paddr, "RX status block");
 if (error)
  return (error);


 error = bus_dma_tag_create(bus_get_dma_tag(sc->dev), 1, 0,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     BUS_SPACE_MAXSIZE_32BIT, 0, BUS_SPACE_MAXSIZE_32BIT, 0, ((void*)0), ((void*)0),
     &sc->sc_mbuf_dtag);
 if (error != 0) {
  device_printf(sc->dev,
      "could not allocate parent dma tag for mbuf\n");
  return (error);
 }


 error = bus_dma_tag_create(sc->sc_mbuf_dtag, 1, 0,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0), MHLEN, 1,
     MHLEN, 0, ((void*)0), ((void*)0), &sc->sc_rx_mini_tag);
 if (error) {
  device_printf(sc->dev, "could not create mini RX dma tag\n");
  return (error);
 }


 error = bus_dma_tag_create(sc->sc_mbuf_dtag, 1, 0,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0), MCLBYTES, 1,
     MCLBYTES, 0, ((void*)0), ((void*)0), &sc->sc_rx_tag);
 if (error) {
  device_printf(sc->dev, "could not create RX dma tag\n");
  return (error);
 }


 error = bus_dma_tag_create(sc->sc_mbuf_dtag, 1, 0,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     MCLBYTES * ET_NSEG_MAX, ET_NSEG_MAX, MCLBYTES, 0, ((void*)0), ((void*)0),
     &sc->sc_tx_tag);
 if (error) {
  device_printf(sc->dev, "could not create TX dma tag\n");
  return (error);
 }


 rbd = &sc->sc_rx_data[0];
 rbd->rbd_bufsize = ET_RXDMA_CTRL_RING0_128;
 rbd->rbd_newbuf = et_newbuf_hdr;
 rbd->rbd_discard = et_rxbuf_discard;
 rbd->rbd_softc = sc;
 rbd->rbd_ring = &sc->sc_rx_ring[0];

 for (i = 0; i < ET_RX_NDESC; i++) {
  error = bus_dmamap_create(sc->sc_rx_mini_tag, 0,
      &rbd->rbd_buf[i].rb_dmap);
  if (error) {
   device_printf(sc->dev,
       "could not create DMA map for mini RX mbufs\n");
   return (error);
  }
 }


 error = bus_dmamap_create(sc->sc_rx_mini_tag, 0,
     &sc->sc_rx_mini_sparemap);
 if (error) {
  device_printf(sc->dev,
      "could not create spare DMA map for mini RX mbuf\n");
  return (error);
 }


 rbd = &sc->sc_rx_data[1];
 rbd->rbd_bufsize = ET_RXDMA_CTRL_RING1_2048;
 rbd->rbd_newbuf = et_newbuf_cluster;
 rbd->rbd_discard = et_rxbuf_discard;
 rbd->rbd_softc = sc;
 rbd->rbd_ring = &sc->sc_rx_ring[1];

 for (i = 0; i < ET_RX_NDESC; i++) {
  error = bus_dmamap_create(sc->sc_rx_tag, 0,
      &rbd->rbd_buf[i].rb_dmap);
  if (error) {
   device_printf(sc->dev,
       "could not create DMA map for mini RX mbufs\n");
   return (error);
  }
 }


 error = bus_dmamap_create(sc->sc_rx_tag, 0, &sc->sc_rx_sparemap);
 if (error) {
  device_printf(sc->dev,
      "could not create spare DMA map for RX mbuf\n");
  return (error);
 }


 tbd = &sc->sc_tx_data;
 for (i = 0; i < ET_TX_NDESC; i++) {
  error = bus_dmamap_create(sc->sc_tx_tag, 0,
      &tbd->tbd_buf[i].tb_dmap);
  if (error) {
   device_printf(sc->dev,
       "could not create DMA map for TX mbufs\n");
   return (error);
  }
 }

 return (0);
}
