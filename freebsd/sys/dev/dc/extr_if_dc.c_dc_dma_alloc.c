
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * dc_rx_map; int * dc_tx_map; int dc_sbuf; } ;
struct TYPE_3__ {int dc_tx_list_paddr; int dc_tx_list; int dc_rx_list_paddr; int dc_rx_list; } ;
struct dc_softc {int dc_dev; int dc_sparemap; int dc_rx_mtag; TYPE_2__ dc_cdata; int dc_tx_mtag; int dc_ptag; int dc_saddr; int dc_smap; int dc_stag; TYPE_1__ dc_ldata; int dc_tx_lmap; int dc_tx_ltag; int dc_rx_lmap; int dc_rx_ltag; } ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_NOWAIT ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int DC_LIST_ALIGN ;
 int DC_MAXFRAGS ;
 int DC_MIN_FRAMELEN ;
 int DC_RXBUF_ALIGN ;
 int DC_RX_LIST_CNT ;
 int DC_RX_LIST_SZ ;
 int DC_SFRAME_LEN ;
 int DC_TX_LIST_CNT ;
 int DC_TX_LIST_SZ ;
 int MCLBYTES ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_dmamap_load (int ,int ,int ,int,int ,int *,int) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_get_dma_tag (int ) ;
 int dc_dma_map_addr ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
dc_dma_alloc(struct dc_softc *sc)
{
 int error, i;

 error = bus_dma_tag_create(bus_get_dma_tag(sc->dc_dev), 1, 0,
     BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     BUS_SPACE_MAXSIZE_32BIT, 0, BUS_SPACE_MAXSIZE_32BIT, 0,
     ((void*)0), ((void*)0), &sc->dc_ptag);
 if (error) {
  device_printf(sc->dc_dev,
      "failed to allocate parent DMA tag\n");
  goto fail;
 }


 error = bus_dma_tag_create(sc->dc_ptag, DC_LIST_ALIGN, 0,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0), DC_RX_LIST_SZ, 1,
     DC_RX_LIST_SZ, 0, ((void*)0), ((void*)0), &sc->dc_rx_ltag);
 if (error) {
  device_printf(sc->dc_dev, "failed to create RX list DMA tag\n");
  goto fail;
 }

 error = bus_dma_tag_create(sc->dc_ptag, DC_LIST_ALIGN, 0,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0), DC_TX_LIST_SZ, 1,
     DC_TX_LIST_SZ, 0, ((void*)0), ((void*)0), &sc->dc_tx_ltag);
 if (error) {
  device_printf(sc->dc_dev, "failed to create TX list DMA tag\n");
  goto fail;
 }


 error = bus_dmamem_alloc(sc->dc_rx_ltag,
     (void **)&sc->dc_ldata.dc_rx_list, BUS_DMA_NOWAIT |
     BUS_DMA_ZERO | BUS_DMA_COHERENT, &sc->dc_rx_lmap);
 if (error) {
  device_printf(sc->dc_dev,
      "failed to allocate DMA'able memory for RX list\n");
  goto fail;
 }
 error = bus_dmamap_load(sc->dc_rx_ltag, sc->dc_rx_lmap,
     sc->dc_ldata.dc_rx_list, DC_RX_LIST_SZ, dc_dma_map_addr,
     &sc->dc_ldata.dc_rx_list_paddr, BUS_DMA_NOWAIT);
 if (error) {
  device_printf(sc->dc_dev,
      "failed to load DMA'able memory for RX list\n");
  goto fail;
 }

 error = bus_dmamem_alloc(sc->dc_tx_ltag,
     (void **)&sc->dc_ldata.dc_tx_list, BUS_DMA_NOWAIT |
     BUS_DMA_ZERO | BUS_DMA_COHERENT, &sc->dc_tx_lmap);
 if (error) {
  device_printf(sc->dc_dev,
      "failed to allocate DMA'able memory for TX list\n");
  goto fail;
 }
 error = bus_dmamap_load(sc->dc_tx_ltag, sc->dc_tx_lmap,
     sc->dc_ldata.dc_tx_list, DC_TX_LIST_SZ, dc_dma_map_addr,
     &sc->dc_ldata.dc_tx_list_paddr, BUS_DMA_NOWAIT);
 if (error) {
  device_printf(sc->dc_dev,
      "cannot load DMA'able memory for TX list\n");
  goto fail;
 }





 error = bus_dma_tag_create(sc->dc_ptag, DC_LIST_ALIGN, 0,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     DC_SFRAME_LEN + DC_MIN_FRAMELEN, 1, DC_SFRAME_LEN + DC_MIN_FRAMELEN,
     0, ((void*)0), ((void*)0), &sc->dc_stag);
 if (error) {
  device_printf(sc->dc_dev,
      "failed to create DMA tag for setup frame\n");
  goto fail;
 }
 error = bus_dmamem_alloc(sc->dc_stag, (void **)&sc->dc_cdata.dc_sbuf,
     BUS_DMA_NOWAIT, &sc->dc_smap);
 if (error) {
  device_printf(sc->dc_dev,
      "failed to allocate DMA'able memory for setup frame\n");
  goto fail;
 }
 error = bus_dmamap_load(sc->dc_stag, sc->dc_smap, sc->dc_cdata.dc_sbuf,
     DC_SFRAME_LEN, dc_dma_map_addr, &sc->dc_saddr, BUS_DMA_NOWAIT);
 if (error) {
  device_printf(sc->dc_dev,
      "cannot load DMA'able memory for setup frame\n");
  goto fail;
 }


 error = bus_dma_tag_create(sc->dc_ptag, DC_RXBUF_ALIGN, 0,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     MCLBYTES, 1, MCLBYTES, 0, ((void*)0), ((void*)0), &sc->dc_rx_mtag);
 if (error) {
  device_printf(sc->dc_dev, "failed to create RX mbuf tag\n");
  goto fail;
 }


 error = bus_dma_tag_create(sc->dc_ptag, 1, 0,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     MCLBYTES * DC_MAXFRAGS, DC_MAXFRAGS, MCLBYTES,
     0, ((void*)0), ((void*)0), &sc->dc_tx_mtag);
 if (error) {
  device_printf(sc->dc_dev, "failed to create TX mbuf tag\n");
  goto fail;
 }


 for (i = 0; i < DC_TX_LIST_CNT; i++) {
  error = bus_dmamap_create(sc->dc_tx_mtag, 0,
      &sc->dc_cdata.dc_tx_map[i]);
  if (error) {
   device_printf(sc->dc_dev,
       "failed to create TX mbuf dmamap\n");
   goto fail;
  }
 }
 for (i = 0; i < DC_RX_LIST_CNT; i++) {
  error = bus_dmamap_create(sc->dc_rx_mtag, 0,
      &sc->dc_cdata.dc_rx_map[i]);
  if (error) {
   device_printf(sc->dc_dev,
       "failed to create RX mbuf dmamap\n");
   goto fail;
  }
 }
 error = bus_dmamap_create(sc->dc_rx_mtag, 0, &sc->dc_sparemap);
 if (error) {
  device_printf(sc->dc_dev,
      "failed to create spare RX mbuf dmamap\n");
  goto fail;
 }

fail:
 return (error);
}
