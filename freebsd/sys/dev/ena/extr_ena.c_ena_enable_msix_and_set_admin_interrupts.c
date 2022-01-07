
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_com_dev {int dummy; } ;
struct ena_adapter {int pdev; struct ena_com_dev* ena_dev; } ;


 int device_printf (int ,char*) ;
 int ena_com_admin_aenq_enable (struct ena_com_dev*) ;
 int ena_com_set_admin_polling_mode (struct ena_com_dev*,int) ;
 int ena_disable_msix (struct ena_adapter*) ;
 int ena_enable_msix (struct ena_adapter*) ;
 int ena_request_mgmnt_irq (struct ena_adapter*) ;
 int ena_setup_mgmnt_intr (struct ena_adapter*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ena_enable_msix_and_set_admin_interrupts(struct ena_adapter *adapter,
    int io_vectors)
{
 struct ena_com_dev *ena_dev = adapter->ena_dev;
 int rc;

 rc = ena_enable_msix(adapter);
 if (unlikely(rc != 0)) {
  device_printf(adapter->pdev, "Error with MSI-X enablement\n");
  return (rc);
 }

 ena_setup_mgmnt_intr(adapter);

 rc = ena_request_mgmnt_irq(adapter);
 if (unlikely(rc != 0)) {
  device_printf(adapter->pdev, "Cannot setup mgmnt queue intr\n");
  goto err_disable_msix;
 }

 ena_com_set_admin_polling_mode(ena_dev, 0);

 ena_com_admin_aenq_enable(ena_dev);

 return (0);

err_disable_msix:
 ena_disable_msix(adapter);

 return (rc);
}
