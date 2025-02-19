
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_ptt {int dummy; } ;
struct dbg_tools_data {int initialized; int* mode_enable; scalar_t__ num_regs_read; int use_dmae; void* platform_id; int chip_id; } ;
struct ecore_hwfn {int p_dev; struct dbg_tools_data dbg_info; } ;
typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;


 int CHIP_BB ;
 int CHIP_E5 ;
 int CHIP_K2 ;
 scalar_t__ CHIP_REV_IS_ASIC (int ) ;
 scalar_t__ CHIP_REV_IS_EMUL (int ) ;
 scalar_t__ CHIP_REV_IS_FPGA (int ) ;
 int DBG_STATUS_APP_VERSION_NOT_SET ;
 int DBG_STATUS_OK ;
 int DBG_STATUS_UNKNOWN_CHIP ;
 scalar_t__ ECORE_IS_BB_B0 (int ) ;
 scalar_t__ ECORE_IS_E5 (int ) ;
 scalar_t__ ECORE_IS_K2 (int ) ;
 int MISCS_REG_ECO_RESERVED ;
 size_t MODE_ASIC ;
 size_t MODE_BB ;
 size_t MODE_E5 ;
 size_t MODE_EMUL_FULL ;
 size_t MODE_EMUL_REDUCED ;
 size_t MODE_FPGA ;
 size_t MODE_K2 ;
 void* PLATFORM_ASIC ;
 void* PLATFORM_EMUL_FULL ;
 void* PLATFORM_EMUL_REDUCED ;
 void* PLATFORM_FPGA ;
 int USE_DMAE ;
 int ecore_dbg_grc_init_params (struct ecore_hwfn*) ;
 int ecore_rd (struct ecore_hwfn*,struct ecore_ptt*,int ) ;
 int s_app_ver ;

__attribute__((used)) static enum dbg_status ecore_dbg_dev_init(struct ecore_hwfn *p_hwfn,
            struct ecore_ptt *p_ptt)
{
 struct dbg_tools_data *dev_data = &p_hwfn->dbg_info;

 if (dev_data->initialized)
  return DBG_STATUS_OK;

 if (!s_app_ver)
  return DBG_STATUS_APP_VERSION_NOT_SET;

 if (ECORE_IS_E5(p_hwfn->p_dev)) {
  dev_data->chip_id = CHIP_E5;
  dev_data->mode_enable[MODE_E5] = 1;
 }
 else if (ECORE_IS_K2(p_hwfn->p_dev)) {
  dev_data->chip_id = CHIP_K2;
  dev_data->mode_enable[MODE_K2] = 1;
 }
 else if (ECORE_IS_BB_B0(p_hwfn->p_dev)) {
  dev_data->chip_id = CHIP_BB;
  dev_data->mode_enable[MODE_BB] = 1;
 }
 else {
  return DBG_STATUS_UNKNOWN_CHIP;
 }





 if (CHIP_REV_IS_ASIC(p_hwfn->p_dev)) {
  dev_data->platform_id = PLATFORM_ASIC;
  dev_data->mode_enable[MODE_ASIC] = 1;
 }
 else if (CHIP_REV_IS_EMUL(p_hwfn->p_dev)) {
  if (ecore_rd(p_hwfn, p_ptt, MISCS_REG_ECO_RESERVED) & 0x20000000) {
   dev_data->platform_id = PLATFORM_EMUL_FULL;
   dev_data->mode_enable[MODE_EMUL_FULL] = 1;
  }
  else {
   dev_data->platform_id = PLATFORM_EMUL_REDUCED;
   dev_data->mode_enable[MODE_EMUL_REDUCED] = 1;
  }
 }
 else if (CHIP_REV_IS_FPGA(p_hwfn->p_dev)) {
  dev_data->platform_id = PLATFORM_FPGA;
  dev_data->mode_enable[MODE_FPGA] = 1;
 }
 else {
  return DBG_STATUS_UNKNOWN_CHIP;
 }



 ecore_dbg_grc_init_params(p_hwfn);

 dev_data->use_dmae = USE_DMAE;
 dev_data->num_regs_read = 0;
 dev_data->initialized = 1;

 return DBG_STATUS_OK;
}
