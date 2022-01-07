
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ena_adapter {TYPE_1__* msix_entries; TYPE_2__* irq_tbl; int pdev; } ;
struct TYPE_4__ {int vector; struct ena_adapter* data; int * handler; int name; } ;
struct TYPE_3__ {int vector; } ;


 int ENA_IRQNAME_SIZE ;
 size_t ENA_MGMNT_IRQ_IDX ;
 char* device_get_nameunit (int ) ;
 int snprintf (int ,int ,char*,char*) ;

__attribute__((used)) static void
ena_setup_mgmnt_intr(struct ena_adapter *adapter)
{

 snprintf(adapter->irq_tbl[ENA_MGMNT_IRQ_IDX].name,
     ENA_IRQNAME_SIZE, "ena-mgmnt@pci:%s",
     device_get_nameunit(adapter->pdev));




 adapter->irq_tbl[ENA_MGMNT_IRQ_IDX].handler = ((void*)0);
 adapter->irq_tbl[ENA_MGMNT_IRQ_IDX].data = adapter;
 adapter->irq_tbl[ENA_MGMNT_IRQ_IDX].vector =
     adapter->msix_entries[ENA_MGMNT_IRQ_IDX].vector;
}
