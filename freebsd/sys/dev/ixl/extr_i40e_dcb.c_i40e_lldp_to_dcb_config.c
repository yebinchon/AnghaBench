
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
typedef int typelength ;
struct i40e_lldp_org_tlv {int typelength; } ;
struct i40e_dcbx_config {int dummy; } ;
typedef enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;


 int I40E_ERR_PARAM ;
 scalar_t__ I40E_LLDPDU_SIZE ;
 int I40E_LLDP_MIB_HLEN ;
 scalar_t__ I40E_LLDP_TLV_LEN_MASK ;
 scalar_t__ I40E_LLDP_TLV_LEN_SHIFT ;
 scalar_t__ I40E_LLDP_TLV_TYPE_MASK ;
 scalar_t__ I40E_LLDP_TLV_TYPE_SHIFT ;
 scalar_t__ I40E_NTOHS (int ) ;
 int I40E_SUCCESS ;
 scalar_t__ I40E_TLV_TYPE_END ;

 int i40e_parse_org_tlv (struct i40e_lldp_org_tlv*,struct i40e_dcbx_config*) ;

enum i40e_status_code i40e_lldp_to_dcb_config(u8 *lldpmib,
        struct i40e_dcbx_config *dcbcfg)
{
 enum i40e_status_code ret = I40E_SUCCESS;
 struct i40e_lldp_org_tlv *tlv;
 u16 type;
 u16 length;
 u16 typelength;
 u16 offset = 0;

 if (!lldpmib || !dcbcfg)
  return I40E_ERR_PARAM;


 lldpmib += I40E_LLDP_MIB_HLEN;
 tlv = (struct i40e_lldp_org_tlv *)lldpmib;
 while (1) {
  typelength = I40E_NTOHS(tlv->typelength);
  type = (u16)((typelength & I40E_LLDP_TLV_TYPE_MASK) >>
        I40E_LLDP_TLV_TYPE_SHIFT);
  length = (u16)((typelength & I40E_LLDP_TLV_LEN_MASK) >>
          I40E_LLDP_TLV_LEN_SHIFT);
  offset += sizeof(typelength) + length;


  if ((type == I40E_TLV_TYPE_END) || (offset > I40E_LLDPDU_SIZE))
   break;

  switch (type) {
  case 128:
   i40e_parse_org_tlv(tlv, dcbcfg);
   break;
  default:
   break;
  }


  tlv = (struct i40e_lldp_org_tlv *)((char *)tlv +
          sizeof(tlv->typelength) +
          length);
 }

 return ret;
}
