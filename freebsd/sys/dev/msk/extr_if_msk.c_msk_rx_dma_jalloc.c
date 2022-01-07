
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msk_rxdesc {int * rx_dmamap; int * rx_m; } ;
struct TYPE_4__ {int msk_jumbo_rx_tag; struct msk_rxdesc* msk_jumbo_rxdesc; int * msk_jumbo_rx_sparemap; int msk_jumbo_rx_ring_map; int msk_jumbo_rx_ring_tag; int msk_parent_tag; } ;
struct TYPE_3__ {scalar_t__ msk_jumbo_rx_ring_paddr; int msk_jumbo_rx_ring; } ;
struct msk_if_softc {int msk_flags; int msk_if_dev; TYPE_2__ msk_cdata; TYPE_1__ msk_rdata; } ;
struct msk_dmamap_arg {scalar_t__ msk_busaddr; } ;
typedef int bus_size_t ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_NOWAIT ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int MJUM9BYTES ;
 int MSK_FLAG_JUMBO ;
 int MSK_FLAG_RAMBUF ;
 int MSK_JUMBO_RX_RING_CNT ;
 int MSK_JUMBO_RX_RING_SZ ;
 int MSK_RING_ALIGN ;
 int MSK_RX_BUF_ALIGN ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int **) ;
 int bus_dmamap_load (int ,int ,int ,int ,int ,struct msk_dmamap_arg*,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int device_printf (int ,char*) ;
 scalar_t__ jumbo_disable ;
 int msk_dmamap_cb ;
 int msk_rx_dma_jfree (struct msk_if_softc*) ;

__attribute__((used)) static int
msk_rx_dma_jalloc(struct msk_if_softc *sc_if)
{
 struct msk_dmamap_arg ctx;
 struct msk_rxdesc *jrxd;
 bus_size_t rxalign;
 int error, i;

 if (jumbo_disable != 0 || (sc_if->msk_flags & MSK_FLAG_JUMBO) == 0) {
  sc_if->msk_flags &= ~MSK_FLAG_JUMBO;
  device_printf(sc_if->msk_if_dev,
      "disabling jumbo frame support\n");
  return (0);
 }

 error = bus_dma_tag_create(sc_if->msk_cdata.msk_parent_tag,
      MSK_RING_ALIGN, 0,
      BUS_SPACE_MAXADDR,
      BUS_SPACE_MAXADDR,
      ((void*)0), ((void*)0),
      MSK_JUMBO_RX_RING_SZ,
      1,
      MSK_JUMBO_RX_RING_SZ,
      0,
      ((void*)0), ((void*)0),
      &sc_if->msk_cdata.msk_jumbo_rx_ring_tag);
 if (error != 0) {
  device_printf(sc_if->msk_if_dev,
      "failed to create jumbo Rx ring DMA tag\n");
  goto jumbo_fail;
 }

 rxalign = 1;




 if ((sc_if->msk_flags & MSK_FLAG_RAMBUF) != 0)
  rxalign = MSK_RX_BUF_ALIGN;

 error = bus_dma_tag_create(sc_if->msk_cdata.msk_parent_tag,
      rxalign, 0,
      BUS_SPACE_MAXADDR,
      BUS_SPACE_MAXADDR,
      ((void*)0), ((void*)0),
      MJUM9BYTES,
      1,
      MJUM9BYTES,
      0,
      ((void*)0), ((void*)0),
      &sc_if->msk_cdata.msk_jumbo_rx_tag);
 if (error != 0) {
  device_printf(sc_if->msk_if_dev,
      "failed to create jumbo Rx DMA tag\n");
  goto jumbo_fail;
 }


 error = bus_dmamem_alloc(sc_if->msk_cdata.msk_jumbo_rx_ring_tag,
     (void **)&sc_if->msk_rdata.msk_jumbo_rx_ring,
     BUS_DMA_WAITOK | BUS_DMA_COHERENT | BUS_DMA_ZERO,
     &sc_if->msk_cdata.msk_jumbo_rx_ring_map);
 if (error != 0) {
  device_printf(sc_if->msk_if_dev,
      "failed to allocate DMA'able memory for jumbo Rx ring\n");
  goto jumbo_fail;
 }

 ctx.msk_busaddr = 0;
 error = bus_dmamap_load(sc_if->msk_cdata.msk_jumbo_rx_ring_tag,
     sc_if->msk_cdata.msk_jumbo_rx_ring_map,
     sc_if->msk_rdata.msk_jumbo_rx_ring, MSK_JUMBO_RX_RING_SZ,
     msk_dmamap_cb, &ctx, BUS_DMA_NOWAIT);
 if (error != 0) {
  device_printf(sc_if->msk_if_dev,
      "failed to load DMA'able memory for jumbo Rx ring\n");
  goto jumbo_fail;
 }
 sc_if->msk_rdata.msk_jumbo_rx_ring_paddr = ctx.msk_busaddr;


 if ((error = bus_dmamap_create(sc_if->msk_cdata.msk_jumbo_rx_tag, 0,
     &sc_if->msk_cdata.msk_jumbo_rx_sparemap)) != 0) {
  device_printf(sc_if->msk_if_dev,
      "failed to create spare jumbo Rx dmamap\n");
  goto jumbo_fail;
 }
 for (i = 0; i < MSK_JUMBO_RX_RING_CNT; i++) {
  jrxd = &sc_if->msk_cdata.msk_jumbo_rxdesc[i];
  jrxd->rx_m = ((void*)0);
  jrxd->rx_dmamap = ((void*)0);
  error = bus_dmamap_create(sc_if->msk_cdata.msk_jumbo_rx_tag, 0,
      &jrxd->rx_dmamap);
  if (error != 0) {
   device_printf(sc_if->msk_if_dev,
       "failed to create jumbo Rx dmamap\n");
   goto jumbo_fail;
  }
 }

 return (0);

jumbo_fail:
 msk_rx_dma_jfree(sc_if);
 device_printf(sc_if->msk_if_dev, "disabling jumbo frame support "
     "due to resource shortage\n");
 sc_if->msk_flags &= ~MSK_FLAG_JUMBO;
 return (error);
}
