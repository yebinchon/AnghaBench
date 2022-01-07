
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_4__ {int val; } ;
struct function_start_data {int sd_accept_mf_clss_fail_match_ethtype; int c2s_pri_default; TYPE_2__ c2s_pri_trans_table; scalar_t__ c2s_pri_tt_valid; int no_added_tags; void* sd_vlan_eth_type; int sd_vlan_force_pri_val; int sd_vlan_force_pri_flg; void* sd_accept_mf_clss_fail_ethtype; int sd_accept_mf_clss_fail; int inner_rss; int inner_clss_vxlan; int inner_clss_l2geneve; int inner_clss_l2gre; int geneve_dst_port; int vxlan_dst_port; int network_cos_mode; int path_id; void* sd_vlan_tag; scalar_t__ function_mode; } ;
struct ecore_func_start_params {int c2s_pri_default; int c2s_pri; scalar_t__ c2s_pri_valid; int no_added_tags; scalar_t__ sd_vlan_eth_type; int sd_vlan_force_pri_val; int sd_vlan_force_pri; scalar_t__ class_fail_ethtype; int class_fail; int inner_rss; int inner_clss_vxlan; int inner_clss_l2geneve; int inner_clss_l2gre; int geneve_dst_port; int vxlan_dst_port; int network_cos_mode; scalar_t__ sd_vlan_tag; scalar_t__ mf_mode; } ;
struct TYPE_3__ {struct ecore_func_start_params start; } ;
struct ecore_func_state_params {TYPE_1__ params; struct ecore_func_sp_obj* f_obj; } ;
struct ecore_func_sp_obj {int rdata_mapping; scalar_t__ rdata; } ;
struct bxe_softc {int dummy; } ;
typedef int ecore_dma_addr_t ;


 void* ECORE_CPU_TO_LE16 (scalar_t__) ;
 int ECORE_MEMSET (struct function_start_data*,int ,int) ;
 int ECORE_PATH_ID (struct bxe_softc*) ;
 int MAX_VLAN_PRIORITIES ;
 int NONE_CONNECTION_TYPE ;
 int RAMROD_CMD_ID_COMMON_FUNCTION_START ;
 int ecore_sp_post (struct bxe_softc*,int ,int ,int ,int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static inline int ecore_func_send_start(struct bxe_softc *sc,
     struct ecore_func_state_params *params)
{
 struct ecore_func_sp_obj *o = params->f_obj;
 struct function_start_data *rdata =
  (struct function_start_data *)o->rdata;
 ecore_dma_addr_t data_mapping = o->rdata_mapping;
 struct ecore_func_start_params *start_params = &params->params.start;

 ECORE_MEMSET(rdata, 0, sizeof(*rdata));


 rdata->function_mode = (uint8_t)start_params->mf_mode;
 rdata->sd_vlan_tag = ECORE_CPU_TO_LE16(start_params->sd_vlan_tag);
 rdata->path_id = ECORE_PATH_ID(sc);
 rdata->network_cos_mode = start_params->network_cos_mode;

 rdata->vxlan_dst_port = start_params->vxlan_dst_port;
 rdata->geneve_dst_port = start_params->geneve_dst_port;
 rdata->inner_clss_l2gre = start_params->inner_clss_l2gre;
 rdata->inner_clss_l2geneve = start_params->inner_clss_l2geneve;
 rdata->inner_clss_vxlan = start_params->inner_clss_vxlan;
 rdata->inner_rss = start_params->inner_rss;

 rdata->sd_accept_mf_clss_fail = start_params->class_fail;
 if (start_params->class_fail_ethtype) {
  rdata->sd_accept_mf_clss_fail_match_ethtype = 1;
  rdata->sd_accept_mf_clss_fail_ethtype =
   ECORE_CPU_TO_LE16(start_params->class_fail_ethtype);
 }
 rdata->sd_vlan_force_pri_flg = start_params->sd_vlan_force_pri;
 rdata->sd_vlan_force_pri_val = start_params->sd_vlan_force_pri_val;






 if (start_params->sd_vlan_eth_type)
  rdata->sd_vlan_eth_type =
   ECORE_CPU_TO_LE16(start_params->sd_vlan_eth_type);
 else
  rdata->sd_vlan_eth_type =
   ECORE_CPU_TO_LE16((uint16_t) 0x8100);

 rdata->no_added_tags = start_params->no_added_tags;

 rdata->c2s_pri_tt_valid = start_params->c2s_pri_valid;
 if (rdata->c2s_pri_tt_valid) {
  memcpy(rdata->c2s_pri_trans_table.val,
         start_params->c2s_pri,
         MAX_VLAN_PRIORITIES);
  rdata->c2s_pri_default = start_params->c2s_pri_default;
 }







 return ecore_sp_post(sc, RAMROD_CMD_ID_COMMON_FUNCTION_START, 0,
        data_mapping, NONE_CONNECTION_TYPE);
}
