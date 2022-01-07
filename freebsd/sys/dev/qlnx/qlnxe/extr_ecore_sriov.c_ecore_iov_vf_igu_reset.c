
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ecore_vf_info {int num_sbs; int opaque_fid; int * igu_sbs; scalar_t__ concrete_fid; } ;
struct ecore_ptt {int dummy; } ;
struct TYPE_2__ {scalar_t__ concrete_fid; } ;
struct ecore_hwfn {TYPE_1__ hw_info; } ;


 int IGU_REG_STATISTIC_NUM_VF_MSG_SENT ;
 int ecore_fid_pretend (struct ecore_hwfn*,struct ecore_ptt*,int ) ;
 int ecore_int_igu_init_pure_rt_single (struct ecore_hwfn*,struct ecore_ptt*,int ,int ,int) ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,int ,int ) ;

__attribute__((used)) static void ecore_iov_vf_igu_reset(struct ecore_hwfn *p_hwfn,
       struct ecore_ptt *p_ptt,
       struct ecore_vf_info *vf)
{
 int i;


 ecore_fid_pretend(p_hwfn, p_ptt, (u16)vf->concrete_fid);

 ecore_wr(p_hwfn, p_ptt, IGU_REG_STATISTIC_NUM_VF_MSG_SENT, 0);


 ecore_fid_pretend(p_hwfn, p_ptt, (u16)p_hwfn->hw_info.concrete_fid);


 for (i = 0; i < vf->num_sbs; i++)
  ecore_int_igu_init_pure_rt_single(p_hwfn, p_ptt,
        vf->igu_sbs[i],
        vf->opaque_fid, 1);
}
