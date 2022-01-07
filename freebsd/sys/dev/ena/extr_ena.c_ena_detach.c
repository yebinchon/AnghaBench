
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ena_stats_dev {int dummy; } ;
struct ena_hw_stats {int dummy; } ;
struct ena_com_dev {struct ena_com_dev* bus; } ;
struct ena_adapter {TYPE_1__* ifp; int ioctl_sx; int global_mtx; int pdev; int dev_stats; int hw_stats; int reset_tq; int reset_task; int timer_service; struct ena_com_dev* ena_dev; } ;
typedef int device_t ;
typedef int counter_u64_t ;
struct TYPE_4__ {int * if_vlantrunk; } ;


 int EBUSY ;
 int ENA_FLAG_ISSET (int ,struct ena_adapter*) ;
 int ENA_FLAG_RSS_ACTIVE ;
 int M_DEVBUF ;
 int bus_generic_detach (int ) ;
 int callout_drain (int *) ;
 struct ena_adapter* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int ena_com_delete_host_info (struct ena_com_dev*) ;
 int ena_com_rss_destroy (struct ena_com_dev*) ;
 int ena_destroy_device (struct ena_adapter*,int) ;
 int ena_down (struct ena_adapter*) ;
 int ena_free_all_io_rings_resources (struct ena_adapter*) ;
 int ena_free_counters (int *,int) ;
 int ena_free_irqs (struct ena_adapter*) ;
 int ena_free_pci_resources (struct ena_adapter*) ;
 int ena_free_rx_dma_tag (struct ena_adapter*) ;
 int ena_free_tx_dma_tag (struct ena_adapter*) ;
 int ether_ifdetach (TYPE_1__*) ;
 int free (struct ena_com_dev*,int ) ;
 int if_free (TYPE_1__*) ;
 scalar_t__ likely (int ) ;
 int mtx_destroy (int *) ;
 int netmap_detach (TYPE_1__*) ;
 int sx_destroy (int *) ;
 int sx_unlock (int *) ;
 int sx_xlock (int *) ;
 scalar_t__ taskqueue_cancel (int ,int *,int *) ;
 int taskqueue_drain (int ,int *) ;
 int taskqueue_free (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
ena_detach(device_t pdev)
{
 struct ena_adapter *adapter = device_get_softc(pdev);
 struct ena_com_dev *ena_dev = adapter->ena_dev;
 int rc;


 if (adapter->ifp->if_vlantrunk != ((void*)0)) {
  device_printf(adapter->pdev ,"VLAN is in use, detach first\n");
  return (EBUSY);
 }

 ether_ifdetach(adapter->ifp);


 callout_drain(&adapter->timer_service);
 while (taskqueue_cancel(adapter->reset_tq, &adapter->reset_task, ((void*)0)))
  taskqueue_drain(adapter->reset_tq, &adapter->reset_task);
 taskqueue_free(adapter->reset_tq);

 sx_xlock(&adapter->ioctl_sx);
 ena_down(adapter);
 ena_destroy_device(adapter, 1);
 sx_unlock(&adapter->ioctl_sx);





 ena_free_all_io_rings_resources(adapter);

 ena_free_counters((counter_u64_t *)&adapter->hw_stats,
     sizeof(struct ena_hw_stats));
 ena_free_counters((counter_u64_t *)&adapter->dev_stats,
     sizeof(struct ena_stats_dev));

 rc = ena_free_rx_dma_tag(adapter);
 if (unlikely(rc != 0))
  device_printf(adapter->pdev,
      "Unmapped RX DMA tag associations\n");

 rc = ena_free_tx_dma_tag(adapter);
 if (unlikely(rc != 0))
  device_printf(adapter->pdev,
      "Unmapped TX DMA tag associations\n");

 ena_free_irqs(adapter);

 ena_free_pci_resources(adapter);

 if (likely(ENA_FLAG_ISSET(ENA_FLAG_RSS_ACTIVE, adapter)))
  ena_com_rss_destroy(ena_dev);

 ena_com_delete_host_info(ena_dev);

 mtx_destroy(&adapter->global_mtx);
 sx_destroy(&adapter->ioctl_sx);

 if_free(adapter->ifp);

 if (ena_dev->bus != ((void*)0))
  free(ena_dev->bus, M_DEVBUF);

 if (ena_dev != ((void*)0))
  free(ena_dev, M_DEVBUF);

 return (bus_generic_detach(pdev));
}
