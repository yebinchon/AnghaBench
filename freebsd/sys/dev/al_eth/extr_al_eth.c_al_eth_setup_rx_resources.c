
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union al_udma_desc {int dummy; } al_udma_desc ;
struct device {int dummy; } ;
struct al_udma_q_params {int size; int cdesc_size; int * cdesc_base; int cdesc_phy_base; int cdesc_phy_base_map; int cdesc_phy_base_tag; int * desc_base; int desc_phy_base; int desc_phy_base_map; int desc_phy_base_tag; } ;
struct al_eth_rx_buffer {int dummy; } ;
struct TYPE_5__ {TYPE_1__* ifp; } ;
struct al_eth_ring {int sw_count; int descs_size; int hw_count; int cdescs_size; scalar_t__ next_to_use; scalar_t__ next_to_clean; TYPE_2__ lro; int lro_enabled; TYPE_3__* rx_buffer_info; int dma_buf_tag; int enqueue_tq; int enqueue_task; struct al_udma_q_params q_params; struct device* dev; } ;
struct al_eth_adapter {TYPE_1__* netdev; int dev; struct al_eth_ring* rx_ring; } ;
typedef int bus_addr_t ;
struct TYPE_6__ {int dma_map; } ;
struct TYPE_4__ {int if_capenable; } ;


 int AL_TSO_SIZE ;
 int BUS_SPACE_MAXADDR ;
 int ENOMEM ;
 int IFCAP_LRO ;
 int M_IFAL ;
 int M_NOWAIT ;
 int M_WAITOK ;
 int M_ZERO ;
 int PI_NET ;
 int TASK_INIT (int *,int ,int ,struct al_eth_ring*) ;
 int TRUE ;
 int al_dma_alloc_coherent (struct device*,int *,int *,int *,void**,int) ;
 int al_eth_rx_recv_work ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_get_dma_tag (struct device*) ;
 int device_get_nameunit (int ) ;
 int device_printf (int ,char*,...) ;
 int device_printf_dbg (int ,char*,unsigned int) ;
 TYPE_3__* malloc (int,int ,int) ;
 int memset (int *,int ,int) ;
 int taskqueue_create_fast (char*,int ,int ,int *) ;
 int taskqueue_start_threads (int *,int,int ,char*,int ) ;
 int taskqueue_thread_enqueue ;
 int tcp_lro_init (TYPE_2__*) ;

__attribute__((used)) static int
al_eth_setup_rx_resources(struct al_eth_adapter *adapter, unsigned int qid)
{
 struct al_eth_ring *rx_ring = &adapter->rx_ring[qid];
 struct device *dev = rx_ring->dev;
 struct al_udma_q_params *q_params = &rx_ring->q_params;
 int size;
 int ret;

 size = sizeof(struct al_eth_rx_buffer) * rx_ring->sw_count;


 size += 1;

 rx_ring->rx_buffer_info = malloc(size, M_IFAL, M_ZERO | M_WAITOK);
 if (rx_ring->rx_buffer_info == ((void*)0))
  return (ENOMEM);

 rx_ring->descs_size = rx_ring->hw_count * sizeof(union al_udma_desc);
 q_params->size = rx_ring->hw_count;

 ret = al_dma_alloc_coherent(dev, &q_params->desc_phy_base_tag,
     &q_params->desc_phy_base_map,
     (bus_addr_t *)&q_params->desc_phy_base,
     (void**)&q_params->desc_base, rx_ring->descs_size);

 if ((q_params->desc_base == ((void*)0)) || (ret != 0))
  return (ENOMEM);


 q_params->cdesc_size = 16;
 rx_ring->cdescs_size = rx_ring->hw_count * q_params->cdesc_size;
 ret = al_dma_alloc_coherent(dev, &q_params->cdesc_phy_base_tag,
     &q_params->cdesc_phy_base_map,
     (bus_addr_t *)&q_params->cdesc_phy_base,
     (void**)&q_params->cdesc_base, rx_ring->cdescs_size);

 if ((q_params->cdesc_base == ((void*)0)) || (ret != 0))
  return (ENOMEM);


 TASK_INIT(&rx_ring->enqueue_task, 0, al_eth_rx_recv_work, rx_ring);
 rx_ring->enqueue_tq = taskqueue_create_fast("al_rx_enque", M_NOWAIT,
     taskqueue_thread_enqueue, &rx_ring->enqueue_tq);
 taskqueue_start_threads(&rx_ring->enqueue_tq, 1, PI_NET, "%s rxeq",
     device_get_nameunit(adapter->dev));


 ret = bus_dma_tag_create(bus_get_dma_tag(dev),
     1, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     AL_TSO_SIZE,
     1,
     AL_TSO_SIZE,
     0,
     ((void*)0),
     ((void*)0),
     &rx_ring->dma_buf_tag);

 if (ret != 0) {
  device_printf(dev,"Unable to allocate RX dma_buf_tag\n");
  return (ret);
 }

 for (size = 0; size < rx_ring->sw_count; size++) {
  ret = bus_dmamap_create(rx_ring->dma_buf_tag, 0,
      &rx_ring->rx_buffer_info[size].dma_map);
  if (ret != 0) {
   device_printf(dev,"Unable to map DMA RX buffer memory\n");
   return (ret);
  }
 }


 memset(q_params->cdesc_base, 0, rx_ring->cdescs_size);


 if ((adapter->netdev->if_capenable & IFCAP_LRO) != 0) {
  int err = tcp_lro_init(&rx_ring->lro);
  if (err != 0) {
   device_printf(adapter->dev,
       "LRO[%d] Initialization failed!\n", qid);
  } else {
   device_printf_dbg(adapter->dev,
       "RX Soft LRO[%d] Initialized\n", qid);
   rx_ring->lro_enabled = TRUE;
   rx_ring->lro.ifp = adapter->netdev;
  }
 }

 rx_ring->next_to_clean = 0;
 rx_ring->next_to_use = 0;

 return (0);
}
