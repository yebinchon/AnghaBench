
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct adapter {int feat_cap; int feat_en; TYPE_2__ hw; } ;


 int IXGBE_FEATURE_LEGACY_TX ;
 int IXGBE_FEATURE_NEEDS_CTXD ;
 int IXGBE_FEATURE_NETMAP ;
 int IXGBE_FEATURE_RSS ;
 int IXGBE_FEATURE_VF ;






__attribute__((used)) static void
ixv_init_device_features(struct adapter *adapter)
{
 adapter->feat_cap = IXGBE_FEATURE_NETMAP
                   | IXGBE_FEATURE_VF
                   | IXGBE_FEATURE_LEGACY_TX;


 switch (adapter->hw.mac.type) {
 case 132:
  break;
 case 131:
  break;
 case 128:
 case 129:
 case 130:
  adapter->feat_cap |= IXGBE_FEATURE_NEEDS_CTXD;
  adapter->feat_cap |= IXGBE_FEATURE_RSS;
  break;
 default:
  break;
 }



 if (adapter->feat_cap & IXGBE_FEATURE_VF)
  adapter->feat_en |= IXGBE_FEATURE_VF;

 if (adapter->feat_cap & IXGBE_FEATURE_NETMAP)
  adapter->feat_en |= IXGBE_FEATURE_NETMAP;

 if (adapter->feat_cap & IXGBE_FEATURE_RSS)
  adapter->feat_en |= IXGBE_FEATURE_RSS;

 if (adapter->feat_cap & IXGBE_FEATURE_NEEDS_CTXD)
  adapter->feat_en |= IXGBE_FEATURE_NEEDS_CTXD;
}
