
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_6__ {scalar_t__ num_arq_entries; scalar_t__ num_asq_entries; scalar_t__ arq_buf_size; scalar_t__ asq_buf_size; int api_maj_ver; int api_min_ver; int arq_spinlock; int asq_spinlock; int fw_build; int fw_min_ver; int fw_maj_ver; int asq_cmd_timeout; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct TYPE_4__ {int version; int eetrack; int oem_ver; } ;
struct i40e_hw {TYPE_3__ aq; int nvmupd_state; int nvm_release_on_done; int flags; TYPE_2__ mac; TYPE_1__ nvm; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int FALSE ;
 int I40E_ASQ_CMD_TIMEOUT ;
 int I40E_ERR_ADMIN_QUEUE_TIMEOUT ;
 int I40E_ERR_CONFIG ;
 int I40E_ERR_FIRMWARE_API_VERSION ;
 int I40E_FW_API_VERSION_MAJOR ;
 int I40E_HW_FLAG_802_1AD_CAPABLE ;
 int I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE ;
 int I40E_HW_FLAG_NVM_READ_REQUIRES_LOCK ;
 scalar_t__ I40E_MAC_XL710 ;
 int I40E_MINOR_VER_GET_LINK_INFO_XL710 ;
 int I40E_NVMUPD_STATE_INIT ;
 int I40E_NVM_OEM_VER_OFF ;
 int I40E_NVM_RESOURCE_ID ;
 int I40E_SR_BOOT_CONFIG_PTR ;
 int I40E_SR_NVM_DEV_STARTER_VERSION ;
 int I40E_SR_NVM_EETRACK_HI ;
 int I40E_SR_NVM_EETRACK_LO ;
 int I40E_SUCCESS ;
 int i40e_adminq_init_regs (struct i40e_hw*) ;
 int i40e_aq_get_firmware_version (struct i40e_hw*,int *,int *,int *,int*,int*,int *) ;
 int i40e_aq_release_resource (struct i40e_hw*,int ,int ,int *) ;
 int i40e_destroy_spinlock (int *) ;
 int i40e_init_arq (struct i40e_hw*) ;
 int i40e_init_asq (struct i40e_hw*) ;
 int i40e_init_spinlock (int *) ;
 scalar_t__ i40e_is_vf (struct i40e_hw*) ;
 int i40e_msec_delay (int) ;
 int i40e_read_nvm_word (struct i40e_hw*,int,int*) ;
 int i40e_resume_aq (struct i40e_hw*) ;
 int i40e_shutdown_arq (struct i40e_hw*) ;
 int i40e_shutdown_asq (struct i40e_hw*) ;

enum i40e_status_code i40e_init_adminq(struct i40e_hw *hw)
{
 u16 cfg_ptr, oem_hi, oem_lo;
 u16 eetrack_lo, eetrack_hi;
 enum i40e_status_code ret_code;
 int retry = 0;


 if ((hw->aq.num_arq_entries == 0) ||
     (hw->aq.num_asq_entries == 0) ||
     (hw->aq.arq_buf_size == 0) ||
     (hw->aq.asq_buf_size == 0)) {
  ret_code = I40E_ERR_CONFIG;
  goto init_adminq_exit;
 }
 i40e_init_spinlock(&hw->aq.asq_spinlock);
 i40e_init_spinlock(&hw->aq.arq_spinlock);


 i40e_adminq_init_regs(hw);


 hw->aq.asq_cmd_timeout = I40E_ASQ_CMD_TIMEOUT;


 ret_code = i40e_init_asq(hw);
 if (ret_code != I40E_SUCCESS)
  goto init_adminq_destroy_spinlocks;


 ret_code = i40e_init_arq(hw);
 if (ret_code != I40E_SUCCESS)
  goto init_adminq_free_asq;


 if (i40e_is_vf(hw))
  goto init_adminq_exit;




 do {
  ret_code = i40e_aq_get_firmware_version(hw,
       &hw->aq.fw_maj_ver,
       &hw->aq.fw_min_ver,
       &hw->aq.fw_build,
       &hw->aq.api_maj_ver,
       &hw->aq.api_min_ver,
       ((void*)0));
  if (ret_code != I40E_ERR_ADMIN_QUEUE_TIMEOUT)
   break;
  retry++;
  i40e_msec_delay(100);
  i40e_resume_aq(hw);
 } while (retry < 10);
 if (ret_code != I40E_SUCCESS)
  goto init_adminq_free_arq;


 i40e_read_nvm_word(hw, I40E_SR_NVM_DEV_STARTER_VERSION,
      &hw->nvm.version);
 i40e_read_nvm_word(hw, I40E_SR_NVM_EETRACK_LO, &eetrack_lo);
 i40e_read_nvm_word(hw, I40E_SR_NVM_EETRACK_HI, &eetrack_hi);
 hw->nvm.eetrack = (eetrack_hi << 16) | eetrack_lo;
 i40e_read_nvm_word(hw, I40E_SR_BOOT_CONFIG_PTR, &cfg_ptr);
 i40e_read_nvm_word(hw, (cfg_ptr + I40E_NVM_OEM_VER_OFF),
      &oem_hi);
 i40e_read_nvm_word(hw, (cfg_ptr + (I40E_NVM_OEM_VER_OFF + 1)),
      &oem_lo);
 hw->nvm.oem_ver = ((u32)oem_hi << 16) | oem_lo;


 if ((hw->aq.api_maj_ver > 1) ||
     ((hw->aq.api_maj_ver == 1) &&
      (hw->aq.api_min_ver >= 7)))
  hw->flags |= I40E_HW_FLAG_802_1AD_CAPABLE;

 if (hw->mac.type == I40E_MAC_XL710 &&
     hw->aq.api_maj_ver == I40E_FW_API_VERSION_MAJOR &&
     hw->aq.api_min_ver >= I40E_MINOR_VER_GET_LINK_INFO_XL710) {
  hw->flags |= I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE;
 }


 if ((hw->aq.api_maj_ver > 1) ||
     ((hw->aq.api_maj_ver == 1) &&
      (hw->aq.api_min_ver >= 5)))
  hw->flags |= I40E_HW_FLAG_NVM_READ_REQUIRES_LOCK;

 if (hw->aq.api_maj_ver > I40E_FW_API_VERSION_MAJOR) {
  ret_code = I40E_ERR_FIRMWARE_API_VERSION;
  goto init_adminq_free_arq;
 }


 i40e_aq_release_resource(hw, I40E_NVM_RESOURCE_ID, 0, ((void*)0));
 hw->nvm_release_on_done = FALSE;
 hw->nvmupd_state = I40E_NVMUPD_STATE_INIT;

 ret_code = I40E_SUCCESS;


 goto init_adminq_exit;

init_adminq_free_arq:
 i40e_shutdown_arq(hw);
init_adminq_free_asq:
 i40e_shutdown_asq(hw);
init_adminq_destroy_spinlocks:
 i40e_destroy_spinlock(&hw->aq.asq_spinlock);
 i40e_destroy_spinlock(&hw->aq.arq_spinlock);

init_adminq_exit:
 return ret_code;
}
