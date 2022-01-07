
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct i40e_lldp_org_tlv {int ouisubtype; } ;
struct i40e_dcbx_config {int dummy; } ;






 int I40E_LLDP_TLV_SUBTYPE_MASK ;
 int I40E_LLDP_TLV_SUBTYPE_SHIFT ;
 int I40E_NTOHL (int ) ;
 int i40e_parse_ieee_app_tlv (struct i40e_lldp_org_tlv*,struct i40e_dcbx_config*) ;
 int i40e_parse_ieee_etscfg_tlv (struct i40e_lldp_org_tlv*,struct i40e_dcbx_config*) ;
 int i40e_parse_ieee_etsrec_tlv (struct i40e_lldp_org_tlv*,struct i40e_dcbx_config*) ;
 int i40e_parse_ieee_pfccfg_tlv (struct i40e_lldp_org_tlv*,struct i40e_dcbx_config*) ;

__attribute__((used)) static void i40e_parse_ieee_tlv(struct i40e_lldp_org_tlv *tlv,
    struct i40e_dcbx_config *dcbcfg)
{
 u32 ouisubtype;
 u8 subtype;

 ouisubtype = I40E_NTOHL(tlv->ouisubtype);
 subtype = (u8)((ouisubtype & I40E_LLDP_TLV_SUBTYPE_MASK) >>
         I40E_LLDP_TLV_SUBTYPE_SHIFT);
 switch (subtype) {
 case 130:
  i40e_parse_ieee_etscfg_tlv(tlv, dcbcfg);
  break;
 case 129:
  i40e_parse_ieee_etsrec_tlv(tlv, dcbcfg);
  break;
 case 128:
  i40e_parse_ieee_pfccfg_tlv(tlv, dcbcfg);
  break;
 case 131:
  i40e_parse_ieee_app_tlv(tlv, dcbcfg);
  break;
 default:
  break;
 }
}
