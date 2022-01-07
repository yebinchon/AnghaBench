
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct al_eth_irq {int requested; int * res; int vector; int cookie; int data; int handler; } ;
struct al_eth_adapter {int flags; int irq_vecs; int dev; struct al_eth_irq* irq_tbl; } ;


 int AL_ETH_FLAG_MSIX_ENABLED ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 unsigned long RF_ACTIVE ;
 unsigned long RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int * bus_alloc_resource_any (int ,int ,int *,unsigned long) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_setup_intr (int ,int *,int,int ,int *,int ,int *) ;
 int bus_teardown_intr (int ,int *,int ) ;
 int device_printf (int ,char*,int ,...) ;
 int device_printf_dbg (int ,char*,int ) ;
 scalar_t__ rman_get_start (int *) ;

__attribute__((used)) static int
al_eth_request_irq(struct al_eth_adapter *adapter)
{
 unsigned long flags;
 struct al_eth_irq *irq;
 int rc = 0, i, v;

 if ((adapter->flags & AL_ETH_FLAG_MSIX_ENABLED) != 0)
  flags = RF_ACTIVE;
 else
  flags = RF_ACTIVE | RF_SHAREABLE;

 for (i = 0; i < adapter->irq_vecs; i++) {
  irq = &adapter->irq_tbl[i];

  if (irq->requested != 0)
   continue;

  irq->res = bus_alloc_resource_any(adapter->dev, SYS_RES_IRQ,
      &irq->vector, flags);
  if (irq->res == ((void*)0)) {
   device_printf(adapter->dev, "could not allocate "
       "irq vector=%d\n", irq->vector);
   rc = ENXIO;
   goto exit_res;
  }

  if ((rc = bus_setup_intr(adapter->dev, irq->res,
      INTR_TYPE_NET | INTR_MPSAFE, irq->handler,
      ((void*)0), irq->data, &irq->cookie)) != 0) {
   device_printf(adapter->dev, "failed to register "
       "interrupt handler for irq %ju: %d\n",
       (uintmax_t)rman_get_start(irq->res), rc);
   goto exit_intr;
  }
  irq->requested = 1;
 }
 goto exit;

exit_intr:
 v = i - 1;
 while (v-- >= 0) {
  int bti;
  irq = &adapter->irq_tbl[v];
  bti = bus_teardown_intr(adapter->dev, irq->res, irq->cookie);
  if (bti != 0) {
   device_printf(adapter->dev, "failed to tear "
       "down irq: %d\n", irq->vector);
  }

  irq->requested = 0;
  device_printf_dbg(adapter->dev, "exit_intr: releasing irq %d\n",
      irq->vector);
 }

exit_res:
 v = i - 1;
 while (v-- >= 0) {
  int brr;
  irq = &adapter->irq_tbl[v];
  device_printf_dbg(adapter->dev, "exit_res: releasing resource"
      " for irq %d\n", irq->vector);
  brr = bus_release_resource(adapter->dev, SYS_RES_IRQ,
      irq->vector, irq->res);
  if (brr != 0)
   device_printf(adapter->dev, "dev has no parent while "
       "releasing res for irq: %d\n", irq->vector);
  irq->res = ((void*)0);
 }

exit:
 return (rc);
}
