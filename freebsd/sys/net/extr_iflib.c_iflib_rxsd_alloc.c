
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct mbuf {int dummy; } ;
typedef TYPE_2__* iflib_rxq_t ;
typedef TYPE_3__* iflib_fl_t ;
typedef TYPE_4__* if_softc_ctx_t ;
typedef TYPE_5__* if_shared_ctx_t ;
typedef TYPE_6__* if_ctx_t ;
typedef int device_t ;
typedef int caddr_t ;
typedef int bus_dmamap_t ;
typedef int bus_addr_t ;
struct TYPE_12__ {int* isc_nrxd; } ;
struct TYPE_14__ {int ifc_dev; TYPE_4__ ifc_softc_ctx; TYPE_5__* ifc_sctx; } ;
struct TYPE_13__ {int isc_rx_maxsegsize; int isc_rx_nsegments; int isc_rx_maxsize; } ;
struct TYPE_9__ {int * ifsd_map; int * ifsd_ba; int * ifsd_cl; struct mbuf** ifsd_m; } ;
struct TYPE_11__ {int ifl_size; TYPE_1__ ifl_sds; int ifl_buf_tag; } ;
struct TYPE_10__ {size_t ifr_fl_offset; int ifr_nfl; TYPE_3__* ifr_fl; TYPE_6__* ifr_ctx; } ;


 int BUS_SPACE_MAXADDR ;
 int ENOMEM ;
 int MPASS (int) ;
 int M_IFLIB ;
 int M_NOWAIT ;
 int M_ZERO ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*,...) ;
 int iflib_rx_structures_free (TYPE_6__*) ;
 scalar_t__ malloc (int,int ,int) ;

__attribute__((used)) static int
iflib_rxsd_alloc(iflib_rxq_t rxq)
{
 if_ctx_t ctx = rxq->ifr_ctx;
 if_shared_ctx_t sctx = ctx->ifc_sctx;
 if_softc_ctx_t scctx = &ctx->ifc_softc_ctx;
 device_t dev = ctx->ifc_dev;
 iflib_fl_t fl;
 int err;

 MPASS(scctx->isc_nrxd[0] > 0);
 MPASS(scctx->isc_nrxd[rxq->ifr_fl_offset] > 0);

 fl = rxq->ifr_fl;
 for (int i = 0; i < rxq->ifr_nfl; i++, fl++) {
  fl->ifl_size = scctx->isc_nrxd[rxq->ifr_fl_offset];

  err = bus_dma_tag_create(bus_get_dma_tag(dev),
      1, 0,
      BUS_SPACE_MAXADDR,
      BUS_SPACE_MAXADDR,
      ((void*)0), ((void*)0),
      sctx->isc_rx_maxsize,
      sctx->isc_rx_nsegments,
      sctx->isc_rx_maxsegsize,
      0,
      ((void*)0),
      ((void*)0),
      &fl->ifl_buf_tag);
  if (err) {
   device_printf(dev,
       "Unable to allocate RX DMA tag: %d\n", err);
   goto fail;
  }


  if (!(fl->ifl_sds.ifsd_m =
        (struct mbuf **) malloc(sizeof(struct mbuf *) *
           scctx->isc_nrxd[rxq->ifr_fl_offset], M_IFLIB, M_NOWAIT | M_ZERO))) {
   device_printf(dev,
       "Unable to allocate RX mbuf map memory\n");
   err = ENOMEM;
   goto fail;
  }


  if (!(fl->ifl_sds.ifsd_cl =
        (caddr_t *) malloc(sizeof(caddr_t) *
           scctx->isc_nrxd[rxq->ifr_fl_offset], M_IFLIB, M_NOWAIT | M_ZERO))) {
   device_printf(dev,
       "Unable to allocate RX cluster map memory\n");
   err = ENOMEM;
   goto fail;
  }


  if (!(fl->ifl_sds.ifsd_ba =
        (bus_addr_t *) malloc(sizeof(bus_addr_t) *
           scctx->isc_nrxd[rxq->ifr_fl_offset], M_IFLIB, M_NOWAIT | M_ZERO))) {
   device_printf(dev,
       "Unable to allocate RX bus address map memory\n");
   err = ENOMEM;
   goto fail;
  }




  if (!(fl->ifl_sds.ifsd_map =
        (bus_dmamap_t *) malloc(sizeof(bus_dmamap_t) * scctx->isc_nrxd[rxq->ifr_fl_offset], M_IFLIB, M_NOWAIT | M_ZERO))) {
   device_printf(dev,
       "Unable to allocate RX buffer DMA map memory\n");
   err = ENOMEM;
   goto fail;
  }
  for (int i = 0; i < scctx->isc_nrxd[rxq->ifr_fl_offset]; i++) {
   err = bus_dmamap_create(fl->ifl_buf_tag, 0,
       &fl->ifl_sds.ifsd_map[i]);
   if (err != 0) {
    device_printf(dev, "Unable to create RX buffer DMA map\n");
    goto fail;
   }
  }
 }
 return (0);

fail:
 iflib_rx_structures_free(ctx);
 return (err);
}
