
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptnet_softc {int num_rings; int num_tx_rings; int dev; struct ptnet_queue* queues; int * msix_mem; } ;
struct ptnet_queue {int taskq; int task; int * irq; int cookie; } ;
typedef int device_t ;


 int CPU_FIRST () ;
 int CPU_NEXT (int) ;
 int ENOSPC ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int M_NOWAIT ;
 int PCIR_BAR (int ) ;
 int PCIY_MSIX ;
 int PI_NET ;
 int PTNETMAP_MSIX_PCI_BAR ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int TASK_INIT (int *,int ,void (*) (void*,int),struct ptnet_queue*) ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_bind_intr (int ,int *,int) ;
 int bus_describe_intr (int ,int *,int ,char*,int) ;
 int bus_setup_intr (int ,int *,int,int *,void (*) (void*),struct ptnet_queue*,int *) ;
 int device_get_nameunit (int ) ;
 int device_printf (int ,char*,...) ;
 int pci_alloc_msix (int ,int*) ;
 scalar_t__ pci_find_cap (int ,int ,int *) ;
 int pci_msix_count (int ) ;
 int ptnet_irqs_fini (struct ptnet_softc*) ;
 void ptnet_rx_intr (void*) ;
 void ptnet_rx_task (void*,int) ;
 void ptnet_tx_intr (void*) ;
 void ptnet_tx_task (void*,int) ;
 int taskqueue_create_fast (char*,int ,int ,int *) ;
 int taskqueue_start_threads (int *,int,int ,char*,int ,int) ;
 int taskqueue_thread_enqueue ;

__attribute__((used)) static int
ptnet_irqs_init(struct ptnet_softc *sc)
{
 int rid = PCIR_BAR(PTNETMAP_MSIX_PCI_BAR);
 int nvecs = sc->num_rings;
 device_t dev = sc->dev;
 int err = ENOSPC;
 int cpu_cur;
 int i;

 if (pci_find_cap(dev, PCIY_MSIX, ((void*)0)) != 0) {
  device_printf(dev, "Could not find MSI-X capability\n");
  return (ENXIO);
 }

 sc->msix_mem = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
           &rid, RF_ACTIVE);
 if (sc->msix_mem == ((void*)0)) {
  device_printf(dev, "Failed to allocate MSIX PCI BAR\n");
  return (ENXIO);
 }

 if (pci_msix_count(dev) < nvecs) {
  device_printf(dev, "Not enough MSI-X vectors\n");
  goto err_path;
 }

 err = pci_alloc_msix(dev, &nvecs);
 if (err) {
  device_printf(dev, "Failed to allocate MSI-X vectors\n");
  goto err_path;
 }

 for (i = 0; i < nvecs; i++) {
  struct ptnet_queue *pq = sc->queues + i;

  rid = i + 1;
  pq->irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
       RF_ACTIVE);
  if (pq->irq == ((void*)0)) {
   device_printf(dev, "Failed to allocate interrupt "
        "for queue #%d\n", i);
   err = ENOSPC;
   goto err_path;
  }
 }

 cpu_cur = CPU_FIRST();
 for (i = 0; i < nvecs; i++) {
  struct ptnet_queue *pq = sc->queues + i;
  void (*handler)(void *) = ptnet_tx_intr;

  if (i >= sc->num_tx_rings) {
   handler = ptnet_rx_intr;
  }
  err = bus_setup_intr(dev, pq->irq, INTR_TYPE_NET | INTR_MPSAFE,
         ((void*)0) , handler,
         pq, &pq->cookie);
  if (err) {
   device_printf(dev, "Failed to register intr handler "
        "for queue #%d\n", i);
   goto err_path;
  }

  bus_describe_intr(dev, pq->irq, pq->cookie, "q%d", i);



  cpu_cur = CPU_NEXT(cpu_cur);
 }

 device_printf(dev, "Allocated %d MSI-X vectors\n", nvecs);

 cpu_cur = CPU_FIRST();
 for (i = 0; i < nvecs; i++) {
  struct ptnet_queue *pq = sc->queues + i;
  static void (*handler)(void *context, int pending);

  handler = (i < sc->num_tx_rings) ? ptnet_tx_task : ptnet_rx_task;

  TASK_INIT(&pq->task, 0, handler, pq);
  pq->taskq = taskqueue_create_fast("ptnet_queue", M_NOWAIT,
     taskqueue_thread_enqueue, &pq->taskq);
  taskqueue_start_threads(&pq->taskq, 1, PI_NET, "%s-pq-%d",
     device_get_nameunit(sc->dev), cpu_cur);
  cpu_cur = CPU_NEXT(cpu_cur);
 }

 return 0;
err_path:
 ptnet_irqs_fini(sc);
 return err;
}
