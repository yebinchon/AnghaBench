
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct TYPE_2__ {int willing; void* pfccap; void* pfcenable; } ;
struct i40e_dcbx_config {TYPE_1__ pfc; } ;
struct i40e_cee_feat_tlv {void** tlvinfo; int en_will_err; } ;


 int I40E_CEE_FEAT_TLV_WILLING_MASK ;

__attribute__((used)) static void i40e_parse_cee_pfccfg_tlv(struct i40e_cee_feat_tlv *tlv,
          struct i40e_dcbx_config *dcbcfg)
{
 u8 *buf = tlv->tlvinfo;

 if (tlv->en_will_err & I40E_CEE_FEAT_TLV_WILLING_MASK)
  dcbcfg->pfc.willing = 1;






 dcbcfg->pfc.pfcenable = buf[0];
 dcbcfg->pfc.pfccap = buf[1];
}
