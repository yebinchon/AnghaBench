
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ecore_hwfn {TYPE_2__* p_dcbx_info; } ;
struct TYPE_7__ {int params; } ;
struct ecore_dcbx_set {int ver_num; int override_flags; TYPE_3__ config; scalar_t__ enabled; } ;
struct TYPE_8__ {int app; int ets; int pfc; } ;
struct dcbx_local_params {int config; TYPE_4__ features; scalar_t__ flags; } ;
struct TYPE_5__ {int features; } ;
struct TYPE_6__ {TYPE_1__ operational; } ;


 int DCBX_CONFIG_VERSION_DISABLED ;
 int DCBX_CONFIG_VERSION_IEEE ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int) ;
 int ECORE_DCBX_OVERRIDE_APP_CFG ;
 int ECORE_DCBX_OVERRIDE_ETS_CFG ;
 int ECORE_DCBX_OVERRIDE_PFC_CFG ;
 int ECORE_MSG_DCB ;
 int OSAL_MEMCPY (TYPE_4__*,int *,int) ;
 int ecore_dcbx_set_app_data (struct ecore_hwfn*,int *,int *,int) ;
 int ecore_dcbx_set_ets_data (struct ecore_hwfn*,int *,int *) ;
 int ecore_dcbx_set_pfc_data (struct ecore_hwfn*,int *,int *) ;

__attribute__((used)) static void
ecore_dcbx_set_local_params(struct ecore_hwfn *p_hwfn,
       struct dcbx_local_params *local_admin,
       struct ecore_dcbx_set *params)
{
 bool ieee = 0;

 local_admin->flags = 0;
 OSAL_MEMCPY(&local_admin->features,
      &p_hwfn->p_dcbx_info->operational.features,
      sizeof(local_admin->features));

 if (params->enabled) {
  local_admin->config = params->ver_num;
  ieee = !!(params->ver_num & DCBX_CONFIG_VERSION_IEEE);
 } else
  local_admin->config = DCBX_CONFIG_VERSION_DISABLED;

 DP_VERBOSE(p_hwfn, ECORE_MSG_DCB, "Dcbx version = %d\n",
     local_admin->config);

 if (params->override_flags & ECORE_DCBX_OVERRIDE_PFC_CFG)
  ecore_dcbx_set_pfc_data(p_hwfn, &local_admin->features.pfc,
     &params->config.params);

 if (params->override_flags & ECORE_DCBX_OVERRIDE_ETS_CFG)
  ecore_dcbx_set_ets_data(p_hwfn, &local_admin->features.ets,
     &params->config.params);

 if (params->override_flags & ECORE_DCBX_OVERRIDE_APP_CFG)
  ecore_dcbx_set_app_data(p_hwfn, &local_admin->features.app,
     &params->config.params, ieee);
}
