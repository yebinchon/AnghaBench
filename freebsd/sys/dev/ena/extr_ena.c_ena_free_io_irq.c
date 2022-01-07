
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_irq {int vector; int * res; scalar_t__ requested; int cookie; } ;
struct ena_adapter {int msix_vecs; int pdev; struct ena_irq* irq_tbl; } ;


 int ENA_INFO ;
 int ENA_IOQ ;
 int ENA_IO_IRQ_FIRST_IDX ;
 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int ) ;
 int device_printf (int ,char*,int ) ;
 int ena_trace (int,char*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
ena_free_io_irq(struct ena_adapter *adapter)
{
 struct ena_irq *irq;
 int rc;

 for (int i = ENA_IO_IRQ_FIRST_IDX; i < adapter->msix_vecs; i++) {
  irq = &adapter->irq_tbl[i];
  if (irq->requested) {
   ena_trace(ENA_INFO | ENA_IOQ, "tear down irq: %d\n",
       irq->vector);
   rc = bus_teardown_intr(adapter->pdev, irq->res,
       irq->cookie);
   if (unlikely(rc != 0)) {
    device_printf(adapter->pdev, "failed to tear "
        "down irq: %d\n", irq->vector);
   }
   irq->requested = 0;
  }

  if (irq->res != ((void*)0)) {
   ena_trace(ENA_INFO | ENA_IOQ, "release resource irq: %d\n",
       irq->vector);
   rc = bus_release_resource(adapter->pdev, SYS_RES_IRQ,
       irq->vector, irq->res);
   irq->res = ((void*)0);
   if (unlikely(rc != 0)) {
    device_printf(adapter->pdev, "dev has no parent"
        " while releasing res for irq: %d\n",
        irq->vector);
   }
  }
 }
}
