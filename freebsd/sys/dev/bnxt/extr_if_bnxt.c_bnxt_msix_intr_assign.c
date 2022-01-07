
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ id; } ;
struct TYPE_8__ {int irq; TYPE_1__ ring; } ;
struct TYPE_6__ {scalar_t__ id; } ;
struct bnxt_softc {TYPE_4__ def_cp_ring; int irq; struct bnxt_softc* rx_cp_rings; TYPE_3__* scctx; TYPE_2__ ring; } ;
typedef int irq_name ;
typedef int if_ctx_t ;
struct TYPE_7__ {int isc_nrxqsets; int isc_ntxqsets; } ;


 int IFLIB_INTR_ADMIN ;
 int IFLIB_INTR_RX ;
 int IFLIB_INTR_TX ;
 int bnxt_handle_def_cp ;
 int bnxt_handle_rx_cp ;
 int device_printf (int ,char*) ;
 int iflib_get_dev (int ) ;
 struct bnxt_softc* iflib_get_softc (int ) ;
 int iflib_irq_alloc_generic (int ,int *,scalar_t__,int ,int ,struct bnxt_softc*,int,char*) ;
 int iflib_irq_free (int ,int *) ;
 int iflib_softirq_alloc_generic (int ,int *,int ,int *,int,char*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int
bnxt_msix_intr_assign(if_ctx_t ctx, int msix)
{
 struct bnxt_softc *softc = iflib_get_softc(ctx);
 int rc;
 int i;
 char irq_name[16];

 rc = iflib_irq_alloc_generic(ctx, &softc->def_cp_ring.irq,
     softc->def_cp_ring.ring.id + 1, IFLIB_INTR_ADMIN,
     bnxt_handle_def_cp, softc, 0, "def_cp");
 if (rc) {
  device_printf(iflib_get_dev(ctx),
      "Failed to register default completion ring handler\n");
  return rc;
 }

 for (i=0; i<softc->scctx->isc_nrxqsets; i++) {
  snprintf(irq_name, sizeof(irq_name), "rxq%d", i);
  rc = iflib_irq_alloc_generic(ctx, &softc->rx_cp_rings[i].irq,
      softc->rx_cp_rings[i].ring.id + 1, IFLIB_INTR_RX,
      bnxt_handle_rx_cp, &softc->rx_cp_rings[i], i, irq_name);
  if (rc) {
   device_printf(iflib_get_dev(ctx),
       "Failed to register RX completion ring handler\n");
   i--;
   goto fail;
  }
 }

 for (i=0; i<softc->scctx->isc_ntxqsets; i++)
  iflib_softirq_alloc_generic(ctx, ((void*)0), IFLIB_INTR_TX, ((void*)0), i, "tx_cp");

 return rc;

fail:
 for (; i>=0; i--)
  iflib_irq_free(ctx, &softc->rx_cp_rings[i].irq);
 iflib_irq_free(ctx, &softc->def_cp_ring.irq);
 return rc;
}
