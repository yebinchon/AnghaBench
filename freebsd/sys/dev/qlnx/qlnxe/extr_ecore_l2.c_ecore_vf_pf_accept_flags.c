
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_sp_vport_update_params {int accept_flags; } ;
struct ecore_hwfn {int dummy; } ;
struct ecore_filter_accept_flags {int dummy; } ;
typedef int s_params ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int OSAL_MEMCPY (int *,struct ecore_filter_accept_flags*,int) ;
 int OSAL_MEMSET (struct ecore_sp_vport_update_params*,int ,int) ;
 int ecore_vf_pf_vport_update (struct ecore_hwfn*,struct ecore_sp_vport_update_params*) ;

__attribute__((used)) static enum _ecore_status_t
ecore_vf_pf_accept_flags(struct ecore_hwfn *p_hwfn,
    struct ecore_filter_accept_flags *p_accept_flags)
{
 struct ecore_sp_vport_update_params s_params;

 OSAL_MEMSET(&s_params, 0, sizeof(s_params));
 OSAL_MEMCPY(&s_params.accept_flags, p_accept_flags,
      sizeof(struct ecore_filter_accept_flags));

 return ecore_vf_pf_vport_update(p_hwfn, &s_params);
}
