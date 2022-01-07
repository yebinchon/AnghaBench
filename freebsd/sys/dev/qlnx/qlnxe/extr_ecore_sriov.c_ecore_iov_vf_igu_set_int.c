
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct ecore_vf_info {scalar_t__ concrete_fid; } ;
struct ecore_ptt {int dummy; } ;
struct TYPE_2__ {scalar_t__ concrete_fid; } ;
struct ecore_hwfn {TYPE_1__ hw_info; } ;


 int IGU_REG_VF_CONFIGURATION ;
 int IGU_VF_CONF_MSI_MSIX_EN ;
 int ecore_fid_pretend (struct ecore_hwfn*,struct ecore_ptt*,int ) ;
 int ecore_rd (struct ecore_hwfn*,struct ecore_ptt*,int ) ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,int ,int ) ;

__attribute__((used)) static void ecore_iov_vf_igu_set_int(struct ecore_hwfn *p_hwfn,
         struct ecore_ptt *p_ptt,
         struct ecore_vf_info *vf,
         bool enable)
{
 u32 igu_vf_conf;

 ecore_fid_pretend(p_hwfn, p_ptt, (u16)vf->concrete_fid);

 igu_vf_conf = ecore_rd(p_hwfn, p_ptt, IGU_REG_VF_CONFIGURATION);

 if (enable) {
  igu_vf_conf |= IGU_VF_CONF_MSI_MSIX_EN;
 } else {
  igu_vf_conf &= ~IGU_VF_CONF_MSI_MSIX_EN;
 }

 ecore_wr(p_hwfn, p_ptt, IGU_REG_VF_CONFIGURATION, igu_vf_conf);


 ecore_fid_pretend(p_hwfn, p_ptt, (u16)p_hwfn->hw_info.concrete_fid);
}
