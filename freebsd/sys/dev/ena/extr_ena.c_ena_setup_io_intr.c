
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ena_adapter {int num_queues; TYPE_3__* irq_tbl; TYPE_2__* que; TYPE_1__* msix_entries; int pdev; } ;
struct TYPE_6__ {int cpu; int vector; TYPE_2__* data; int handler; int name; } ;
struct TYPE_5__ {int cpu; } ;
struct TYPE_4__ {int vector; } ;


 int CPU_FIRST () ;
 int CPU_NEXT (int) ;
 int EINVAL ;
 int ENA_INFO ;
 int ENA_IOQ ;
 int ENA_IO_IRQ_IDX (int) ;
 int ENA_IRQNAME_SIZE ;
 char* device_get_nameunit (int ) ;
 int ena_handle_msix ;
 int ena_trace (int,char*,int ) ;
 int snprintf (int ,int ,char*,char*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
ena_setup_io_intr(struct ena_adapter *adapter)
{
 static int last_bind_cpu = -1;
 int irq_idx;

 if (adapter->msix_entries == ((void*)0))
  return (EINVAL);

 for (int i = 0; i < adapter->num_queues; i++) {
  irq_idx = ENA_IO_IRQ_IDX(i);

  snprintf(adapter->irq_tbl[irq_idx].name, ENA_IRQNAME_SIZE,
      "%s-TxRx-%d", device_get_nameunit(adapter->pdev), i);
  adapter->irq_tbl[irq_idx].handler = ena_handle_msix;
  adapter->irq_tbl[irq_idx].data = &adapter->que[i];
  adapter->irq_tbl[irq_idx].vector =
      adapter->msix_entries[irq_idx].vector;
  ena_trace(ENA_INFO | ENA_IOQ, "ena_setup_io_intr vector: %d\n",
      adapter->msix_entries[irq_idx].vector);





  if (unlikely(last_bind_cpu < 0))
   last_bind_cpu = CPU_FIRST();
  adapter->que[i].cpu = adapter->irq_tbl[irq_idx].cpu =
      last_bind_cpu;
  last_bind_cpu = CPU_NEXT(last_bind_cpu);
 }

 return (0);
}
