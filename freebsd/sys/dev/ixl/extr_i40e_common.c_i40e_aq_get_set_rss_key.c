
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_aqc_get_set_rss_key_data {int dummy; } ;
struct i40e_aqc_get_set_rss_key {int vsi_id; } ;
struct TYPE_2__ {int raw; } ;
struct i40e_aq_desc {int flags; TYPE_1__ params; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int CPU_TO_LE16 (int) ;
 int I40E_AQC_SET_RSS_KEY_VSI_ID_MASK ;
 int I40E_AQC_SET_RSS_KEY_VSI_ID_SHIFT ;
 scalar_t__ I40E_AQC_SET_RSS_KEY_VSI_VALID ;
 scalar_t__ I40E_AQ_FLAG_BUF ;
 scalar_t__ I40E_AQ_FLAG_RD ;
 int i40e_aqc_opc_get_rss_key ;
 int i40e_aqc_opc_set_rss_key ;
 int i40e_asq_send_command (struct i40e_hw*,struct i40e_aq_desc*,struct i40e_aqc_get_set_rss_key_data*,int,int *) ;
 int i40e_fill_default_direct_cmd_desc (struct i40e_aq_desc*,int ) ;

__attribute__((used)) static enum i40e_status_code i40e_aq_get_set_rss_key(struct i40e_hw *hw,
          u16 vsi_id,
          struct i40e_aqc_get_set_rss_key_data *key,
          bool set)
{
 enum i40e_status_code status;
 struct i40e_aq_desc desc;
 struct i40e_aqc_get_set_rss_key *cmd_resp =
   (struct i40e_aqc_get_set_rss_key *)&desc.params.raw;
 u16 key_size = sizeof(struct i40e_aqc_get_set_rss_key_data);

 if (set)
  i40e_fill_default_direct_cmd_desc(&desc,
        i40e_aqc_opc_set_rss_key);
 else
  i40e_fill_default_direct_cmd_desc(&desc,
        i40e_aqc_opc_get_rss_key);


 desc.flags |= CPU_TO_LE16((u16)I40E_AQ_FLAG_BUF);
 desc.flags |= CPU_TO_LE16((u16)I40E_AQ_FLAG_RD);

 cmd_resp->vsi_id =
   CPU_TO_LE16((u16)((vsi_id <<
       I40E_AQC_SET_RSS_KEY_VSI_ID_SHIFT) &
       I40E_AQC_SET_RSS_KEY_VSI_ID_MASK));
 cmd_resp->vsi_id |= CPU_TO_LE16((u16)I40E_AQC_SET_RSS_KEY_VSI_VALID);

 status = i40e_asq_send_command(hw, &desc, key, key_size, ((void*)0));

 return status;
}
