
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_adapter {int max_mtu; int pdev; int ena_dev; } ;
typedef int if_t ;


 int EINVAL ;
 int ENA_DBG ;
 int ENA_MIN_MTU ;
 int device_printf (int ,char*,int,...) ;
 int ena_com_set_dev_mtu (int ,int) ;
 int ena_trace (int ,char*,int) ;
 struct ena_adapter* if_getsoftc (int ) ;
 int if_setmtu (int ,int) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static int
ena_change_mtu(if_t ifp, int new_mtu)
{
 struct ena_adapter *adapter = if_getsoftc(ifp);
 int rc;

 if ((new_mtu > adapter->max_mtu) || (new_mtu < ENA_MIN_MTU)) {
  device_printf(adapter->pdev, "Invalid MTU setting. "
      "new_mtu: %d max mtu: %d min mtu: %d\n",
      new_mtu, adapter->max_mtu, ENA_MIN_MTU);
  return (EINVAL);
 }

 rc = ena_com_set_dev_mtu(adapter->ena_dev, new_mtu);
 if (likely(rc == 0)) {
  ena_trace(ENA_DBG, "set MTU to %d\n", new_mtu);
  if_setmtu(ifp, new_mtu);
 } else {
  device_printf(adapter->pdev, "Failed to set MTU to %d\n",
      new_mtu);
 }

 return (rc);
}
