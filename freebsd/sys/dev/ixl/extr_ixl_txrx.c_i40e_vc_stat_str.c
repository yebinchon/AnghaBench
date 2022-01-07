
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_hw {char const* err_str; } ;
typedef enum virtchnl_status_code { ____Placeholder_virtchnl_status_code } virtchnl_status_code ;
 int snprintf (char const*,int,char*,int) ;

const char *
i40e_vc_stat_str(struct i40e_hw *hw, enum virtchnl_status_code stat_err)
{
 switch (stat_err) {
 case 128:
  return "OK";
 case 133:
  return "VIRTCHNL_ERR_PARAM";
 case 130:
  return "VIRTCHNL_STATUS_ERR_OPCODE_MISMATCH";
 case 132:
  return "VIRTCHNL_STATUS_ERR_CQP_COMPL_ERROR";
 case 131:
  return "VIRTCHNL_STATUS_ERR_INVALID_VF_ID";
 case 129:
  return "VIRTCHNL_STATUS_NOT_SUPPORTED";
 }

 snprintf(hw->err_str, sizeof(hw->err_str), "%d", stat_err);
 return hw->err_str;
}
