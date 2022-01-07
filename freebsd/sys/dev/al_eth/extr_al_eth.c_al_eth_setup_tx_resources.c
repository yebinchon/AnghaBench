
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union al_udma_desc {int dummy; } al_udma_desc ;
struct device {int dummy; } ;
struct al_udma_q_params {int size; int cdesc_size; int * cdesc_base; int * desc_base; int desc_phy_base; int desc_phy_base_map; int desc_phy_base_tag; } ;
struct al_eth_tx_buffer {int dummy; } ;
struct al_eth_ring {int sw_count; int descs_size; int hw_count; scalar_t__ next_to_clean; scalar_t__ next_to_use; TYPE_1__* tx_buffer_info; int dma_buf_tag; void* cmpl_tq; int cmpl_task; void* enqueue_tq; int enqueue_task; int * br; int br_mtx; struct al_udma_q_params q_params; struct device* dev; } ;
struct al_eth_adapter {int dev; scalar_t__ up; struct al_eth_ring* tx_ring; } ;
typedef int bus_dmamap_t ;
typedef int bus_addr_t ;
struct TYPE_2__ {int dma_map; } ;


 int AL_BR_SIZE ;
 int AL_ETH_PKT_MAX_BUFS ;
 int AL_TSO_SIZE ;
 int BUS_SPACE_MAXADDR ;
 int ENOMEM ;
 int MTX_DEF ;
 int M_DEVBUF ;
 int M_IFAL ;
 int M_NOWAIT ;
 int M_WAITOK ;
 int M_ZERO ;
 int PAGE_SIZE ;
 int PI_NET ;
 int PI_REALTIME ;
 int TASK_INIT (int *,int ,int ,struct al_eth_ring*) ;
 int al_dma_alloc_coherent (struct device*,int *,int *,int *,void**,int) ;
 int al_eth_start_xmit ;
 int al_eth_tx_cmpl_work ;
 int * buf_ring_alloc (int ,int ,int,int *) ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_get_dma_tag (struct device*) ;
 int device_get_nameunit (int ) ;
 int device_printf (struct device*,char*,...) ;
 int device_printf_dbg (struct device*,char*,int) ;
 TYPE_1__* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 void* taskqueue_create_fast (char*,int ,int ,void**) ;
 int taskqueue_start_threads (void**,int,int ,char*,int ) ;
 int taskqueue_thread_enqueue ;

__attribute__((used)) static int
al_eth_setup_tx_resources(struct al_eth_adapter *adapter, int qid)
{
 struct al_eth_ring *tx_ring = &adapter->tx_ring[qid];
 struct device *dev = tx_ring->dev;
 struct al_udma_q_params *q_params = &tx_ring->q_params;
 int size;
 int ret;

 if (adapter->up)
  return (0);

 size = sizeof(struct al_eth_tx_buffer) * tx_ring->sw_count;

 tx_ring->tx_buffer_info = malloc(size, M_IFAL, M_ZERO | M_WAITOK);
 if (tx_ring->tx_buffer_info == ((void*)0))
  return (ENOMEM);

 tx_ring->descs_size = tx_ring->hw_count * sizeof(union al_udma_desc);
 q_params->size = tx_ring->hw_count;

 ret = al_dma_alloc_coherent(dev, &q_params->desc_phy_base_tag,
     (bus_dmamap_t *)&q_params->desc_phy_base_map,
     (bus_addr_t *)&q_params->desc_phy_base,
     (void**)&q_params->desc_base, tx_ring->descs_size);
 if (ret != 0) {
  device_printf(dev, "failed to al_dma_alloc_coherent,"
      " ret = %d\n", ret);
  return (ENOMEM);
 }

 if (q_params->desc_base == ((void*)0))
  return (ENOMEM);

 device_printf_dbg(dev, "Initializing ring queues %d\n", qid);


 mtx_init(&tx_ring->br_mtx, "AlRingMtx", ((void*)0), MTX_DEF);
 tx_ring->br = buf_ring_alloc(AL_BR_SIZE, M_DEVBUF, M_WAITOK,
     &tx_ring->br_mtx);
 if (tx_ring->br == ((void*)0)) {
  device_printf(dev, "Critical Failure setting up buf ring\n");
  return (ENOMEM);
 }


 TASK_INIT(&tx_ring->enqueue_task, 0, al_eth_start_xmit, tx_ring);
 tx_ring->enqueue_tq = taskqueue_create_fast("al_tx_enque", M_NOWAIT,
     taskqueue_thread_enqueue, &tx_ring->enqueue_tq);
 taskqueue_start_threads(&tx_ring->enqueue_tq, 1, PI_NET, "%s txeq",
     device_get_nameunit(adapter->dev));
 TASK_INIT(&tx_ring->cmpl_task, 0, al_eth_tx_cmpl_work, tx_ring);
 tx_ring->cmpl_tq = taskqueue_create_fast("al_tx_cmpl", M_NOWAIT,
     taskqueue_thread_enqueue, &tx_ring->cmpl_tq);
 taskqueue_start_threads(&tx_ring->cmpl_tq, 1, PI_REALTIME, "%s txcq",
     device_get_nameunit(adapter->dev));


 ret = bus_dma_tag_create(bus_get_dma_tag(dev),
     1, 0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     AL_TSO_SIZE,
     AL_ETH_PKT_MAX_BUFS,
     PAGE_SIZE,
     0,
     ((void*)0),
     ((void*)0),
     &tx_ring->dma_buf_tag);

 if (ret != 0) {
  device_printf(dev,"Unable to allocate dma_buf_tag, ret = %d\n",
      ret);
  return (ret);
 }

 for (size = 0; size < tx_ring->sw_count; size++) {
  ret = bus_dmamap_create(tx_ring->dma_buf_tag, 0,
      &tx_ring->tx_buffer_info[size].dma_map);
  if (ret != 0) {
   device_printf(dev, "Unable to map DMA TX "
       "buffer memory [iter=%d]\n", size);
   return (ret);
  }
 }


 q_params->cdesc_base = ((void*)0);

 q_params->cdesc_size = 8;
 tx_ring->next_to_use = 0;
 tx_ring->next_to_clean = 0;

 return (0);
}
