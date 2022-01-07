
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ecore_hwfn {int rel_pf_id; } ;


 int PXP_CONCRETE_FID_PFID ;
 int PXP_CONCRETE_FID_VFID ;
 int PXP_CONCRETE_FID_VFVALID ;
 int SET_FIELD (int ,int ,int) ;

u32 ecore_vfid_to_concrete(struct ecore_hwfn *p_hwfn, u8 vfid)
{
 u32 concrete_fid = 0;

 SET_FIELD(concrete_fid, PXP_CONCRETE_FID_PFID, p_hwfn->rel_pf_id);
 SET_FIELD(concrete_fid, PXP_CONCRETE_FID_VFID, vfid);
 SET_FIELD(concrete_fid, PXP_CONCRETE_FID_VFVALID, 1);

 return concrete_fid;
}
