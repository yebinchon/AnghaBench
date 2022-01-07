
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_adapter {int ena_dev; } ;


 int ENA_FLAG_DEVICE_RUNNING ;
 int ENA_FLAG_ISSET (int ,struct ena_adapter*) ;
 int ena_com_admin_q_comp_intr_handler (int ) ;
 int ena_com_aenq_intr_handler (int ,void*) ;
 scalar_t__ likely (int ) ;

__attribute__((used)) static void
ena_intr_msix_mgmnt(void *arg)
{
 struct ena_adapter *adapter = (struct ena_adapter *)arg;

 ena_com_admin_q_comp_intr_handler(adapter->ena_dev);
 if (likely(ENA_FLAG_ISSET(ENA_FLAG_DEVICE_RUNNING, adapter)))
  ena_com_aenq_intr_handler(adapter->ena_dev, arg);
}
