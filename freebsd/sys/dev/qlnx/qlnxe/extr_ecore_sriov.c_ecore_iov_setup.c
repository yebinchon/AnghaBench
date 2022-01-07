
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_hwfn {int dummy; } ;


 int IS_PF_SRIOV (struct ecore_hwfn*) ;
 int IS_PF_SRIOV_ALLOC (struct ecore_hwfn*) ;
 int ecore_iov_setup_vfdb (struct ecore_hwfn*) ;

void ecore_iov_setup(struct ecore_hwfn *p_hwfn)
{
 if (!IS_PF_SRIOV(p_hwfn) || !IS_PF_SRIOV_ALLOC(p_hwfn))
  return;

 ecore_iov_setup_vfdb(p_hwfn);
}
