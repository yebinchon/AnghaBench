
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_5__ {int pfccap; int pfcenable; } ;
struct TYPE_4__ {scalar_t__ maxtcs; int* prioritytable; int * tsatable; int * tcbwtable; } ;
struct i40e_dcbx_config {TYPE_3__* app; int numapps; TYPE_2__ pfc; TYPE_1__ etscfg; } ;
struct i40e_aqc_get_cee_dcb_cfg_v1_resp {scalar_t__ oper_num_tc; int* oper_prio_tc; int oper_pfc_en; int * oper_tc_bw; int oper_app_prio; int tlv_status; } ;
struct TYPE_6__ {int priority; int protocolid; void* selector; } ;


 int I40E_APP_PROTOID_FCOE ;
 int I40E_APP_PROTOID_FIP ;
 int I40E_APP_PROTOID_ISCSI ;
 void* I40E_APP_SEL_ETHTYPE ;
 void* I40E_APP_SEL_TCPIP ;
 int I40E_AQC_CEE_APP_FCOE_MASK ;
 int I40E_AQC_CEE_APP_FCOE_SHIFT ;
 int I40E_AQC_CEE_APP_FIP_MASK ;
 int I40E_AQC_CEE_APP_FIP_SHIFT ;
 int I40E_AQC_CEE_APP_ISCSI_MASK ;
 int I40E_AQC_CEE_APP_ISCSI_SHIFT ;
 int I40E_AQC_CEE_APP_STATUS_MASK ;
 int I40E_AQC_CEE_APP_STATUS_SHIFT ;
 int I40E_CEE_OPER_MAX_APPS ;
 int I40E_CEE_PGID_PRIO_0_MASK ;
 int I40E_CEE_PGID_PRIO_0_SHIFT ;
 int I40E_CEE_PGID_PRIO_1_MASK ;
 int I40E_CEE_PGID_PRIO_1_SHIFT ;
 scalar_t__ I40E_CEE_PGID_STRICT ;
 int I40E_IEEE_TSA_ETS ;
 int I40E_IEEE_TSA_STRICT ;
 int I40E_MAX_TRAFFIC_CLASS ;
 int I40E_TLV_STATUS_ERR ;
 int LE16_TO_CPU (int ) ;

__attribute__((used)) static void i40e_cee_to_dcb_v1_config(
   struct i40e_aqc_get_cee_dcb_cfg_v1_resp *cee_cfg,
   struct i40e_dcbx_config *dcbcfg)
{
 u16 status, tlv_status = LE16_TO_CPU(cee_cfg->tlv_status);
 u16 app_prio = LE16_TO_CPU(cee_cfg->oper_app_prio);
 u8 i, tc, err;


 dcbcfg->etscfg.maxtcs = cee_cfg->oper_num_tc;




 for (i = 0; i < 4; i++) {
  tc = (u8)((cee_cfg->oper_prio_tc[i] &
    I40E_CEE_PGID_PRIO_0_MASK) >>
    I40E_CEE_PGID_PRIO_0_SHIFT);
  dcbcfg->etscfg.prioritytable[i*2] = tc;
  tc = (u8)((cee_cfg->oper_prio_tc[i] &
    I40E_CEE_PGID_PRIO_1_MASK) >>
    I40E_CEE_PGID_PRIO_1_SHIFT);
  dcbcfg->etscfg.prioritytable[i*2 + 1] = tc;
 }

 for (i = 0; i < I40E_MAX_TRAFFIC_CLASS; i++)
  dcbcfg->etscfg.tcbwtable[i] = cee_cfg->oper_tc_bw[i];

 for (i = 0; i < I40E_MAX_TRAFFIC_CLASS; i++) {
  if (dcbcfg->etscfg.prioritytable[i] == I40E_CEE_PGID_STRICT) {

   dcbcfg->etscfg.prioritytable[i] =
      cee_cfg->oper_num_tc - 1;
   dcbcfg->etscfg.tsatable[i] = I40E_IEEE_TSA_STRICT;
  } else {
   dcbcfg->etscfg.tsatable[i] = I40E_IEEE_TSA_ETS;
  }
 }


 dcbcfg->pfc.pfcenable = cee_cfg->oper_pfc_en;
 dcbcfg->pfc.pfccap = I40E_MAX_TRAFFIC_CLASS;

 status = (tlv_status & I40E_AQC_CEE_APP_STATUS_MASK) >>
    I40E_AQC_CEE_APP_STATUS_SHIFT;
 err = (status & I40E_TLV_STATUS_ERR) ? 1 : 0;

 if (!err) {

  dcbcfg->numapps = I40E_CEE_OPER_MAX_APPS;


  dcbcfg->app[0].priority =
   (app_prio & I40E_AQC_CEE_APP_FCOE_MASK) >>
    I40E_AQC_CEE_APP_FCOE_SHIFT;
  dcbcfg->app[0].selector = I40E_APP_SEL_ETHTYPE;
  dcbcfg->app[0].protocolid = I40E_APP_PROTOID_FCOE;


  dcbcfg->app[1].priority =
   (app_prio & I40E_AQC_CEE_APP_ISCSI_MASK) >>
    I40E_AQC_CEE_APP_ISCSI_SHIFT;
  dcbcfg->app[1].selector = I40E_APP_SEL_TCPIP;
  dcbcfg->app[1].protocolid = I40E_APP_PROTOID_ISCSI;


  dcbcfg->app[2].priority =
   (app_prio & I40E_AQC_CEE_APP_FIP_MASK) >>
    I40E_AQC_CEE_APP_FIP_SHIFT;
  dcbcfg->app[2].selector = I40E_APP_SEL_ETHTYPE;
  dcbcfg->app[2].protocolid = I40E_APP_PROTOID_FIP;
 }
}
