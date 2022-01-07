
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ena_llq_configurations {int dummy; } ;
struct ena_com_dev {int supported_features; scalar_t__ tx_mem_queue_type; int mem_bar; } ;
struct ena_admin_feature_llq_desc {int dummy; } ;
struct ena_adapter {int * memory; } ;
typedef int device_t ;


 int ENA_ADMIN_LLQ ;
 scalar_t__ ENA_ADMIN_PLACEMENT_POLICY_HOST ;
 int ENA_MEM_BAR ;
 int PCIR_BAR (int ) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 struct ena_adapter* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int ena_com_config_dev_mode (struct ena_com_dev*,struct ena_admin_feature_llq_desc*,struct ena_llq_configurations*) ;
 int ena_enable_wc (int *) ;
 int rman_get_virtual (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
ena_set_queues_placement_policy(device_t pdev, struct ena_com_dev *ena_dev,
    struct ena_admin_feature_llq_desc *llq,
    struct ena_llq_configurations *llq_default_configurations)
{
 struct ena_adapter *adapter = device_get_softc(pdev);
 int rc, rid;
 uint32_t llq_feature_mask;

 llq_feature_mask = 1 << ENA_ADMIN_LLQ;
 if (!(ena_dev->supported_features & llq_feature_mask)) {
  device_printf(pdev,
      "LLQ is not supported. Fallback to host mode policy.\n");
  ena_dev->tx_mem_queue_type = ENA_ADMIN_PLACEMENT_POLICY_HOST;
  return (0);
 }

 rc = ena_com_config_dev_mode(ena_dev, llq, llq_default_configurations);
 if (unlikely(rc != 0)) {
  device_printf(pdev, "Failed to configure the device mode. "
      "Fallback to host mode policy.\n");
  ena_dev->tx_mem_queue_type = ENA_ADMIN_PLACEMENT_POLICY_HOST;
  return (0);
 }


 if (ena_dev->tx_mem_queue_type == ENA_ADMIN_PLACEMENT_POLICY_HOST)
  return (0);


 rid = PCIR_BAR(ENA_MEM_BAR);
 adapter->memory = bus_alloc_resource_any(pdev, SYS_RES_MEMORY,
     &rid, RF_ACTIVE);
 if (unlikely(adapter->memory == ((void*)0))) {
  device_printf(pdev, "unable to allocate LLQ bar resource. "
      "Fallback to host mode policy.\n");
  ena_dev->tx_mem_queue_type = ENA_ADMIN_PLACEMENT_POLICY_HOST;
  return (0);
 }


 rc = ena_enable_wc(adapter->memory);
 if (unlikely(rc != 0)) {
  device_printf(pdev, "failed to enable write combining.\n");
  return (rc);
 }





 ena_dev->mem_bar = rman_get_virtual(adapter->memory);

 return (0);
}
