
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_com_dev {int dummy; } ;
struct ena_adapter {int num_queues; int pdev; struct ena_com_dev* ena_dev; } ;
typedef int device_t ;


 int ENA_ADMIN_CRC32 ;
 int ENA_HASH_KEY_SIZE ;
 int ENA_IO_RXQ_IDX (int) ;
 int ENA_RX_RSS_TABLE_LOG_SIZE ;
 int ENA_RX_RSS_TABLE_SIZE ;
 int EOPNOTSUPP ;
 int device_printf (int ,char*) ;
 int ena_com_fill_hash_function (struct ena_com_dev*,int ,int *,int ,int) ;
 int ena_com_indirect_table_fill_entry (struct ena_com_dev*,int,int ) ;
 int ena_com_rss_destroy (struct ena_com_dev*) ;
 int ena_com_rss_init (struct ena_com_dev*,int ) ;
 int ena_com_set_default_hash_ctrl (struct ena_com_dev*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
ena_rss_init_default(struct ena_adapter *adapter)
{
 struct ena_com_dev *ena_dev = adapter->ena_dev;
 device_t dev = adapter->pdev;
 int qid, rc, i;

 rc = ena_com_rss_init(ena_dev, ENA_RX_RSS_TABLE_LOG_SIZE);
 if (unlikely(rc != 0)) {
  device_printf(dev, "Cannot init indirect table\n");
  return (rc);
 }

 for (i = 0; i < ENA_RX_RSS_TABLE_SIZE; i++) {
  qid = i % adapter->num_queues;
  rc = ena_com_indirect_table_fill_entry(ena_dev, i,
      ENA_IO_RXQ_IDX(qid));
  if (unlikely((rc != 0) && (rc != EOPNOTSUPP))) {
   device_printf(dev, "Cannot fill indirect table\n");
   goto err_rss_destroy;
  }
 }

 rc = ena_com_fill_hash_function(ena_dev, ENA_ADMIN_CRC32, ((void*)0),
     ENA_HASH_KEY_SIZE, 0xFFFFFFFF);
 if (unlikely((rc != 0) && (rc != EOPNOTSUPP))) {
  device_printf(dev, "Cannot fill hash function\n");
  goto err_rss_destroy;
 }

 rc = ena_com_set_default_hash_ctrl(ena_dev);
 if (unlikely((rc != 0) && (rc != EOPNOTSUPP))) {
  device_printf(dev, "Cannot fill hash control\n");
  goto err_rss_destroy;
 }

 return (0);

err_rss_destroy:
 ena_com_rss_destroy(ena_dev);
 return (rc);
}
