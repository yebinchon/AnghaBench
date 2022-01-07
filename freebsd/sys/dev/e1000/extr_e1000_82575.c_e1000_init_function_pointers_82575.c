
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_15__ {int init_params; } ;
struct TYPE_16__ {TYPE_7__ ops; } ;
struct TYPE_13__ {int init_params; } ;
struct TYPE_14__ {TYPE_5__ ops; } ;
struct TYPE_11__ {int init_params; } ;
struct TYPE_12__ {TYPE_3__ ops; } ;
struct TYPE_9__ {int init_params; } ;
struct TYPE_10__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_8__ mbx; TYPE_6__ phy; TYPE_4__ nvm; TYPE_2__ mac; } ;


 int DEBUGFUNC (char*) ;
 int e1000_init_mac_params_82575 ;
 int e1000_init_mbx_params_pf ;
 int e1000_init_nvm_params_82575 ;
 int e1000_init_phy_params_82575 ;

void e1000_init_function_pointers_82575(struct e1000_hw *hw)
{
 DEBUGFUNC("e1000_init_function_pointers_82575");

 hw->mac.ops.init_params = e1000_init_mac_params_82575;
 hw->nvm.ops.init_params = e1000_init_nvm_params_82575;
 hw->phy.ops.init_params = e1000_init_phy_params_82575;
 hw->mbx.ops.init_params = e1000_init_mbx_params_pf;
}
