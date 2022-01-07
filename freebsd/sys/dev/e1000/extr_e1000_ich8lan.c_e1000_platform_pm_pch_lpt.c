
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int (* get_link_up_info ) (struct e1000_hw*,int*,int*) ;} ;
struct TYPE_4__ {scalar_t__ max_frame_size; TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ mac; } ;
typedef int s64 ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int DEBUGOUT1 (char*,scalar_t__) ;
 int E1000_DIVIDE_ROUND_UP (int,int) ;
 scalar_t__ E1000_ERR_CONFIG ;
 int E1000_LTRV ;
 int E1000_LTRV_NOSNOOP_SHIFT ;
 int E1000_LTRV_REQ_SHIFT ;
 int E1000_LTRV_SCALE_MAX ;
 int E1000_LTRV_SCALE_SHIFT ;
 int E1000_LTRV_SEND ;
 int E1000_LTRV_VALUE_MASK ;
 int E1000_MAX (int,int) ;
 int E1000_PBA ;
 scalar_t__ E1000_PBA_RXA_MASK ;
 scalar_t__ E1000_PCI_LTR_CAP_LPT ;
 scalar_t__ E1000_READ_REG (struct e1000_hw*,int ) ;
 scalar_t__ E1000_SUCCESS ;
 int E1000_SVCR ;
 int E1000_SVCR_OFF_EN ;
 int E1000_SVCR_OFF_MASKINT ;
 int E1000_SVT ;
 scalar_t__ E1000_SVT_OFF_HWM_MASK ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int e1000_ltr2ns (int) ;
 int e1000_read_pci_cfg (struct e1000_hw*,scalar_t__,int*) ;
 int stub1 (struct e1000_hw*,int*,int*) ;

__attribute__((used)) static s32 e1000_platform_pm_pch_lpt(struct e1000_hw *hw, bool link)
{
 u32 reg = link << (E1000_LTRV_REQ_SHIFT + E1000_LTRV_NOSNOOP_SHIFT) |
    link << E1000_LTRV_REQ_SHIFT | E1000_LTRV_SEND;
 u16 lat_enc = 0;
 s32 obff_hwm = 0;

 DEBUGFUNC("e1000_platform_pm_pch_lpt");

 if (link) {
  u16 speed, duplex, scale = 0;
  u16 max_snoop, max_nosnoop;
  u16 max_ltr_enc;
  s64 lat_ns;
  s64 value;
  u32 rxa;

  if (!hw->mac.max_frame_size) {
   DEBUGOUT("max_frame_size not set.\n");
   return -E1000_ERR_CONFIG;
  }

  hw->mac.ops.get_link_up_info(hw, &speed, &duplex);
  if (!speed) {
   DEBUGOUT("Speed not set.\n");
   return -E1000_ERR_CONFIG;
  }


  rxa = E1000_READ_REG(hw, E1000_PBA) & E1000_PBA_RXA_MASK;
  lat_ns = ((s64)rxa * 1024 -
     (2 * (s64)hw->mac.max_frame_size)) * 8 * 1000;
  if (lat_ns < 0)
   lat_ns = 0;
  else
   lat_ns /= speed;
  value = lat_ns;

  while (value > E1000_LTRV_VALUE_MASK) {
   scale++;
   value = E1000_DIVIDE_ROUND_UP(value, (1 << 5));
  }
  if (scale > E1000_LTRV_SCALE_MAX) {
   DEBUGOUT1("Invalid LTR latency scale %d\n", scale);
   return -E1000_ERR_CONFIG;
  }
  lat_enc = (u16)((scale << E1000_LTRV_SCALE_SHIFT) | value);


  e1000_read_pci_cfg(hw, E1000_PCI_LTR_CAP_LPT, &max_snoop);
  e1000_read_pci_cfg(hw, E1000_PCI_LTR_CAP_LPT + 2, &max_nosnoop);
  max_ltr_enc = E1000_MAX(max_snoop, max_nosnoop);

  if (lat_enc > max_ltr_enc) {
   lat_enc = max_ltr_enc;
   lat_ns = e1000_ltr2ns(max_ltr_enc);
  }

  if (lat_ns) {
   lat_ns *= speed * 1000;
   lat_ns /= 8;
   lat_ns /= 1000000000;
   obff_hwm = (s32)(rxa - lat_ns);
  }
  if ((obff_hwm < 0) || (obff_hwm > E1000_SVT_OFF_HWM_MASK)) {
   DEBUGOUT1("Invalid high water mark %d\n", obff_hwm);
   return -E1000_ERR_CONFIG;
  }
 }


 reg |= lat_enc | (lat_enc << E1000_LTRV_NOSNOOP_SHIFT);
 E1000_WRITE_REG(hw, E1000_LTRV, reg);


 reg = E1000_READ_REG(hw, E1000_SVT) & ~E1000_SVT_OFF_HWM_MASK;
 reg |= obff_hwm;
 E1000_WRITE_REG(hw, E1000_SVT, reg);


 reg = E1000_READ_REG(hw, E1000_SVCR);
 reg |= E1000_SVCR_OFF_EN;




 reg |= E1000_SVCR_OFF_MASKINT;
 E1000_WRITE_REG(hw, E1000_SVCR, reg);

 return E1000_SUCCESS;
}
