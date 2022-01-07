
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;


 scalar_t__ PGLUE_B_REG_WAS_ERROR_VF_31_0_CLR ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__,int) ;

__attribute__((used)) static void ecore_iov_vf_pglue_clear_err(struct ecore_hwfn *p_hwfn,
      struct ecore_ptt *p_ptt,
      u8 abs_vfid)
{
 ecore_wr(p_hwfn, p_ptt,
   PGLUE_B_REG_WAS_ERROR_VF_31_0_CLR + (abs_vfid >> 5) * 4,
   1 << (abs_vfid & 0x1f));
}
