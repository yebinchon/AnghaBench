
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct nfe_rx_data* jdata; } ;
struct nfe_softc {int nfe_flags; int nfe_jumbo_disable; int nfe_dev; TYPE_1__ jrxq; int nfe_parent_tag; } ;
struct nfe_rx_data {int * rx_data_map; int * m; } ;
struct nfe_jrx_ring {int jrx_data_tag; int * jrx_spare_map; scalar_t__ jphysaddr; int jrx_desc_map; int jrx_desc_tag; void* jdesc32; void* jdesc64; scalar_t__ jnext; scalar_t__ jcur; } ;
struct nfe_dmamap_arg {scalar_t__ nfe_busaddr; } ;
struct nfe_desc64 {int dummy; } ;
struct nfe_desc32 {int dummy; } ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int MJUM9BYTES ;
 int NFE_40BIT_ADDR ;
 int NFE_JUMBO_RX_RING_COUNT ;
 int NFE_JUMBO_SUP ;
 int NFE_RING_ALIGN ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int **) ;
 int bus_dmamap_load (int ,int ,void*,int,int ,struct nfe_dmamap_arg*,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int device_printf (int ,char*) ;
 scalar_t__ jumbo_disable ;
 int nfe_dma_map_segs ;
 int nfe_free_jrx_ring (struct nfe_softc*,struct nfe_jrx_ring*) ;

__attribute__((used)) static void
nfe_alloc_jrx_ring(struct nfe_softc *sc, struct nfe_jrx_ring *ring)
{
 struct nfe_dmamap_arg ctx;
 struct nfe_rx_data *data;
 void *desc;
 int i, error, descsize;

 if ((sc->nfe_flags & NFE_JUMBO_SUP) == 0)
  return;
 if (jumbo_disable != 0) {
  device_printf(sc->nfe_dev, "disabling jumbo frame support\n");
  sc->nfe_jumbo_disable = 1;
  return;
 }

 if (sc->nfe_flags & NFE_40BIT_ADDR) {
  desc = ring->jdesc64;
  descsize = sizeof (struct nfe_desc64);
 } else {
  desc = ring->jdesc32;
  descsize = sizeof (struct nfe_desc32);
 }

 ring->jcur = ring->jnext = 0;


 error = bus_dma_tag_create(sc->nfe_parent_tag,
     NFE_RING_ALIGN, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     NFE_JUMBO_RX_RING_COUNT * descsize,
     1,
     NFE_JUMBO_RX_RING_COUNT * descsize,
     0,
     ((void*)0), ((void*)0),
     &ring->jrx_desc_tag);
 if (error != 0) {
  device_printf(sc->nfe_dev,
      "could not create jumbo ring DMA tag\n");
  goto fail;
 }


 error = bus_dma_tag_create(sc->nfe_parent_tag,
     1, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MJUM9BYTES,
     1,
     MJUM9BYTES,
     0,
     ((void*)0), ((void*)0),
     &ring->jrx_data_tag);
 if (error != 0) {
  device_printf(sc->nfe_dev,
      "could not create jumbo Rx buffer DMA tag\n");
  goto fail;
 }


 error = bus_dmamem_alloc(ring->jrx_desc_tag, &desc, BUS_DMA_WAITOK |
     BUS_DMA_COHERENT | BUS_DMA_ZERO, &ring->jrx_desc_map);
 if (error != 0) {
  device_printf(sc->nfe_dev,
      "could not allocate DMA'able memory for jumbo Rx ring\n");
  goto fail;
 }
 if (sc->nfe_flags & NFE_40BIT_ADDR)
  ring->jdesc64 = desc;
 else
  ring->jdesc32 = desc;

 ctx.nfe_busaddr = 0;
 error = bus_dmamap_load(ring->jrx_desc_tag, ring->jrx_desc_map, desc,
     NFE_JUMBO_RX_RING_COUNT * descsize, nfe_dma_map_segs, &ctx, 0);
 if (error != 0) {
  device_printf(sc->nfe_dev,
      "could not load DMA'able memory for jumbo Rx ring\n");
  goto fail;
 }
 ring->jphysaddr = ctx.nfe_busaddr;


 error = bus_dmamap_create(ring->jrx_data_tag, 0, &ring->jrx_spare_map);
 if (error != 0) {
  device_printf(sc->nfe_dev,
      "could not create jumbo Rx DMA spare map\n");
  goto fail;
 }

 for (i = 0; i < NFE_JUMBO_RX_RING_COUNT; i++) {
  data = &sc->jrxq.jdata[i];
  data->rx_data_map = ((void*)0);
  data->m = ((void*)0);
  error = bus_dmamap_create(ring->jrx_data_tag, 0,
      &data->rx_data_map);
  if (error != 0) {
   device_printf(sc->nfe_dev,
       "could not create jumbo Rx DMA map\n");
   goto fail;
  }
 }

 return;

fail:




 nfe_free_jrx_ring(sc, ring);
 device_printf(sc->nfe_dev, "disabling jumbo frame support due to "
     "resource shortage\n");
 sc->nfe_jumbo_disable = 1;
}
