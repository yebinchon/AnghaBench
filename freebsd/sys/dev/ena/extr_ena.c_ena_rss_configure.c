
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_com_dev {int dummy; } ;
struct ena_adapter {struct ena_com_dev* ena_dev; } ;


 int EOPNOTSUPP ;
 int ena_com_indirect_table_set (struct ena_com_dev*) ;
 int ena_com_set_hash_ctrl (struct ena_com_dev*) ;
 int ena_com_set_hash_function (struct ena_com_dev*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
ena_rss_configure(struct ena_adapter *adapter)
{
 struct ena_com_dev *ena_dev = adapter->ena_dev;
 int rc;


 rc = ena_com_indirect_table_set(ena_dev);
 if (unlikely((rc != 0) && (rc != EOPNOTSUPP)))
  return (rc);


 rc = ena_com_set_hash_function(ena_dev);
 if (unlikely((rc != 0) && (rc != EOPNOTSUPP)))
  return (rc);


 rc = ena_com_set_hash_ctrl(ena_dev);
 if (unlikely((rc != 0) && (rc != EOPNOTSUPP)))
  return (rc);

 return (0);
}
