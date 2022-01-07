
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ max_mtu; int mac_addr; } ;
struct ena_com_dev_get_features_ctx {TYPE_1__ dev_attr; } ;
struct ena_adapter {int pdev; int ifp; int mac_addr; } ;


 int EINVAL ;
 int ETHER_ADDR_LEN ;
 int device_printf (int ,char*) ;
 scalar_t__ if_getmtu (int ) ;
 scalar_t__ memcmp (int ,int ,int ) ;

__attribute__((used)) static int
ena_device_validate_params(struct ena_adapter *adapter,
    struct ena_com_dev_get_features_ctx *get_feat_ctx)
{

 if (memcmp(get_feat_ctx->dev_attr.mac_addr, adapter->mac_addr,
     ETHER_ADDR_LEN) != 0) {
  device_printf(adapter->pdev,
      "Error, mac address are different\n");
  return (EINVAL);
 }

 if (get_feat_ctx->dev_attr.max_mtu < if_getmtu(adapter->ifp)) {
  device_printf(adapter->pdev,
      "Error, device max mtu is smaller than ifp MTU\n");
  return (EINVAL);
 }

 return 0;
}
