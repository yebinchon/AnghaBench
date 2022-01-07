
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int size; int phys; struct ecore_bulletin_content* p_virt; } ;
struct ecore_vf_info {TYPE_1__ bulletin; int vf_bulletin; int abs_vf_id; int relative_vf_id; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct ecore_dmae_params {int dst_vfid; int flags; } ;
struct ecore_bulletin_content {int crc; int version; } ;
typedef int params ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ,int ,int ) ;
 int ECORE_DMAE_FLAG_VF_DST ;
 int ECORE_INVAL ;
 int ECORE_MSG_IOV ;
 int OSAL_CRC32 (int ,int *,int) ;
 int OSAL_MEMSET (struct ecore_dmae_params*,int ,int) ;
 int ecore_dmae_host2host (struct ecore_hwfn*,struct ecore_ptt*,int ,int ,int,struct ecore_dmae_params*) ;
 struct ecore_vf_info* ecore_iov_get_vf_info (struct ecore_hwfn*,int ,int) ;

enum _ecore_status_t ecore_iov_post_vf_bulletin(struct ecore_hwfn *p_hwfn,
      int vfid,
      struct ecore_ptt *p_ptt)
{
 struct ecore_bulletin_content *p_bulletin;
 int crc_size = sizeof(p_bulletin->crc);
 struct ecore_dmae_params params;
 struct ecore_vf_info *p_vf;

 p_vf = ecore_iov_get_vf_info(p_hwfn, (u16)vfid, 1);
 if (!p_vf)
  return ECORE_INVAL;


 if (!p_vf->vf_bulletin)
  return ECORE_INVAL;

 p_bulletin = p_vf->bulletin.p_virt;


 p_bulletin->version++;
 p_bulletin->crc = OSAL_CRC32(0, (u8 *)p_bulletin + crc_size,
         p_vf->bulletin.size - crc_size);

 DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
     "Posting Bulletin 0x%08x to VF[%d] (CRC 0x%08x)\n",
     p_bulletin->version, p_vf->relative_vf_id,
     p_bulletin->crc);


 OSAL_MEMSET(&params, 0, sizeof(params));
 params.flags = ECORE_DMAE_FLAG_VF_DST;
 params.dst_vfid = p_vf->abs_vf_id;
 return ecore_dmae_host2host(p_hwfn, p_ptt, p_vf->bulletin.phys,
        p_vf->vf_bulletin, p_vf->bulletin.size / 4,
        &params);
}
