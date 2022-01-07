
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {TYPE_1__* hmc_obj; } ;
struct i40e_hw {TYPE_2__ hmc; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;
typedef enum i40e_hmc_lan_rsrc_type { ____Placeholder_i40e_hmc_lan_rsrc_type } i40e_hmc_lan_rsrc_type ;
struct TYPE_3__ {scalar_t__ size; } ;


 int I40E_DMA_MEM ;
 int I40E_SUCCESS ;
 int i40e_memset (int *,int ,int ,int ) ;

__attribute__((used)) static enum i40e_status_code i40e_clear_hmc_context(struct i40e_hw *hw,
     u8 *context_bytes,
     enum i40e_hmc_lan_rsrc_type hmc_type)
{

 i40e_memset(context_bytes, 0, (u32)hw->hmc.hmc_obj[hmc_type].size,
      I40E_DMA_MEM);

 return I40E_SUCCESS;
}
