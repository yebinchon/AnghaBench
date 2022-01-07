
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ecore_hwfn {int dummy; } ;
typedef enum dcbx_protocol_type { ____Placeholder_dcbx_protocol_type } dcbx_protocol_type ;


 int DCBX_MAX_PROTOCOL_TYPE ;
 int DCBX_PROTOCOL_ETH ;
 int DCBX_PROTOCOL_FCOE ;
 int DCBX_PROTOCOL_ISCSI ;
 int DCBX_PROTOCOL_IWARP ;
 int DCBX_PROTOCOL_ROCE ;
 int DCBX_PROTOCOL_ROCE_V2 ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ) ;
 int ECORE_MSG_DCB ;
 scalar_t__ ecore_dcbx_default_tlv (int ,int ,int) ;
 scalar_t__ ecore_dcbx_fcoe_tlv (int ,int ,int) ;
 scalar_t__ ecore_dcbx_iscsi_tlv (int ,int ,int) ;
 scalar_t__ ecore_dcbx_iwarp_tlv (struct ecore_hwfn*,int ,int ,int) ;
 scalar_t__ ecore_dcbx_roce_tlv (int ,int ,int) ;
 scalar_t__ ecore_dcbx_roce_v2_tlv (int ,int ,int) ;

__attribute__((used)) static bool
ecore_dcbx_get_app_protocol_type(struct ecore_hwfn *p_hwfn,
     u32 app_prio_bitmap, u16 id,
     enum dcbx_protocol_type *type, bool ieee)
{
 if (ecore_dcbx_fcoe_tlv(app_prio_bitmap, id, ieee)) {
  *type = DCBX_PROTOCOL_FCOE;
 } else if (ecore_dcbx_roce_tlv(app_prio_bitmap, id, ieee)) {
  *type = DCBX_PROTOCOL_ROCE;
 } else if (ecore_dcbx_iscsi_tlv(app_prio_bitmap, id, ieee)) {
  *type = DCBX_PROTOCOL_ISCSI;
 } else if (ecore_dcbx_default_tlv(app_prio_bitmap, id, ieee)) {
  *type = DCBX_PROTOCOL_ETH;
 } else if (ecore_dcbx_roce_v2_tlv(app_prio_bitmap, id, ieee)) {
  *type = DCBX_PROTOCOL_ROCE_V2;
 } else if (ecore_dcbx_iwarp_tlv(p_hwfn, app_prio_bitmap, id, ieee)) {
  *type = DCBX_PROTOCOL_IWARP;
 } else {
  *type = DCBX_MAX_PROTOCOL_TYPE;
  DP_VERBOSE(p_hwfn, ECORE_MSG_DCB,
      "No action required, App TLV entry = 0x%x\n",
      app_prio_bitmap);
  return 0;
 }

 return 1;
}
