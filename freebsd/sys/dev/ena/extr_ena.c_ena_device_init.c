
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int supported_groups; } ;
struct ena_com_dev_get_features_ctx {TYPE_1__ aenq; } ;
struct ena_com_dev {int dummy; } ;
struct ena_adapter {int dma_width; struct ena_com_dev* ena_dev; } ;
typedef int device_t ;


 int BIT (int ) ;
 int ENA_ADMIN_FATAL_ERROR ;
 int ENA_ADMIN_KEEP_ALIVE ;
 int ENA_ADMIN_LINK_CHANGE ;
 int ENA_ADMIN_NOTIFICATION ;
 int ENA_ADMIN_WARNING ;
 int ENA_MMIO_DISABLE_REG_READ ;
 int ENA_REGS_RESET_NORMAL ;
 int aenq_handlers ;
 int device_printf (int ,char*,...) ;
 int ena_com_admin_destroy (struct ena_com_dev*) ;
 int ena_com_admin_init (struct ena_com_dev*,int *) ;
 int ena_com_delete_host_info (struct ena_com_dev*) ;
 int ena_com_dev_reset (struct ena_com_dev*,int ) ;
 int ena_com_get_dev_attr_feat (struct ena_com_dev*,struct ena_com_dev_get_features_ctx*) ;
 int ena_com_get_dma_width (struct ena_com_dev*) ;
 int ena_com_mmio_reg_read_request_destroy (struct ena_com_dev*) ;
 int ena_com_mmio_reg_read_request_init (struct ena_com_dev*) ;
 int ena_com_set_admin_polling_mode (struct ena_com_dev*,int) ;
 int ena_com_set_aenq_config (struct ena_com_dev*,int) ;
 int ena_com_set_mmio_read_mode (struct ena_com_dev*,int) ;
 int ena_com_validate_version (struct ena_com_dev*) ;
 int ena_config_host_info (struct ena_com_dev*,int ) ;
 int pci_get_revid (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
ena_device_init(struct ena_adapter *adapter, device_t pdev,
    struct ena_com_dev_get_features_ctx *get_feat_ctx, int *wd_active)
{
 struct ena_com_dev* ena_dev = adapter->ena_dev;
 bool readless_supported;
 uint32_t aenq_groups;
 int dma_width;
 int rc;

 rc = ena_com_mmio_reg_read_request_init(ena_dev);
 if (unlikely(rc != 0)) {
  device_printf(pdev, "failed to init mmio read less\n");
  return (rc);
 }





 readless_supported = !(pci_get_revid(pdev) & ENA_MMIO_DISABLE_REG_READ);
 ena_com_set_mmio_read_mode(ena_dev, readless_supported);

 rc = ena_com_dev_reset(ena_dev, ENA_REGS_RESET_NORMAL);
 if (unlikely(rc != 0)) {
  device_printf(pdev, "Can not reset device\n");
  goto err_mmio_read_less;
 }

 rc = ena_com_validate_version(ena_dev);
 if (unlikely(rc != 0)) {
  device_printf(pdev, "device version is too low\n");
  goto err_mmio_read_less;
 }

 dma_width = ena_com_get_dma_width(ena_dev);
 if (unlikely(dma_width < 0)) {
  device_printf(pdev, "Invalid dma width value %d", dma_width);
  rc = dma_width;
  goto err_mmio_read_less;
 }
 adapter->dma_width = dma_width;


 rc = ena_com_admin_init(ena_dev, &aenq_handlers);
 if (unlikely(rc != 0)) {
  device_printf(pdev,
      "Can not initialize ena admin queue with device\n");
  goto err_mmio_read_less;
 }






 ena_com_set_admin_polling_mode(ena_dev, 1);

 ena_config_host_info(ena_dev, pdev);


 rc = ena_com_get_dev_attr_feat(ena_dev, get_feat_ctx);
 if (unlikely(rc != 0)) {
  device_printf(pdev,
      "Cannot get attribute for ena device rc: %d\n", rc);
  goto err_admin_init;
 }

 aenq_groups = BIT(ENA_ADMIN_LINK_CHANGE) |
     BIT(ENA_ADMIN_FATAL_ERROR) |
     BIT(ENA_ADMIN_WARNING) |
     BIT(ENA_ADMIN_NOTIFICATION) |
     BIT(ENA_ADMIN_KEEP_ALIVE);

 aenq_groups &= get_feat_ctx->aenq.supported_groups;
 rc = ena_com_set_aenq_config(ena_dev, aenq_groups);
 if (unlikely(rc != 0)) {
  device_printf(pdev, "Cannot configure aenq groups rc: %d\n", rc);
  goto err_admin_init;
 }

 *wd_active = !!(aenq_groups & BIT(ENA_ADMIN_KEEP_ALIVE));

 return (0);

err_admin_init:
 ena_com_delete_host_info(ena_dev);
 ena_com_admin_destroy(ena_dev);
err_mmio_read_less:
 ena_com_mmio_reg_read_request_destroy(ena_dev);

 return (rc);
}
