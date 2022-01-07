
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_15__ {int mask; int max_desc; TYPE_1__* info; int dmat; int * seg_list; void* req_bytes; int * req_list; } ;
struct TYPE_14__ {int mask; int extra_map; int dmat; TYPE_5__* info; void* shadow; } ;
struct TYPE_12__ {int mask; int extra_map; int dmat; TYPE_3__* info; void* shadow; } ;
struct TYPE_10__ {int mask; } ;
struct mxge_slice_state {TYPE_7__ tx; TYPE_8__* sc; TYPE_6__ rx_big; TYPE_4__ rx_small; TYPE_2__ rx_done; } ;
struct TYPE_16__ {int tx_boundary; int dev; int parent_dmat; struct mxge_slice_state* ss; } ;
typedef TYPE_8__ mxge_softc_t ;
typedef int mcp_kreq_ether_send_t ;
typedef int bus_dma_segment_t ;
struct TYPE_13__ {int map; } ;
struct TYPE_11__ {int map; } ;
struct TYPE_9__ {int map; } ;


 int BUS_DMA_ALLOCNOW ;
 int BUS_SPACE_MAXADDR ;
 int MHLEN ;
 int MIN (int ,int) ;
 int MJUM9BYTES ;
 int MXGE_MAX_SEND_DESC ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int bus_dma_tag_create (int ,int,int,int ,int ,int *,int *,int,int,int,int,int,int *,int *,...) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int device_printf (int ,char*,int) ;
 void* malloc (size_t,int ,int) ;

__attribute__((used)) static int
mxge_alloc_slice_rings(struct mxge_slice_state *ss, int rx_ring_entries,
         int tx_ring_entries)
{
 mxge_softc_t *sc = ss->sc;
 size_t bytes;
 int err, i;



 ss->rx_small.mask = ss->rx_big.mask = rx_ring_entries - 1;
 ss->rx_done.mask = (2 * rx_ring_entries) - 1;


 bytes = rx_ring_entries * sizeof (*ss->rx_small.shadow);
 ss->rx_small.shadow = malloc(bytes, M_DEVBUF, M_ZERO|M_WAITOK);

 bytes = rx_ring_entries * sizeof (*ss->rx_big.shadow);
 ss->rx_big.shadow = malloc(bytes, M_DEVBUF, M_ZERO|M_WAITOK);


 bytes = rx_ring_entries * sizeof (*ss->rx_small.info);
 ss->rx_small.info = malloc(bytes, M_DEVBUF, M_ZERO|M_WAITOK);

 bytes = rx_ring_entries * sizeof (*ss->rx_big.info);
 ss->rx_big.info = malloc(bytes, M_DEVBUF, M_ZERO|M_WAITOK);


 err = bus_dma_tag_create(sc->parent_dmat,
     1,
     4096,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MHLEN,
     1,
     MHLEN,
     BUS_DMA_ALLOCNOW,
     ((void*)0), ((void*)0),
     &ss->rx_small.dmat);
 if (err != 0) {
  device_printf(sc->dev, "Err %d allocating rx_small dmat\n",
         err);
  return err;
 }

 err = bus_dma_tag_create(sc->parent_dmat,
     1,



     0,

     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     3*4096,




     1,
     MJUM9BYTES,

     BUS_DMA_ALLOCNOW,
     ((void*)0), ((void*)0),
     &ss->rx_big.dmat);
 if (err != 0) {
  device_printf(sc->dev, "Err %d allocating rx_big dmat\n",
         err);
  return err;
 }
 for (i = 0; i <= ss->rx_small.mask; i++) {
  err = bus_dmamap_create(ss->rx_small.dmat, 0,
     &ss->rx_small.info[i].map);
  if (err != 0) {
   device_printf(sc->dev, "Err %d  rx_small dmamap\n",
          err);
   return err;
  }
 }
 err = bus_dmamap_create(ss->rx_small.dmat, 0,
    &ss->rx_small.extra_map);
 if (err != 0) {
  device_printf(sc->dev, "Err %d extra rx_small dmamap\n",
         err);
  return err;
 }

 for (i = 0; i <= ss->rx_big.mask; i++) {
  err = bus_dmamap_create(ss->rx_big.dmat, 0,
     &ss->rx_big.info[i].map);
  if (err != 0) {
   device_printf(sc->dev, "Err %d  rx_big dmamap\n",
          err);
   return err;
  }
 }
 err = bus_dmamap_create(ss->rx_big.dmat, 0,
    &ss->rx_big.extra_map);
 if (err != 0) {
  device_printf(sc->dev, "Err %d extra rx_big dmamap\n",
         err);
  return err;
 }





 if (ss != ss->sc->ss)
  return 0;


 ss->tx.mask = tx_ring_entries - 1;
 ss->tx.max_desc = MIN(MXGE_MAX_SEND_DESC, tx_ring_entries / 4);



 bytes = 8 +
  sizeof (*ss->tx.req_list) * (ss->tx.max_desc + 4);
 ss->tx.req_bytes = malloc(bytes, M_DEVBUF, M_WAITOK);

 ss->tx.req_list = (mcp_kreq_ether_send_t *)
  ((unsigned long)(ss->tx.req_bytes + 7) & ~7UL);


 bytes = sizeof (*ss->tx.seg_list) * ss->tx.max_desc;
 ss->tx.seg_list = (bus_dma_segment_t *)
  malloc(bytes, M_DEVBUF, M_WAITOK);


 bytes = tx_ring_entries * sizeof (*ss->tx.info);
 ss->tx.info = malloc(bytes, M_DEVBUF, M_ZERO|M_WAITOK);


 err = bus_dma_tag_create(sc->parent_dmat,
     1,
     sc->tx_boundary,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     65536 + 256,
     ss->tx.max_desc - 2,
     sc->tx_boundary,
     BUS_DMA_ALLOCNOW,
     ((void*)0), ((void*)0),
     &ss->tx.dmat);

 if (err != 0) {
  device_printf(sc->dev, "Err %d allocating tx dmat\n",
         err);
  return err;
 }



 for (i = 0; i <= ss->tx.mask; i++) {
  err = bus_dmamap_create(ss->tx.dmat, 0,
     &ss->tx.info[i].map);
  if (err != 0) {
   device_printf(sc->dev, "Err %d  tx dmamap\n",
          err);
   return err;
  }
 }
 return 0;

}
