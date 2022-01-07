
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i40e_lldp_org_tlv {int dummy; } ;
struct i40e_dcbx_config {int dummy; } ;






 int i40e_add_ieee_app_pri_tlv (struct i40e_lldp_org_tlv*,struct i40e_dcbx_config*) ;
 int i40e_add_ieee_ets_tlv (struct i40e_lldp_org_tlv*,struct i40e_dcbx_config*) ;
 int i40e_add_ieee_etsrec_tlv (struct i40e_lldp_org_tlv*,struct i40e_dcbx_config*) ;
 int i40e_add_ieee_pfc_tlv (struct i40e_lldp_org_tlv*,struct i40e_dcbx_config*) ;

__attribute__((used)) static void i40e_add_dcb_tlv(struct i40e_lldp_org_tlv *tlv,
        struct i40e_dcbx_config *dcbcfg,
        u16 tlvid)
{
 switch (tlvid) {
 case 130:
  i40e_add_ieee_ets_tlv(tlv, dcbcfg);
  break;
 case 129:
  i40e_add_ieee_etsrec_tlv(tlv, dcbcfg);
  break;
 case 128:
  i40e_add_ieee_pfc_tlv(tlv, dcbcfg);
  break;
 case 131:
  i40e_add_ieee_app_pri_tlv(tlv, dcbcfg);
  break;
 default:
  break;
 }
}
