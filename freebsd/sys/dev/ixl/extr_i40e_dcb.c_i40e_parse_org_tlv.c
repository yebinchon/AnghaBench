
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40e_lldp_org_tlv {int ouisubtype; } ;
struct i40e_dcbx_config {int dummy; } ;




 int I40E_LLDP_TLV_OUI_MASK ;
 int I40E_LLDP_TLV_OUI_SHIFT ;
 int I40E_NTOHL (int ) ;
 int i40e_parse_cee_tlv (struct i40e_lldp_org_tlv*,struct i40e_dcbx_config*) ;
 int i40e_parse_ieee_tlv (struct i40e_lldp_org_tlv*,struct i40e_dcbx_config*) ;

__attribute__((used)) static void i40e_parse_org_tlv(struct i40e_lldp_org_tlv *tlv,
          struct i40e_dcbx_config *dcbcfg)
{
 u32 ouisubtype;
 u32 oui;

 ouisubtype = I40E_NTOHL(tlv->ouisubtype);
 oui = (u32)((ouisubtype & I40E_LLDP_TLV_OUI_MASK) >>
      I40E_LLDP_TLV_OUI_SHIFT);
 switch (oui) {
 case 128:
  i40e_parse_ieee_tlv(tlv, dcbcfg);
  break;
 case 129:
  i40e_parse_cee_tlv(tlv, dcbcfg);
  break;
 default:
  break;
 }
}
