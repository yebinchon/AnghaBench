
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct i40e_lldp_org_tlv {int* tlvinfo; int ouisubtype; int typelength; } ;
struct TYPE_2__ {int pfccap; int pfcenable; scalar_t__ mbc; scalar_t__ willing; } ;
struct i40e_dcbx_config {TYPE_1__ pfc; } ;


 int BIT (int ) ;
 int I40E_HTONL (scalar_t__) ;
 int I40E_HTONS (scalar_t__) ;
 int I40E_IEEE_8021QAZ_OUI ;
 int I40E_IEEE_PFC_MBC_SHIFT ;
 int I40E_IEEE_PFC_TLV_LENGTH ;
 int I40E_IEEE_PFC_WILLING_SHIFT ;
 int I40E_IEEE_SUBTYPE_PFC_CFG ;
 int I40E_LLDP_TLV_OUI_SHIFT ;
 int I40E_LLDP_TLV_TYPE_SHIFT ;
 int I40E_TLV_TYPE_ORG ;

__attribute__((used)) static void i40e_add_ieee_pfc_tlv(struct i40e_lldp_org_tlv *tlv,
      struct i40e_dcbx_config *dcbcfg)
{
 u8 *buf = tlv->tlvinfo;
 u32 ouisubtype;
 u16 typelength;

 typelength = (u16)((I40E_TLV_TYPE_ORG << I40E_LLDP_TLV_TYPE_SHIFT) |
   I40E_IEEE_PFC_TLV_LENGTH);
 tlv->typelength = I40E_HTONS(typelength);

 ouisubtype = (u32)((I40E_IEEE_8021QAZ_OUI << I40E_LLDP_TLV_OUI_SHIFT) |
   I40E_IEEE_SUBTYPE_PFC_CFG);
 tlv->ouisubtype = I40E_HTONL(ouisubtype);







 if (dcbcfg->pfc.willing)
  buf[0] = BIT(I40E_IEEE_PFC_WILLING_SHIFT);

 if (dcbcfg->pfc.mbc)
  buf[0] |= BIT(I40E_IEEE_PFC_MBC_SHIFT);

 buf[0] |= dcbcfg->pfc.pfccap & 0xF;
 buf[1] = dcbcfg->pfc.pfcenable;
}
