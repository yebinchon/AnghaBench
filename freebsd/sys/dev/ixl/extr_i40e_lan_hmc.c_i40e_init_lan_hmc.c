
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct TYPE_6__ {scalar_t__ va; } ;
struct TYPE_4__ {int sd_cnt; TYPE_3__ addr; struct i40e_hmc_sd_entry* sd_entry; scalar_t__ ref_cnt; } ;
struct TYPE_5__ {TYPE_1__ sd_table; scalar_t__ first_sd_index; struct i40e_hmc_obj_info* hmc_obj; TYPE_3__ hmc_obj_virt_mem; int hmc_fn_id; int signature; } ;
struct i40e_hw {TYPE_2__ hmc; int pf_id; } ;
struct i40e_hmc_sd_entry {int dummy; } ;
struct i40e_hmc_obj_info {scalar_t__ max_cnt; int cnt; int size; void* base; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 void* BIT_ULL (scalar_t__) ;
 int DEBUGOUT3 (char*,scalar_t__,scalar_t__,int) ;
 int I40E_ERR_INVALID_HMC_OBJ_COUNT ;
 int I40E_GLHMC_FCOEDDPOBJSZ ;
 int I40E_GLHMC_FCOEFMAX ;
 int I40E_GLHMC_FCOEFOBJSZ ;
 int I40E_GLHMC_FCOEMAX ;
 int I40E_GLHMC_LANQMAX ;
 int I40E_GLHMC_LANRXOBJSZ ;
 int I40E_GLHMC_LANTXOBJSZ ;
 int I40E_HMC_DIRECT_BP_SIZE ;
 size_t I40E_HMC_FCOE_CTX ;
 size_t I40E_HMC_FCOE_FILT ;
 int I40E_HMC_INFO_SIGNATURE ;
 size_t I40E_HMC_LAN_FULL ;
 int I40E_HMC_LAN_MAX ;
 size_t I40E_HMC_LAN_RX ;
 size_t I40E_HMC_LAN_TX ;
 int I40E_SUCCESS ;
 void* i40e_align_l2obj_base (void*) ;
 int i40e_allocate_virt_mem (struct i40e_hw*,TYPE_3__*,int) ;
 int i40e_calculate_l2fpm_size (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ rd32 (struct i40e_hw*,int ) ;

enum i40e_status_code i40e_init_lan_hmc(struct i40e_hw *hw, u32 txq_num,
     u32 rxq_num, u32 fcoe_cntx_num,
     u32 fcoe_filt_num)
{
 struct i40e_hmc_obj_info *obj, *full_obj;
 enum i40e_status_code ret_code = I40E_SUCCESS;
 u64 l2fpm_size;
 u32 size_exp;

 hw->hmc.signature = I40E_HMC_INFO_SIGNATURE;
 hw->hmc.hmc_fn_id = hw->pf_id;


 ret_code = i40e_allocate_virt_mem(hw, &hw->hmc.hmc_obj_virt_mem,
   sizeof(struct i40e_hmc_obj_info) * I40E_HMC_LAN_MAX);
 if (ret_code)
  goto init_lan_hmc_out;
 hw->hmc.hmc_obj = (struct i40e_hmc_obj_info *)
     hw->hmc.hmc_obj_virt_mem.va;


 full_obj = &hw->hmc.hmc_obj[I40E_HMC_LAN_FULL];
 full_obj->max_cnt = 0;
 full_obj->cnt = 0;
 full_obj->base = 0;
 full_obj->size = 0;


 obj = &hw->hmc.hmc_obj[I40E_HMC_LAN_TX];
 obj->max_cnt = rd32(hw, I40E_GLHMC_LANQMAX);
 obj->cnt = txq_num;
 obj->base = 0;
 size_exp = rd32(hw, I40E_GLHMC_LANTXOBJSZ);
 obj->size = BIT_ULL(size_exp);


 if (txq_num > obj->max_cnt) {
  ret_code = I40E_ERR_INVALID_HMC_OBJ_COUNT;
  DEBUGOUT3("i40e_init_lan_hmc: Tx context: asks for 0x%x but max allowed is 0x%x, returns error %d\n",
     txq_num, obj->max_cnt, ret_code);
  goto init_lan_hmc_out;
 }


 full_obj->max_cnt += obj->max_cnt;
 full_obj->cnt += obj->cnt;


 obj = &hw->hmc.hmc_obj[I40E_HMC_LAN_RX];
 obj->max_cnt = rd32(hw, I40E_GLHMC_LANQMAX);
 obj->cnt = rxq_num;
 obj->base = hw->hmc.hmc_obj[I40E_HMC_LAN_TX].base +
      (hw->hmc.hmc_obj[I40E_HMC_LAN_TX].cnt *
       hw->hmc.hmc_obj[I40E_HMC_LAN_TX].size);
 obj->base = i40e_align_l2obj_base(obj->base);
 size_exp = rd32(hw, I40E_GLHMC_LANRXOBJSZ);
 obj->size = BIT_ULL(size_exp);


 if (rxq_num > obj->max_cnt) {
  ret_code = I40E_ERR_INVALID_HMC_OBJ_COUNT;
  DEBUGOUT3("i40e_init_lan_hmc: Rx context: asks for 0x%x but max allowed is 0x%x, returns error %d\n",
     rxq_num, obj->max_cnt, ret_code);
  goto init_lan_hmc_out;
 }


 full_obj->max_cnt += obj->max_cnt;
 full_obj->cnt += obj->cnt;


 obj = &hw->hmc.hmc_obj[I40E_HMC_FCOE_CTX];
 obj->max_cnt = rd32(hw, I40E_GLHMC_FCOEMAX);
 obj->cnt = fcoe_cntx_num;
 obj->base = hw->hmc.hmc_obj[I40E_HMC_LAN_RX].base +
      (hw->hmc.hmc_obj[I40E_HMC_LAN_RX].cnt *
       hw->hmc.hmc_obj[I40E_HMC_LAN_RX].size);
 obj->base = i40e_align_l2obj_base(obj->base);
 size_exp = rd32(hw, I40E_GLHMC_FCOEDDPOBJSZ);
 obj->size = BIT_ULL(size_exp);


 if (fcoe_cntx_num > obj->max_cnt) {
  ret_code = I40E_ERR_INVALID_HMC_OBJ_COUNT;
  DEBUGOUT3("i40e_init_lan_hmc: FCoE context: asks for 0x%x but max allowed is 0x%x, returns error %d\n",
     fcoe_cntx_num, obj->max_cnt, ret_code);
  goto init_lan_hmc_out;
 }


 full_obj->max_cnt += obj->max_cnt;
 full_obj->cnt += obj->cnt;


 obj = &hw->hmc.hmc_obj[I40E_HMC_FCOE_FILT];
 obj->max_cnt = rd32(hw, I40E_GLHMC_FCOEFMAX);
 obj->cnt = fcoe_filt_num;
 obj->base = hw->hmc.hmc_obj[I40E_HMC_FCOE_CTX].base +
      (hw->hmc.hmc_obj[I40E_HMC_FCOE_CTX].cnt *
       hw->hmc.hmc_obj[I40E_HMC_FCOE_CTX].size);
 obj->base = i40e_align_l2obj_base(obj->base);
 size_exp = rd32(hw, I40E_GLHMC_FCOEFOBJSZ);
 obj->size = BIT_ULL(size_exp);


 if (fcoe_filt_num > obj->max_cnt) {
  ret_code = I40E_ERR_INVALID_HMC_OBJ_COUNT;
  DEBUGOUT3("i40e_init_lan_hmc: FCoE filter: asks for 0x%x but max allowed is 0x%x, returns error %d\n",
     fcoe_filt_num, obj->max_cnt, ret_code);
  goto init_lan_hmc_out;
 }


 full_obj->max_cnt += obj->max_cnt;
 full_obj->cnt += obj->cnt;

 hw->hmc.first_sd_index = 0;
 hw->hmc.sd_table.ref_cnt = 0;
 l2fpm_size = i40e_calculate_l2fpm_size(txq_num, rxq_num, fcoe_cntx_num,
            fcoe_filt_num);
 if (((void*)0) == hw->hmc.sd_table.sd_entry) {
  hw->hmc.sd_table.sd_cnt = (u32)
       (l2fpm_size + I40E_HMC_DIRECT_BP_SIZE - 1) /
       I40E_HMC_DIRECT_BP_SIZE;


  ret_code = i40e_allocate_virt_mem(hw, &hw->hmc.sd_table.addr,
       (sizeof(struct i40e_hmc_sd_entry) *
       hw->hmc.sd_table.sd_cnt));
  if (ret_code)
   goto init_lan_hmc_out;
  hw->hmc.sd_table.sd_entry =
   (struct i40e_hmc_sd_entry *)hw->hmc.sd_table.addr.va;
 }

 full_obj->size = l2fpm_size;

init_lan_hmc_out:
 return ret_code;
}
