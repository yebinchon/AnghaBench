
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_hwfn {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int _ecore_vf_pf_release (struct ecore_hwfn*,int) ;

enum _ecore_status_t ecore_vf_pf_release(struct ecore_hwfn *p_hwfn)
{
 return _ecore_vf_pf_release(p_hwfn, 1);
}
