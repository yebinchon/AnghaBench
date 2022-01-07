
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int init_params; } ;
struct TYPE_12__ {TYPE_5__ ops; } ;
struct TYPE_7__ {int init_params; } ;
struct TYPE_10__ {int type; TYPE_1__ ops; } ;
struct TYPE_8__ {int init_params; } ;
struct TYPE_9__ {TYPE_2__ ops; } ;
struct e1000_hw {TYPE_6__ phy; TYPE_4__ mac; TYPE_3__ nvm; } ;


 int DEBUGFUNC (char*) ;



 int e1000_init_mac_params_ich8lan ;
 int e1000_init_nvm_params_ich8lan ;
 int e1000_init_phy_params_ich8lan ;
 int e1000_init_phy_params_pchlan ;






void e1000_init_function_pointers_ich8lan(struct e1000_hw *hw)
{
 DEBUGFUNC("e1000_init_function_pointers_ich8lan");

 hw->mac.ops.init_params = e1000_init_mac_params_ich8lan;
 hw->nvm.ops.init_params = e1000_init_nvm_params_ich8lan;
 switch (hw->mac.type) {
 case 134:
 case 133:
 case 135:
  hw->phy.ops.init_params = e1000_init_phy_params_ich8lan;
  break;
 case 128:
 case 132:
 case 130:
 case 129:
 case 131:
  hw->phy.ops.init_params = e1000_init_phy_params_pchlan;
  break;
 default:
  break;
 }
}
