
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_hwfn {int dummy; } ;


 int _ecore_iov_pf_sanity_check (struct ecore_hwfn*,int,int) ;

bool ecore_iov_pf_sanity_check(struct ecore_hwfn *p_hwfn, int vfid)
{
 return _ecore_iov_pf_sanity_check(p_hwfn, vfid, 1);
}
