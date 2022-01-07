
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rl_rx_buf_paddr; scalar_t__ rl_rx_buf; scalar_t__ rl_rx_buf_ptr; int ** rl_tx_dmamap; int rl_tx_tag; int ** rl_tx_chain; int rl_rx_dmamap; int rl_rx_tag; } ;
struct rl_softc {TYPE_1__ rl_cdata; int rl_dev; int rl_parent_tag; } ;
struct rl_dmamap_arg {scalar_t__ rl_busaddr; } ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_NOWAIT ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 scalar_t__ BUS_SPACE_MAXSIZE_32BIT ;
 scalar_t__ MCLBYTES ;
 scalar_t__ RL_RXBUFLEN ;
 int RL_RX_8139_BUF_ALIGN ;
 scalar_t__ RL_RX_8139_BUF_GUARD_SZ ;
 scalar_t__ RL_RX_8139_BUF_RESERVE ;
 int RL_TX_8139_BUF_ALIGN ;
 int RL_TX_LIST_CNT ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,scalar_t__,int,scalar_t__,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int **) ;
 int bus_dmamap_load (int ,int ,scalar_t__,scalar_t__,int ,struct rl_dmamap_arg*,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*) ;
 int rl_dmamap_cb ;

__attribute__((used)) static int
rl_dma_alloc(struct rl_softc *sc)
{
 struct rl_dmamap_arg ctx;
 int error, i;




 error = bus_dma_tag_create(bus_get_dma_tag(sc->rl_dev),
     1, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     BUS_SPACE_MAXSIZE_32BIT, 0,
     BUS_SPACE_MAXSIZE_32BIT,
     0,
     ((void*)0), ((void*)0),
     &sc->rl_parent_tag);
 if (error) {
                device_printf(sc->rl_dev,
      "failed to create parent DMA tag.\n");
  goto fail;
 }

 error = bus_dma_tag_create(sc->rl_parent_tag,
     RL_RX_8139_BUF_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     RL_RXBUFLEN + RL_RX_8139_BUF_GUARD_SZ, 1,
     RL_RXBUFLEN + RL_RX_8139_BUF_GUARD_SZ,
     0,
     ((void*)0), ((void*)0),
     &sc->rl_cdata.rl_rx_tag);
 if (error) {
                device_printf(sc->rl_dev,
      "failed to create Rx memory block DMA tag.\n");
  goto fail;
 }

 error = bus_dma_tag_create(sc->rl_parent_tag,
     RL_TX_8139_BUF_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MCLBYTES, 1,
     MCLBYTES,
     0,
     ((void*)0), ((void*)0),
     &sc->rl_cdata.rl_tx_tag);
 if (error) {
                device_printf(sc->rl_dev, "failed to create Tx DMA tag.\n");
  goto fail;
 }




 error = bus_dmamem_alloc(sc->rl_cdata.rl_rx_tag,
     (void **)&sc->rl_cdata.rl_rx_buf, BUS_DMA_WAITOK |
     BUS_DMA_COHERENT | BUS_DMA_ZERO, &sc->rl_cdata.rl_rx_dmamap);
 if (error != 0) {
  device_printf(sc->rl_dev,
      "failed to allocate Rx DMA memory block.\n");
  goto fail;
 }
 ctx.rl_busaddr = 0;
 error = bus_dmamap_load(sc->rl_cdata.rl_rx_tag,
     sc->rl_cdata.rl_rx_dmamap, sc->rl_cdata.rl_rx_buf,
     RL_RXBUFLEN + RL_RX_8139_BUF_GUARD_SZ, rl_dmamap_cb, &ctx,
     BUS_DMA_NOWAIT);
 if (error != 0 || ctx.rl_busaddr == 0) {
  device_printf(sc->rl_dev,
      "could not load Rx DMA memory block.\n");
  goto fail;
 }
 sc->rl_cdata.rl_rx_buf_paddr = ctx.rl_busaddr;


 for (i = 0; i < RL_TX_LIST_CNT; i++) {
  sc->rl_cdata.rl_tx_chain[i] = ((void*)0);
  sc->rl_cdata.rl_tx_dmamap[i] = ((void*)0);
  error = bus_dmamap_create(sc->rl_cdata.rl_tx_tag, 0,
      &sc->rl_cdata.rl_tx_dmamap[i]);
  if (error != 0) {
   device_printf(sc->rl_dev,
       "could not create Tx dmamap.\n");
   goto fail;
  }
 }


 sc->rl_cdata.rl_rx_buf_ptr = sc->rl_cdata.rl_rx_buf;
 sc->rl_cdata.rl_rx_buf += RL_RX_8139_BUF_RESERVE;

fail:
 return (error);
}
