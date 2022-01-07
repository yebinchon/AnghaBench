
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int rel_pf_id; } ;


 int ECORE_PFID_BY_PPFID (struct ecore_hwfn*,int) ;
 int PXP_PRETEND_CONCRETE_FID_PFID_SHIFT ;
 int ecore_fid_pretend (struct ecore_hwfn*,struct ecore_ptt*,int) ;
 int ecore_rd (struct ecore_hwfn*,struct ecore_ptt*,int ) ;

u32 ecore_ppfid_rd(struct ecore_hwfn *p_hwfn, struct ecore_ptt *p_ptt,
     u8 abs_ppfid, u32 hw_addr)
{
 u8 pfid = ECORE_PFID_BY_PPFID(p_hwfn, abs_ppfid);
 u32 val;

 ecore_fid_pretend(p_hwfn, p_ptt,
     pfid << PXP_PRETEND_CONCRETE_FID_PFID_SHIFT);
 val = ecore_rd(p_hwfn, p_ptt, hw_addr);
 ecore_fid_pretend(p_hwfn, p_ptt,
     p_hwfn->rel_pf_id <<
     PXP_PRETEND_CONCRETE_FID_PFID_SHIFT);

 return val;
}
