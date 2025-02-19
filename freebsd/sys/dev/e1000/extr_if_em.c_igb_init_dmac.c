
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_2__ mac; } ;
struct adapter {int dmac; TYPE_1__* shared; struct e1000_hw hw; int dev; } ;
typedef int device_t ;
struct TYPE_3__ {int isc_max_frame_size; } ;


 int E1000_DMACR ;
 int E1000_DMACR_DMACTHR_MASK ;
 int E1000_DMACR_DMACTHR_SHIFT ;
 int E1000_DMACR_DMAC_EN ;
 int E1000_DMACR_DMAC_LX_MASK ;
 int E1000_DMCRTRH ;
 int E1000_DMCTLX ;
 int E1000_DMCTXTH ;
 int E1000_FCRTC ;
 int E1000_FCRTC_RTH_COAL_MASK ;
 int E1000_FCRTC_RTH_COAL_SHIFT ;
 int E1000_PCIEMISC ;
 int E1000_PCIEMISC_LX_DECISION ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_STATUS ;
 int E1000_STATUS_2P5_SKU ;
 int E1000_STATUS_2P5_SKU_OVER ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int IGB_DMCTLX_DCFLUSH_DIS ;
 int IGB_TXPBSIZE ;
 int device_printf (int ,char*) ;
 scalar_t__ e1000_82580 ;
 scalar_t__ e1000_i211 ;
 scalar_t__ e1000_i350 ;
 scalar_t__ e1000_i354 ;

__attribute__((used)) static void
igb_init_dmac(struct adapter *adapter, u32 pba)
{
 device_t dev = adapter->dev;
 struct e1000_hw *hw = &adapter->hw;
 u32 dmac, reg = ~E1000_DMACR_DMAC_EN;
 u16 hwm;
 u16 max_frame_size;

 if (hw->mac.type == e1000_i211)
  return;

 max_frame_size = adapter->shared->isc_max_frame_size;
 if (hw->mac.type > e1000_82580) {

  if (adapter->dmac == 0) {
   E1000_WRITE_REG(hw, E1000_DMACR, reg);
   return;
  } else
   device_printf(dev, "DMA Coalescing enabled\n");


  E1000_WRITE_REG(hw, E1000_DMCTXTH, 0);

  hwm = 64 * pba - max_frame_size / 16;
  if (hwm < 64 * (pba - 6))
   hwm = 64 * (pba - 6);
  reg = E1000_READ_REG(hw, E1000_FCRTC);
  reg &= ~E1000_FCRTC_RTH_COAL_MASK;
  reg |= ((hwm << E1000_FCRTC_RTH_COAL_SHIFT)
      & E1000_FCRTC_RTH_COAL_MASK);
  E1000_WRITE_REG(hw, E1000_FCRTC, reg);


  dmac = pba - max_frame_size / 512;
  if (dmac < pba - 10)
   dmac = pba - 10;
  reg = E1000_READ_REG(hw, E1000_DMACR);
  reg &= ~E1000_DMACR_DMACTHR_MASK;
  reg |= ((dmac << E1000_DMACR_DMACTHR_SHIFT)
      & E1000_DMACR_DMACTHR_MASK);


  reg |= (E1000_DMACR_DMAC_EN | E1000_DMACR_DMAC_LX_MASK);







  if (hw->mac.type == e1000_i354) {
   int status = E1000_READ_REG(hw, E1000_STATUS);
   if ((status & E1000_STATUS_2P5_SKU) &&
       (!(status & E1000_STATUS_2P5_SKU_OVER)))
    reg |= ((adapter->dmac * 5) >> 6);
   else
    reg |= (adapter->dmac >> 5);
  } else {
   reg |= (adapter->dmac >> 5);
  }

  E1000_WRITE_REG(hw, E1000_DMACR, reg);

  E1000_WRITE_REG(hw, E1000_DMCRTRH, 0);


  reg = E1000_READ_REG(hw, E1000_DMCTLX);
  if (hw->mac.type == e1000_i350)
   reg |= IGB_DMCTLX_DCFLUSH_DIS;




  if (hw->mac.type == e1000_i354) {
   int status = E1000_READ_REG(hw, E1000_STATUS);
   if ((status & E1000_STATUS_2P5_SKU) &&
       (!(status & E1000_STATUS_2P5_SKU_OVER)))
    reg |= 0xA;
   else
    reg |= 0x4;
  } else {
   reg |= 0x4;
  }

  E1000_WRITE_REG(hw, E1000_DMCTLX, reg);


  E1000_WRITE_REG(hw, E1000_DMCTXTH, (IGB_TXPBSIZE -
      (2 * max_frame_size)) >> 6);


  reg = E1000_READ_REG(hw, E1000_PCIEMISC);
  reg &= ~E1000_PCIEMISC_LX_DECISION;
  E1000_WRITE_REG(hw, E1000_PCIEMISC, reg);

 } else if (hw->mac.type == e1000_82580) {
  u32 reg = E1000_READ_REG(hw, E1000_PCIEMISC);
  E1000_WRITE_REG(hw, E1000_PCIEMISC,
      reg & ~E1000_PCIEMISC_LX_DECISION);
  E1000_WRITE_REG(hw, E1000_DMACR, 0);
 }
}
