
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ixl_vsi {int num_rx_queues; struct ixl_tx_queue* rx_queues; int irq; TYPE_3__* shared; struct ixl_tx_queue* tx_queues; } ;
struct TYPE_5__ {int me; } ;
struct TYPE_4__ {int me; } ;
struct ixl_tx_queue {int msix; int que_irq; TYPE_2__ txr; TYPE_1__ rxr; struct ixl_vsi vsi; } ;
struct ixl_rx_queue {int msix; int que_irq; TYPE_2__ txr; TYPE_1__ rxr; struct ixl_vsi vsi; } ;
struct ixl_pf {int msix; int que_irq; TYPE_2__ txr; TYPE_1__ rxr; struct ixl_vsi vsi; } ;
typedef int if_ctx_t ;
typedef int buf ;
struct TYPE_6__ {int isc_nrxqsets; int isc_ntxqsets; } ;


 int IFLIB_INTR_ADMIN ;
 int IFLIB_INTR_IOV ;
 int IFLIB_INTR_RX ;
 int IFLIB_INTR_TX ;
 int MPASS (int) ;
 int bzero (char*,int) ;
 int device_printf (int ,char*,...) ;
 int iflib_get_dev (int ) ;
 struct ixl_tx_queue* iflib_get_softc (int ) ;
 int iflib_irq_alloc_generic (int ,int *,int,int ,int ,struct ixl_tx_queue*,int ,char*) ;
 int iflib_irq_free (int ,int *) ;
 int iflib_softirq_alloc_generic (int ,int *,int ,struct ixl_tx_queue*,int ,char*) ;
 int ixl_msix_adminq ;
 int ixl_msix_que ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int
ixl_if_msix_intr_assign(if_ctx_t ctx, int msix)
{
 struct ixl_pf *pf = iflib_get_softc(ctx);
 struct ixl_vsi *vsi = &pf->vsi;
 struct ixl_rx_queue *rx_que = vsi->rx_queues;
 struct ixl_tx_queue *tx_que = vsi->tx_queues;
 int err, i, rid, vector = 0;
 char buf[16];

 MPASS(vsi->shared->isc_nrxqsets > 0);
 MPASS(vsi->shared->isc_ntxqsets > 0);


 rid = vector + 1;
 err = iflib_irq_alloc_generic(ctx, &vsi->irq, rid, IFLIB_INTR_ADMIN,
     ixl_msix_adminq, pf, 0, "aq");
 if (err) {
  iflib_irq_free(ctx, &vsi->irq);
  device_printf(iflib_get_dev(ctx),
      "Failed to register Admin Que handler");
  return (err);
 }

 iflib_softirq_alloc_generic(ctx, ((void*)0), IFLIB_INTR_IOV, pf, 0, "iov");


 for (i = 0, vector = 1; i < vsi->shared->isc_nrxqsets; i++, vector++, rx_que++) {
  rid = vector + 1;

  snprintf(buf, sizeof(buf), "rxq%d", i);
  err = iflib_irq_alloc_generic(ctx, &rx_que->que_irq, rid,
      IFLIB_INTR_RX, ixl_msix_que, rx_que, rx_que->rxr.me, buf);


  if (err) {
   device_printf(iflib_get_dev(ctx),
       "Failed to allocate queue RX int vector %d, err: %d\n", i, err);
   vsi->num_rx_queues = i + 1;
   goto fail;
  }
  rx_que->msix = vector;
 }

 bzero(buf, sizeof(buf));

 for (i = 0; i < vsi->shared->isc_ntxqsets; i++, tx_que++) {
  snprintf(buf, sizeof(buf), "txq%d", i);
  iflib_softirq_alloc_generic(ctx,
      &vsi->rx_queues[i % vsi->shared->isc_nrxqsets].que_irq,
      IFLIB_INTR_TX, tx_que, tx_que->txr.me, buf);




  tx_que->msix = (i % vsi->shared->isc_nrxqsets) + 1;
 }

 return (0);
fail:
 iflib_irq_free(ctx, &vsi->irq);
 rx_que = vsi->rx_queues;
 for (int i = 0; i < vsi->num_rx_queues; i++, rx_que++)
  iflib_irq_free(ctx, &rx_que->que_irq);
 return (err);
}
