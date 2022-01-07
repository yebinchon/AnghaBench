
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_ring {scalar_t__ empty_rx_queue; struct ena_que* que; int mtx_name; int ring_mtx; int rx_stats; int smoothed_interval; int ring_size; int tx_stats; int buf_ring_size; int br; int tx_mem_queue_type; int tx_max_header_size; } ;
struct ena_que {int id; struct ena_ring* rx_ring; struct ena_ring* tx_ring; struct ena_adapter* adapter; } ;
struct ena_com_dev {int tx_mem_queue_type; int tx_max_header_size; } ;
struct ena_adapter {int num_queues; struct ena_que* que; int pdev; int rx_ring_size; int buf_ring_size; int tx_ring_size; struct ena_ring* rx_ring; struct ena_ring* tx_ring; struct ena_com_dev* ena_dev; } ;
typedef int counter_u64_t ;


 int MTX_DEF ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int buf_ring_alloc (int ,int ,int ,int *) ;
 char* device_get_nameunit (int ) ;
 int ena_alloc_counters (int *,int) ;
 int ena_com_get_nonadaptive_moderation_interval_rx (struct ena_com_dev*) ;
 int ena_com_get_nonadaptive_moderation_interval_tx (struct ena_com_dev*) ;
 int ena_init_io_rings_common (struct ena_adapter*,struct ena_ring*,int) ;
 int mtx_init (int *,int ,int *,int ) ;
 int nitems (int ) ;
 int snprintf (int ,int ,char*,char*,int) ;

__attribute__((used)) static void
ena_init_io_rings(struct ena_adapter *adapter)
{
 struct ena_com_dev *ena_dev;
 struct ena_ring *txr, *rxr;
 struct ena_que *que;
 int i;

 ena_dev = adapter->ena_dev;

 for (i = 0; i < adapter->num_queues; i++) {
  txr = &adapter->tx_ring[i];
  rxr = &adapter->rx_ring[i];


  ena_init_io_rings_common(adapter, txr, i);
  ena_init_io_rings_common(adapter, rxr, i);


  txr->ring_size = adapter->tx_ring_size;
  txr->tx_max_header_size = ena_dev->tx_max_header_size;
  txr->tx_mem_queue_type = ena_dev->tx_mem_queue_type;
  txr->smoothed_interval =
      ena_com_get_nonadaptive_moderation_interval_tx(ena_dev);


  txr->buf_ring_size = adapter->buf_ring_size;
  txr->br = buf_ring_alloc(txr->buf_ring_size, M_DEVBUF,
      M_WAITOK, &txr->ring_mtx);


  ena_alloc_counters((counter_u64_t *)&txr->tx_stats,
      sizeof(txr->tx_stats));


  rxr->ring_size = adapter->rx_ring_size;
  rxr->smoothed_interval =
      ena_com_get_nonadaptive_moderation_interval_rx(ena_dev);


  ena_alloc_counters((counter_u64_t *)&rxr->rx_stats,
      sizeof(rxr->rx_stats));


  snprintf(txr->mtx_name, nitems(txr->mtx_name), "%s:tx(%d)",
      device_get_nameunit(adapter->pdev), i);
  snprintf(rxr->mtx_name, nitems(rxr->mtx_name), "%s:rx(%d)",
      device_get_nameunit(adapter->pdev), i);

  mtx_init(&txr->ring_mtx, txr->mtx_name, ((void*)0), MTX_DEF);

  que = &adapter->que[i];
  que->adapter = adapter;
  que->id = i;
  que->tx_ring = txr;
  que->rx_ring = rxr;

  txr->que = que;
  rxr->que = que;

  rxr->empty_rx_queue = 0;
 }
}
