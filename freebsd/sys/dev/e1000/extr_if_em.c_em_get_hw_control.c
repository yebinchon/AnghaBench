
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_5__ {TYPE_1__ mac; } ;
struct adapter {TYPE_2__ hw; scalar_t__ vf_ifp; } ;


 int E1000_CTRL_EXT ;
 int E1000_CTRL_EXT_DRV_LOAD ;
 int E1000_READ_REG (TYPE_2__*,int ) ;
 int E1000_SWSM ;
 int E1000_SWSM_DRV_LOAD ;
 int E1000_WRITE_REG (TYPE_2__*,int ,int) ;
 scalar_t__ e1000_82573 ;

__attribute__((used)) static void
em_get_hw_control(struct adapter *adapter)
{
 u32 ctrl_ext, swsm;

 if (adapter->vf_ifp)
  return;

 if (adapter->hw.mac.type == e1000_82573) {
  swsm = E1000_READ_REG(&adapter->hw, E1000_SWSM);
  E1000_WRITE_REG(&adapter->hw, E1000_SWSM,
      swsm | E1000_SWSM_DRV_LOAD);
  return;
 }

 ctrl_ext = E1000_READ_REG(&adapter->hw, E1000_CTRL_EXT);
 E1000_WRITE_REG(&adapter->hw, E1000_CTRL_EXT,
     ctrl_ext | E1000_CTRL_EXT_DRV_LOAD);
}
