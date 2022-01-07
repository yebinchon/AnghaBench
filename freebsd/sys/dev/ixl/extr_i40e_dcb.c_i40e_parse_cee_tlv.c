
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct i40e_lldp_org_tlv {int typelength; int ouisubtype; } ;
struct i40e_dcbx_config {int dummy; } ;
struct TYPE_2__ {int typelen; } ;
struct i40e_cee_feat_tlv {TYPE_1__ hdr; } ;
struct i40e_cee_ctrl_tlv {int dummy; } ;
typedef int ouisubtype ;


 scalar_t__ I40E_CEE_DCBX_TYPE ;
 scalar_t__ I40E_CEE_MAX_FEAT_TYPE ;



 int I40E_LLDP_TLV_LEN_MASK ;
 int I40E_LLDP_TLV_LEN_SHIFT ;
 int I40E_LLDP_TLV_SUBTYPE_MASK ;
 int I40E_LLDP_TLV_SUBTYPE_SHIFT ;
 int I40E_LLDP_TLV_TYPE_MASK ;
 int I40E_LLDP_TLV_TYPE_SHIFT ;
 int I40E_NTOHL (int ) ;
 int I40E_NTOHS (int ) ;
 int i40e_parse_cee_app_tlv (struct i40e_cee_feat_tlv*,struct i40e_dcbx_config*) ;
 int i40e_parse_cee_pfccfg_tlv (struct i40e_cee_feat_tlv*,struct i40e_dcbx_config*) ;
 int i40e_parse_cee_pgcfg_tlv (struct i40e_cee_feat_tlv*,struct i40e_dcbx_config*) ;

__attribute__((used)) static void i40e_parse_cee_tlv(struct i40e_lldp_org_tlv *tlv,
          struct i40e_dcbx_config *dcbcfg)
{
 u16 len, tlvlen, sublen, typelength;
 struct i40e_cee_feat_tlv *sub_tlv;
 u8 subtype, feat_tlv_count = 0;
 u32 ouisubtype;

 ouisubtype = I40E_NTOHL(tlv->ouisubtype);
 subtype = (u8)((ouisubtype & I40E_LLDP_TLV_SUBTYPE_MASK) >>
         I40E_LLDP_TLV_SUBTYPE_SHIFT);

 if (subtype != I40E_CEE_DCBX_TYPE)
  return;

 typelength = I40E_NTOHS(tlv->typelength);
 tlvlen = (u16)((typelength & I40E_LLDP_TLV_LEN_MASK) >>
   I40E_LLDP_TLV_LEN_SHIFT);
 len = sizeof(tlv->typelength) + sizeof(ouisubtype) +
       sizeof(struct i40e_cee_ctrl_tlv);

 if (tlvlen <= len)
  return;

 sub_tlv = (struct i40e_cee_feat_tlv *)((char *)tlv + len);
 while (feat_tlv_count < I40E_CEE_MAX_FEAT_TYPE) {
  typelength = I40E_NTOHS(sub_tlv->hdr.typelen);
  sublen = (u16)((typelength &
    I40E_LLDP_TLV_LEN_MASK) >>
    I40E_LLDP_TLV_LEN_SHIFT);
  subtype = (u8)((typelength & I40E_LLDP_TLV_TYPE_MASK) >>
    I40E_LLDP_TLV_TYPE_SHIFT);
  switch (subtype) {
  case 128:
   i40e_parse_cee_pgcfg_tlv(sub_tlv, dcbcfg);
   break;
  case 129:
   i40e_parse_cee_pfccfg_tlv(sub_tlv, dcbcfg);
   break;
  case 130:
   i40e_parse_cee_app_tlv(sub_tlv, dcbcfg);
   break;
  default:
   return;
  }
  feat_tlv_count++;

  sub_tlv = (struct i40e_cee_feat_tlv *)((char *)sub_tlv +
      sizeof(sub_tlv->hdr.typelen) +
      sublen);
 }
}
