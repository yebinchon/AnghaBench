
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct al_eth_irq {int vector; int * res; } ;
struct al_eth_adapter {int msix_vecs; int irq_vecs; int * msix_entries; int flags; int dev; struct al_eth_irq* irq_tbl; TYPE_1__* netdev; } ;
struct TYPE_2__ {int * rx_cpu_rmap; } ;


 int AL_ETH_FLAG_MSIX_ENABLED ;
 int M_IFAL ;
 int SYS_RES_IRQ ;
 int __al_eth_free_irq (struct al_eth_adapter*) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int device_printf (int ,char*,int ) ;
 int device_printf_dbg (int ,char*,int ) ;
 int free (int *,int ) ;
 int free_irq_cpu_rmap (int *) ;
 int pci_release_msi (int ) ;

__attribute__((used)) static void
al_eth_free_irq(struct al_eth_adapter *adapter)
{
 struct al_eth_irq *irq;
 int i, rc;







 __al_eth_free_irq(adapter);

 for (i = 0; i < adapter->irq_vecs; i++) {
  irq = &adapter->irq_tbl[i];
  if (irq->res == ((void*)0))
   continue;
  device_printf_dbg(adapter->dev, "release resource irq: %d\n",
      irq->vector);
  rc = bus_release_resource(adapter->dev, SYS_RES_IRQ, irq->vector,
      irq->res);
  irq->res = ((void*)0);
  if (rc != 0)
   device_printf(adapter->dev, "dev has no parent while "
       "releasing res for irq: %d\n", irq->vector);
 }

 pci_release_msi(adapter->dev);

 adapter->flags &= ~AL_ETH_FLAG_MSIX_ENABLED;

 adapter->msix_vecs = 0;
 free(adapter->msix_entries, M_IFAL);
 adapter->msix_entries = ((void*)0);
}
