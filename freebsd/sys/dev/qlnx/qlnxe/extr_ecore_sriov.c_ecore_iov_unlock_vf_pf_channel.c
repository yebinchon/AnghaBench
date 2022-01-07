
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct ecore_vf_info {int abs_vf_id; } ;
struct ecore_hwfn {int dummy; } ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ,size_t) ;
 int ECORE_MSG_IOV ;
 size_t* ecore_channel_tlvs_string ;
 scalar_t__ ecore_iov_tlv_supported (size_t) ;

__attribute__((used)) static void ecore_iov_unlock_vf_pf_channel(struct ecore_hwfn *p_hwfn,
        struct ecore_vf_info *vf,
        u16 expected_tlv)
{
 if (ecore_iov_tlv_supported(expected_tlv))
  DP_VERBOSE(p_hwfn,
      ECORE_MSG_IOV,
      "VF[%d]: vf pf channel unlocked by %s\n",
      vf->abs_vf_id,
      ecore_channel_tlvs_string[expected_tlv]);
 else
  DP_VERBOSE(p_hwfn,
      ECORE_MSG_IOV,
      "VF[%d]: vf pf channel unlocked by %04x\n",
      vf->abs_vf_id, expected_tlv);



}
