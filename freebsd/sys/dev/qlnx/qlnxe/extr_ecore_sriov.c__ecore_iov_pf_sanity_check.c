
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_hwfn {int p_dev; } ;


 int IS_ECORE_SRIOV (int ) ;
 int IS_PF_SRIOV_ALLOC (struct ecore_hwfn*) ;
 scalar_t__ IS_VF (int ) ;
 int ecore_iov_is_valid_vfid (struct ecore_hwfn*,int,int,int) ;

__attribute__((used)) static bool _ecore_iov_pf_sanity_check(struct ecore_hwfn *p_hwfn, int vfid,
           bool b_fail_malicious)
{

 if (IS_VF(p_hwfn->p_dev) || !IS_ECORE_SRIOV(p_hwfn->p_dev) ||
     !IS_PF_SRIOV_ALLOC(p_hwfn))
  return 0;


 if (!ecore_iov_is_valid_vfid(p_hwfn, vfid, 1, b_fail_malicious))
  return 0;

 return 1;
}
