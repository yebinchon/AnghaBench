
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int func; } ;
struct TYPE_4__ {int type; } ;
struct TYPE_6__ {int device_id; TYPE_2__ bus; TYPE_1__ mac; } ;
struct adapter {int feat_cap; int feat_en; int dev; TYPE_3__ hw; } ;


 int IXGBE_DEV_ID_82598AT ;
 int IXGBE_DEV_ID_82599_BYPASS ;
 int IXGBE_DEV_ID_82599_QSFP_SF_QP ;
 int IXGBE_DEV_ID_X540_BYPASS ;
 int IXGBE_DEV_ID_X550EM_A_1G_T ;
 int IXGBE_DEV_ID_X550EM_A_1G_T_L ;
 int IXGBE_FEATURE_BYPASS ;
 int IXGBE_FEATURE_EEE ;
 int IXGBE_FEATURE_FAN_FAIL ;
 int IXGBE_FEATURE_FDIR ;
 int IXGBE_FEATURE_LEGACY_IRQ ;
 int IXGBE_FEATURE_MSI ;
 int IXGBE_FEATURE_MSIX ;
 int IXGBE_FEATURE_NETMAP ;
 int IXGBE_FEATURE_RSS ;
 int IXGBE_FEATURE_SRIOV ;
 int IXGBE_FEATURE_TEMP_SENSOR ;
 int device_printf (int ,char*) ;
 scalar_t__ ixgbe_enable_fdir ;
 int ixgbe_enable_msix ;
 scalar_t__ ixgbe_enable_rss ;







__attribute__((used)) static void
ixgbe_init_device_features(struct adapter *adapter)
{
 adapter->feat_cap = IXGBE_FEATURE_NETMAP
                   | IXGBE_FEATURE_RSS
                   | IXGBE_FEATURE_MSI
                   | IXGBE_FEATURE_MSIX
                   | IXGBE_FEATURE_LEGACY_IRQ;


 switch (adapter->hw.mac.type) {
 case 133:
  if (adapter->hw.device_id == IXGBE_DEV_ID_82598AT)
   adapter->feat_cap |= IXGBE_FEATURE_FAN_FAIL;
  break;
 case 131:
  adapter->feat_cap |= IXGBE_FEATURE_SRIOV;
  adapter->feat_cap |= IXGBE_FEATURE_FDIR;
  if ((adapter->hw.device_id == IXGBE_DEV_ID_X540_BYPASS) &&
      (adapter->hw.bus.func == 0))
   adapter->feat_cap |= IXGBE_FEATURE_BYPASS;
  break;
 case 130:
  adapter->feat_cap |= IXGBE_FEATURE_TEMP_SENSOR;
  adapter->feat_cap |= IXGBE_FEATURE_SRIOV;
  adapter->feat_cap |= IXGBE_FEATURE_FDIR;
  break;
 case 128:
  adapter->feat_cap |= IXGBE_FEATURE_SRIOV;
  adapter->feat_cap |= IXGBE_FEATURE_FDIR;
  break;
 case 129:
  adapter->feat_cap |= IXGBE_FEATURE_SRIOV;
  adapter->feat_cap |= IXGBE_FEATURE_FDIR;
  adapter->feat_cap &= ~IXGBE_FEATURE_LEGACY_IRQ;
  if ((adapter->hw.device_id == IXGBE_DEV_ID_X550EM_A_1G_T) ||
      (adapter->hw.device_id == IXGBE_DEV_ID_X550EM_A_1G_T_L)) {
   adapter->feat_cap |= IXGBE_FEATURE_TEMP_SENSOR;
   adapter->feat_cap |= IXGBE_FEATURE_EEE;
  }
  break;
 case 132:
  adapter->feat_cap |= IXGBE_FEATURE_SRIOV;
  adapter->feat_cap |= IXGBE_FEATURE_FDIR;
  if ((adapter->hw.device_id == IXGBE_DEV_ID_82599_BYPASS) &&
      (adapter->hw.bus.func == 0))
   adapter->feat_cap |= IXGBE_FEATURE_BYPASS;
  if (adapter->hw.device_id == IXGBE_DEV_ID_82599_QSFP_SF_QP)
   adapter->feat_cap &= ~IXGBE_FEATURE_LEGACY_IRQ;
  break;
 default:
  break;
 }



 if (adapter->feat_cap & IXGBE_FEATURE_FAN_FAIL)
  adapter->feat_en |= IXGBE_FEATURE_FAN_FAIL;

 if (adapter->feat_cap & IXGBE_FEATURE_NETMAP)
  adapter->feat_en |= IXGBE_FEATURE_NETMAP;

 if (adapter->feat_cap & IXGBE_FEATURE_EEE)
  adapter->feat_en |= IXGBE_FEATURE_EEE;

 if (adapter->feat_cap & IXGBE_FEATURE_TEMP_SENSOR)
  adapter->feat_en |= IXGBE_FEATURE_TEMP_SENSOR;



 if (ixgbe_enable_fdir) {
  if (adapter->feat_cap & IXGBE_FEATURE_FDIR)
   adapter->feat_en |= IXGBE_FEATURE_FDIR;
  else
   device_printf(adapter->dev, "Device does not support Flow Director. Leaving disabled.");
 }




 if (!ixgbe_enable_msix)
  adapter->feat_cap &= ~IXGBE_FEATURE_MSIX;

 if ((adapter->feat_cap & IXGBE_FEATURE_RSS) && ixgbe_enable_rss)
  adapter->feat_en |= IXGBE_FEATURE_RSS;



 if (!(adapter->feat_cap & IXGBE_FEATURE_MSIX)) {
  adapter->feat_cap &= ~IXGBE_FEATURE_RSS;
  adapter->feat_cap &= ~IXGBE_FEATURE_SRIOV;
  adapter->feat_en &= ~IXGBE_FEATURE_RSS;
  adapter->feat_en &= ~IXGBE_FEATURE_SRIOV;
 }
}
