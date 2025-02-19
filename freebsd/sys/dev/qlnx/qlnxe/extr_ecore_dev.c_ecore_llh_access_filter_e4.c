
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef scalar_t__ u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_llh_filter_e4_details {void* enable; void* hdr_sel; void* protocol_type; void* mode; int value; } ;
struct ecore_hwfn {int dummy; } ;
struct ecore_dmae_params {int flags; int dst_pfid; int src_pfid; } ;
typedef int params ;
typedef scalar_t__ osal_uintptr_t ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int ECORE_DMAE_FLAG_COMPLETION_DST ;
 int ECORE_DMAE_FLAG_PF_DST ;
 int ECORE_DMAE_FLAG_PF_SRC ;
 int ECORE_PFID_BY_PPFID (struct ecore_hwfn*,int) ;
 int ECORE_SUCCESS ;
 scalar_t__ NIG_REG_LLH_FUNC_FILTER_EN_BB_K2 ;
 scalar_t__ NIG_REG_LLH_FUNC_FILTER_HDR_SEL_BB_K2 ;
 scalar_t__ NIG_REG_LLH_FUNC_FILTER_MODE_BB_K2 ;
 scalar_t__ NIG_REG_LLH_FUNC_FILTER_PROTOCOL_TYPE_BB_K2 ;
 scalar_t__ NIG_REG_LLH_FUNC_FILTER_VALUE_BB_K2 ;
 int OSAL_MEMSET (struct ecore_dmae_params*,int ,int) ;
 int ecore_dmae_grc2host (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__,int ,int,struct ecore_dmae_params*) ;
 int ecore_dmae_host2grc (struct ecore_hwfn*,struct ecore_ptt*,int ,scalar_t__,int,struct ecore_dmae_params*) ;
 void* ecore_ppfid_rd (struct ecore_hwfn*,struct ecore_ptt*,int,scalar_t__) ;
 int ecore_ppfid_wr (struct ecore_hwfn*,struct ecore_ptt*,int,scalar_t__,void*) ;

__attribute__((used)) static enum _ecore_status_t
ecore_llh_access_filter_e4(struct ecore_hwfn *p_hwfn,
      struct ecore_ptt *p_ptt, u8 abs_ppfid, u8 filter_idx,
      struct ecore_llh_filter_e4_details *p_details,
      bool b_write_access)
{
 u8 pfid = ECORE_PFID_BY_PPFID(p_hwfn, abs_ppfid);
 struct ecore_dmae_params params;
 enum _ecore_status_t rc;
 u32 addr;
 if (b_write_access && !p_details->enable) {
  addr = NIG_REG_LLH_FUNC_FILTER_EN_BB_K2 + filter_idx * 0x4;
  ecore_ppfid_wr(p_hwfn, p_ptt, abs_ppfid, addr,
          p_details->enable);
 }


 addr = NIG_REG_LLH_FUNC_FILTER_VALUE_BB_K2 + 2 * filter_idx * 0x4;
 OSAL_MEMSET(&params, 0, sizeof(params));

 if (b_write_access) {
  params.flags = ECORE_DMAE_FLAG_PF_DST;
  params.dst_pfid = pfid;
  rc = ecore_dmae_host2grc(p_hwfn, p_ptt,
      (u64)(osal_uintptr_t)&p_details->value,
      addr, 2 , &params);
 } else {
  params.flags = ECORE_DMAE_FLAG_PF_SRC |
          ECORE_DMAE_FLAG_COMPLETION_DST;
  params.src_pfid = pfid;
  rc = ecore_dmae_grc2host(p_hwfn, p_ptt, addr,
      (u64)(osal_uintptr_t)&p_details->value,
      2 , &params);
 }

 if (rc != ECORE_SUCCESS)
  return rc;


 addr = NIG_REG_LLH_FUNC_FILTER_MODE_BB_K2 + filter_idx * 0x4;
 if (b_write_access)
  ecore_ppfid_wr(p_hwfn, p_ptt, abs_ppfid, addr, p_details->mode);
 else
  p_details->mode = ecore_ppfid_rd(p_hwfn, p_ptt, abs_ppfid,
       addr);


 addr = NIG_REG_LLH_FUNC_FILTER_PROTOCOL_TYPE_BB_K2 + filter_idx * 0x4;
 if (b_write_access)
  ecore_ppfid_wr(p_hwfn, p_ptt, abs_ppfid, addr,
          p_details->protocol_type);
 else
  p_details->protocol_type = ecore_ppfid_rd(p_hwfn, p_ptt,
         abs_ppfid, addr);


 addr = NIG_REG_LLH_FUNC_FILTER_HDR_SEL_BB_K2 + filter_idx * 0x4;
 if (b_write_access)
  ecore_ppfid_wr(p_hwfn, p_ptt, abs_ppfid, addr,
          p_details->hdr_sel);
 else
  p_details->hdr_sel = ecore_ppfid_rd(p_hwfn, p_ptt, abs_ppfid,
          addr);


 if (!b_write_access || p_details->enable) {
  addr = NIG_REG_LLH_FUNC_FILTER_EN_BB_K2 + filter_idx * 0x4;
  if (b_write_access)
   ecore_ppfid_wr(p_hwfn, p_ptt, abs_ppfid, addr,
           p_details->enable);
  else
   p_details->enable = ecore_ppfid_rd(p_hwfn, p_ptt,
          abs_ppfid, addr);
 }

 return ECORE_SUCCESS;
}
