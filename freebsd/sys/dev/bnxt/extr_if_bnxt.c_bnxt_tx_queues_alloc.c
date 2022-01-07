
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* uint64_t ;
typedef void* uint16_t ;
struct ctx_hw_stats {int dummy; } ;
struct TYPE_7__ {int idi_map; int idi_tag; } ;
struct bnxt_softc {int ntxqsets; TYPE_4__* tx_cp_rings; TYPE_4__* tx_rings; TYPE_2__* scctx; TYPE_3__ tx_stats; } ;
struct bnxt_ring {int dummy; } ;
struct bnxt_cp_ring {int dummy; } ;
typedef int if_ctx_t ;
typedef void* caddr_t ;
struct TYPE_5__ {int id; int doorbell; void* paddr; void* vaddr; int ring_size; struct bnxt_softc* softc; void* phys_id; } ;
struct TYPE_8__ {int id; int doorbell; void* paddr; void* vaddr; int ring_size; struct bnxt_softc* softc; void* phys_id; TYPE_1__ ring; scalar_t__ stats_ctx_id; } ;
struct TYPE_6__ {int isc_nrxqsets; int * isc_ntxd; } ;


 int BUS_DMASYNC_PREREAD ;
 int ENOMEM ;
 scalar_t__ HWRM_NA_SIGNATURE ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int bnxt_create_tx_sysctls (struct bnxt_softc*,int) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int device_printf (int ,char*) ;
 int free (TYPE_4__*,int ) ;
 int iflib_dma_alloc (int ,int,TYPE_3__*,int ) ;
 int iflib_get_dev (int ) ;
 struct bnxt_softc* iflib_get_softc (int ) ;
 void* malloc (int,int ,int) ;

__attribute__((used)) static int
bnxt_tx_queues_alloc(if_ctx_t ctx, caddr_t *vaddrs,
    uint64_t *paddrs, int ntxqs, int ntxqsets)
{
 struct bnxt_softc *softc;
 int i;
 int rc;

 softc = iflib_get_softc(ctx);

 softc->tx_cp_rings = malloc(sizeof(struct bnxt_cp_ring) * ntxqsets,
     M_DEVBUF, M_NOWAIT | M_ZERO);
 if (!softc->tx_cp_rings) {
  device_printf(iflib_get_dev(ctx),
      "unable to allocate TX completion rings\n");
  rc = ENOMEM;
  goto cp_alloc_fail;
 }
 softc->tx_rings = malloc(sizeof(struct bnxt_ring) * ntxqsets,
     M_DEVBUF, M_NOWAIT | M_ZERO);
 if (!softc->tx_rings) {
  device_printf(iflib_get_dev(ctx),
      "unable to allocate TX rings\n");
  rc = ENOMEM;
  goto ring_alloc_fail;
 }
 rc = iflib_dma_alloc(ctx, sizeof(struct ctx_hw_stats) * ntxqsets,
     &softc->tx_stats, 0);
 if (rc)
  goto dma_alloc_fail;
 bus_dmamap_sync(softc->tx_stats.idi_tag, softc->tx_stats.idi_map,
     BUS_DMASYNC_PREREAD);

 for (i = 0; i < ntxqsets; i++) {

  softc->tx_cp_rings[i].stats_ctx_id = HWRM_NA_SIGNATURE;
  softc->tx_cp_rings[i].ring.phys_id =
      (uint16_t)HWRM_NA_SIGNATURE;
  softc->tx_cp_rings[i].ring.softc = softc;
  softc->tx_cp_rings[i].ring.id =
      (softc->scctx->isc_nrxqsets * 2) + 1 + i;
  softc->tx_cp_rings[i].ring.doorbell =
      softc->tx_cp_rings[i].ring.id * 0x80;
  softc->tx_cp_rings[i].ring.ring_size =
      softc->scctx->isc_ntxd[0];
  softc->tx_cp_rings[i].ring.vaddr = vaddrs[i * ntxqs];
  softc->tx_cp_rings[i].ring.paddr = paddrs[i * ntxqs];


  softc->tx_rings[i].phys_id = (uint16_t)HWRM_NA_SIGNATURE;
  softc->tx_rings[i].softc = softc;
  softc->tx_rings[i].id =
      (softc->scctx->isc_nrxqsets * 2) + 1 + i;
  softc->tx_rings[i].doorbell = softc->tx_rings[i].id * 0x80;
  softc->tx_rings[i].ring_size = softc->scctx->isc_ntxd[1];
  softc->tx_rings[i].vaddr = vaddrs[i * ntxqs + 1];
  softc->tx_rings[i].paddr = paddrs[i * ntxqs + 1];

  bnxt_create_tx_sysctls(softc, i);
 }

 softc->ntxqsets = ntxqsets;
 return rc;

dma_alloc_fail:
 free(softc->tx_rings, M_DEVBUF);
ring_alloc_fail:
 free(softc->tx_cp_rings, M_DEVBUF);
cp_alloc_fail:
 return rc;
}
