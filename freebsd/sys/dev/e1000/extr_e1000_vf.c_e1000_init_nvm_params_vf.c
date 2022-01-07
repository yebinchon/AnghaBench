
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int release; int acquire; } ;
struct TYPE_4__ {TYPE_1__ ops; int type; } ;
struct e1000_hw {TYPE_2__ nvm; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_SUCCESS ;
 int e1000_acquire_vf ;
 int e1000_nvm_none ;
 int e1000_release_vf ;

__attribute__((used)) static s32 e1000_init_nvm_params_vf(struct e1000_hw *hw)
{
 DEBUGFUNC("e1000_init_nvm_params_vf");
 hw->nvm.type = e1000_nvm_none;
 hw->nvm.ops.acquire = e1000_acquire_vf;
 hw->nvm.ops.release = e1000_release_vf;

 return E1000_SUCCESS;
}
