
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ste_rx_tag; struct ste_chain_onefrag* ste_rx_chain; int * ste_rx_sparemap; int ste_tx_tag; struct ste_chain* ste_tx_chain; int ste_rx_list_map; int ste_rx_list_tag; int ste_tx_list_map; int ste_tx_list_tag; int ste_parent_tag; } ;
struct TYPE_3__ {scalar_t__ ste_tx_list_paddr; scalar_t__ ste_rx_list_paddr; int ste_rx_list; int ste_tx_list; } ;
struct ste_softc {int ste_dev; TYPE_2__ ste_cdata; TYPE_1__ ste_ldata; } ;
struct ste_dmamap_arg {scalar_t__ ste_busaddr; } ;
struct ste_chain_onefrag {int * ste_map; int * ste_next; int * ste_mbuf; int * ste_ptr; } ;
struct ste_chain {int * ste_map; scalar_t__ ste_phys; int * ste_next; int * ste_mbuf; int * ste_ptr; } ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int MCLBYTES ;
 int STE_DESC_ALIGN ;
 int STE_MAXFRAGS ;
 int STE_RX_LIST_CNT ;
 int STE_RX_LIST_SZ ;
 int STE_TX_LIST_CNT ;
 int STE_TX_LIST_SZ ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int **) ;
 int bus_dmamap_load (int ,int ,int ,int,int ,struct ste_dmamap_arg*,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*) ;
 int ste_dmamap_cb ;

__attribute__((used)) static int
ste_dma_alloc(struct ste_softc *sc)
{
 struct ste_chain *txc;
 struct ste_chain_onefrag *rxc;
 struct ste_dmamap_arg ctx;
 int error, i;


 error = bus_dma_tag_create(
     bus_get_dma_tag(sc->ste_dev),
     1, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     ((void*)0), ((void*)0),
     &sc->ste_cdata.ste_parent_tag);
 if (error != 0) {
  device_printf(sc->ste_dev,
      "could not create parent DMA tag.\n");
  goto fail;
 }


 error = bus_dma_tag_create(
     sc->ste_cdata.ste_parent_tag,
     STE_DESC_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     STE_TX_LIST_SZ,
     1,
     STE_TX_LIST_SZ,
     0,
     ((void*)0), ((void*)0),
     &sc->ste_cdata.ste_tx_list_tag);
 if (error != 0) {
  device_printf(sc->ste_dev,
      "could not create Tx list DMA tag.\n");
  goto fail;
 }


 error = bus_dma_tag_create(
     sc->ste_cdata.ste_parent_tag,
     STE_DESC_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     STE_RX_LIST_SZ,
     1,
     STE_RX_LIST_SZ,
     0,
     ((void*)0), ((void*)0),
     &sc->ste_cdata.ste_rx_list_tag);
 if (error != 0) {
  device_printf(sc->ste_dev,
      "could not create Rx list DMA tag.\n");
  goto fail;
 }


 error = bus_dma_tag_create(
     sc->ste_cdata.ste_parent_tag,
     1, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MCLBYTES * STE_MAXFRAGS,
     STE_MAXFRAGS,
     MCLBYTES,
     0,
     ((void*)0), ((void*)0),
     &sc->ste_cdata.ste_tx_tag);
 if (error != 0) {
  device_printf(sc->ste_dev, "could not create Tx DMA tag.\n");
  goto fail;
 }


 error = bus_dma_tag_create(
     sc->ste_cdata.ste_parent_tag,
     1, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MCLBYTES,
     1,
     MCLBYTES,
     0,
     ((void*)0), ((void*)0),
     &sc->ste_cdata.ste_rx_tag);
 if (error != 0) {
  device_printf(sc->ste_dev, "could not create Rx DMA tag.\n");
  goto fail;
 }


 error = bus_dmamem_alloc(sc->ste_cdata.ste_tx_list_tag,
     (void **)&sc->ste_ldata.ste_tx_list,
     BUS_DMA_WAITOK | BUS_DMA_ZERO | BUS_DMA_COHERENT,
     &sc->ste_cdata.ste_tx_list_map);
 if (error != 0) {
  device_printf(sc->ste_dev,
      "could not allocate DMA'able memory for Tx list.\n");
  goto fail;
 }
 ctx.ste_busaddr = 0;
 error = bus_dmamap_load(sc->ste_cdata.ste_tx_list_tag,
     sc->ste_cdata.ste_tx_list_map, sc->ste_ldata.ste_tx_list,
     STE_TX_LIST_SZ, ste_dmamap_cb, &ctx, 0);
 if (error != 0 || ctx.ste_busaddr == 0) {
  device_printf(sc->ste_dev,
      "could not load DMA'able memory for Tx list.\n");
  goto fail;
 }
 sc->ste_ldata.ste_tx_list_paddr = ctx.ste_busaddr;


 error = bus_dmamem_alloc(sc->ste_cdata.ste_rx_list_tag,
     (void **)&sc->ste_ldata.ste_rx_list,
     BUS_DMA_WAITOK | BUS_DMA_ZERO | BUS_DMA_COHERENT,
     &sc->ste_cdata.ste_rx_list_map);
 if (error != 0) {
  device_printf(sc->ste_dev,
      "could not allocate DMA'able memory for Rx list.\n");
  goto fail;
 }
 ctx.ste_busaddr = 0;
 error = bus_dmamap_load(sc->ste_cdata.ste_rx_list_tag,
     sc->ste_cdata.ste_rx_list_map, sc->ste_ldata.ste_rx_list,
     STE_RX_LIST_SZ, ste_dmamap_cb, &ctx, 0);
 if (error != 0 || ctx.ste_busaddr == 0) {
  device_printf(sc->ste_dev,
      "could not load DMA'able memory for Rx list.\n");
  goto fail;
 }
 sc->ste_ldata.ste_rx_list_paddr = ctx.ste_busaddr;


 for (i = 0; i < STE_TX_LIST_CNT; i++) {
  txc = &sc->ste_cdata.ste_tx_chain[i];
  txc->ste_ptr = ((void*)0);
  txc->ste_mbuf = ((void*)0);
  txc->ste_next = ((void*)0);
  txc->ste_phys = 0;
  txc->ste_map = ((void*)0);
  error = bus_dmamap_create(sc->ste_cdata.ste_tx_tag, 0,
      &txc->ste_map);
  if (error != 0) {
   device_printf(sc->ste_dev,
       "could not create Tx dmamap.\n");
   goto fail;
  }
 }

 if ((error = bus_dmamap_create(sc->ste_cdata.ste_rx_tag, 0,
     &sc->ste_cdata.ste_rx_sparemap)) != 0) {
  device_printf(sc->ste_dev,
      "could not create spare Rx dmamap.\n");
  goto fail;
 }
 for (i = 0; i < STE_RX_LIST_CNT; i++) {
  rxc = &sc->ste_cdata.ste_rx_chain[i];
  rxc->ste_ptr = ((void*)0);
  rxc->ste_mbuf = ((void*)0);
  rxc->ste_next = ((void*)0);
  rxc->ste_map = ((void*)0);
  error = bus_dmamap_create(sc->ste_cdata.ste_rx_tag, 0,
      &rxc->ste_map);
  if (error != 0) {
   device_printf(sc->ste_dev,
       "could not create Rx dmamap.\n");
   goto fail;
  }
 }

fail:
 return (error);
}
