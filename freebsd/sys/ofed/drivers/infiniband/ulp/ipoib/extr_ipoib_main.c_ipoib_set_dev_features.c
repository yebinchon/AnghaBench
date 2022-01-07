
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipoib_dev_priv {int hca_caps; TYPE_1__* dev; int flags; } ;
struct ib_device_attr {int device_cap_flags; } ;
struct ib_device {struct ib_device_attr attrs; } ;
struct TYPE_2__ {int if_hwassist; int if_capabilities; int features; int if_capenable; } ;


 int CSUM_IP ;
 int CSUM_TCP ;
 int CSUM_TSO ;
 int CSUM_UDP ;
 int IB_DEVICE_UD_IP_CSUM ;
 int IB_DEVICE_UD_TSO ;
 int IFCAP_HWCSUM ;
 int IFCAP_LINKSTATE ;
 int IFCAP_TSO4 ;
 int IFCAP_VLAN_HWCSUM ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFCAP_VLAN_MTU ;
 int IPOIB_FLAG_CSUM ;
 int NETIF_F_SG ;
 int set_bit (int ,int *) ;

int
ipoib_set_dev_features(struct ipoib_dev_priv *priv, struct ib_device *hca)
{
 struct ib_device_attr *device_attr = &hca->attrs;

 priv->hca_caps = device_attr->device_cap_flags;

 priv->dev->if_hwassist = 0;
 priv->dev->if_capabilities = 0;


 if (priv->hca_caps & IB_DEVICE_UD_IP_CSUM) {
  set_bit(IPOIB_FLAG_CSUM, &priv->flags);
  priv->dev->if_hwassist = CSUM_IP | CSUM_TCP | CSUM_UDP;
  priv->dev->if_capabilities = IFCAP_HWCSUM | IFCAP_VLAN_HWCSUM;
 }
 priv->dev->if_capabilities |=
     IFCAP_VLAN_HWTAGGING | IFCAP_VLAN_MTU | IFCAP_LINKSTATE;
 priv->dev->if_capenable = priv->dev->if_capabilities;

 return 0;
}
