
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uintmax_t ;
struct mbuf {int dummy; } ;
struct ether_vlan_header {int dummy; } ;
typedef TYPE_2__* iflib_txq_t ;
typedef TYPE_3__* if_softc_ctx_t ;
typedef TYPE_4__* if_shared_ctx_t ;
typedef TYPE_5__* if_ctx_t ;
typedef int device_t ;
typedef scalar_t__ bus_size_t ;
typedef int bus_dmamap_t ;
struct TYPE_10__ {int isc_tx_nsegments; int isc_tx_tso_segments_max; scalar_t__ isc_tx_tso_size_max; int* isc_ntxd; } ;
struct TYPE_12__ {int ifc_ifp; int ifc_dev; TYPE_3__ ifc_softc_ctx; TYPE_4__* ifc_sctx; } ;
struct TYPE_11__ {scalar_t__ isc_tso_maxsize; scalar_t__ isc_tx_maxsize; scalar_t__ isc_tso_maxsegsize; scalar_t__ isc_tx_maxsegsize; } ;
struct TYPE_8__ {int * ifsd_tso_map; int * ifsd_map; struct mbuf** ifsd_m; } ;
struct TYPE_9__ {size_t ift_br_offset; TYPE_1__ ift_sds; int ift_tso_buf_tag; int ift_buf_tag; TYPE_5__* ift_ctx; } ;


 int BUS_SPACE_MAXADDR ;
 int ENOMEM ;
 int IFCAP_TSO ;
 int IFCAP_VLAN_MTU ;
 int MPASS (int) ;
 int M_IFLIB ;
 int M_NOWAIT ;
 int M_ZERO ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,scalar_t__,int,scalar_t__,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*,...) ;
 int if_getcapabilities (int ) ;
 int iflib_tx_structures_free (TYPE_5__*) ;
 scalar_t__ malloc (int,int ,int) ;

__attribute__((used)) static int
iflib_txsd_alloc(iflib_txq_t txq)
{
 if_ctx_t ctx = txq->ift_ctx;
 if_shared_ctx_t sctx = ctx->ifc_sctx;
 if_softc_ctx_t scctx = &ctx->ifc_softc_ctx;
 device_t dev = ctx->ifc_dev;
 bus_size_t tsomaxsize;
 int err, nsegments, ntsosegments;
 bool tso;

 nsegments = scctx->isc_tx_nsegments;
 ntsosegments = scctx->isc_tx_tso_segments_max;
 tsomaxsize = scctx->isc_tx_tso_size_max;
 if (if_getcapabilities(ctx->ifc_ifp) & IFCAP_VLAN_MTU)
  tsomaxsize += sizeof(struct ether_vlan_header);
 MPASS(scctx->isc_ntxd[0] > 0);
 MPASS(scctx->isc_ntxd[txq->ift_br_offset] > 0);
 MPASS(nsegments > 0);
 if (if_getcapabilities(ctx->ifc_ifp) & IFCAP_TSO) {
  MPASS(ntsosegments > 0);
  MPASS(sctx->isc_tso_maxsize >= tsomaxsize);
 }




 if ((err = bus_dma_tag_create(bus_get_dma_tag(dev),
          1, 0,
          BUS_SPACE_MAXADDR,
          BUS_SPACE_MAXADDR,
          ((void*)0), ((void*)0),
          sctx->isc_tx_maxsize,
          nsegments,
          sctx->isc_tx_maxsegsize,
          0,
          ((void*)0),
          ((void*)0),
          &txq->ift_buf_tag))) {
  device_printf(dev,"Unable to allocate TX DMA tag: %d\n", err);
  device_printf(dev,"maxsize: %ju nsegments: %d maxsegsize: %ju\n",
      (uintmax_t)sctx->isc_tx_maxsize, nsegments, (uintmax_t)sctx->isc_tx_maxsegsize);
  goto fail;
 }
 tso = (if_getcapabilities(ctx->ifc_ifp) & IFCAP_TSO) != 0;
 if (tso && (err = bus_dma_tag_create(bus_get_dma_tag(dev),
          1, 0,
          BUS_SPACE_MAXADDR,
          BUS_SPACE_MAXADDR,
          ((void*)0), ((void*)0),
          tsomaxsize,
          ntsosegments,
          sctx->isc_tso_maxsegsize,
          0,
          ((void*)0),
          ((void*)0),
          &txq->ift_tso_buf_tag))) {
  device_printf(dev, "Unable to allocate TSO TX DMA tag: %d\n",
      err);
  goto fail;
 }


 if (!(txq->ift_sds.ifsd_m =
     (struct mbuf **) malloc(sizeof(struct mbuf *) *
     scctx->isc_ntxd[txq->ift_br_offset], M_IFLIB, M_NOWAIT | M_ZERO))) {
  device_printf(dev, "Unable to allocate TX mbuf map memory\n");
  err = ENOMEM;
  goto fail;
 }




 if ((txq->ift_sds.ifsd_map = (bus_dmamap_t *)malloc(
     sizeof(bus_dmamap_t) * scctx->isc_ntxd[txq->ift_br_offset],
     M_IFLIB, M_NOWAIT | M_ZERO)) == ((void*)0)) {
  device_printf(dev,
      "Unable to allocate TX buffer DMA map memory\n");
  err = ENOMEM;
  goto fail;
 }
 if (tso && (txq->ift_sds.ifsd_tso_map = (bus_dmamap_t *)malloc(
     sizeof(bus_dmamap_t) * scctx->isc_ntxd[txq->ift_br_offset],
     M_IFLIB, M_NOWAIT | M_ZERO)) == ((void*)0)) {
  device_printf(dev,
      "Unable to allocate TSO TX buffer map memory\n");
  err = ENOMEM;
  goto fail;
 }
 for (int i = 0; i < scctx->isc_ntxd[txq->ift_br_offset]; i++) {
  err = bus_dmamap_create(txq->ift_buf_tag, 0,
      &txq->ift_sds.ifsd_map[i]);
  if (err != 0) {
   device_printf(dev, "Unable to create TX DMA map\n");
   goto fail;
  }
  if (!tso)
   continue;
  err = bus_dmamap_create(txq->ift_tso_buf_tag, 0,
      &txq->ift_sds.ifsd_tso_map[i]);
  if (err != 0) {
   device_printf(dev, "Unable to create TSO TX DMA map\n");
   goto fail;
  }
 }
 return (0);
fail:

 iflib_tx_structures_free(ctx);
 return (err);
}
