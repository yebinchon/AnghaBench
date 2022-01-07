
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_hwfn {int dummy; } ;
struct ecore_dcbx_params {int dummy; } ;
struct dcbx_ets_feature {int dummy; } ;
struct dcbx_app_priority_feature {int dummy; } ;
struct dcbx_app_priority_entry {int dummy; } ;


 int ecore_dcbx_get_app_data (struct ecore_hwfn*,struct dcbx_app_priority_feature*,struct dcbx_app_priority_entry*,struct ecore_dcbx_params*,int) ;
 int ecore_dcbx_get_ets_data (struct ecore_hwfn*,struct dcbx_ets_feature*,struct ecore_dcbx_params*) ;
 int ecore_dcbx_get_pfc_data (struct ecore_hwfn*,int ,struct ecore_dcbx_params*) ;

__attribute__((used)) static void
ecore_dcbx_get_common_params(struct ecore_hwfn *p_hwfn,
        struct dcbx_app_priority_feature *p_app,
        struct dcbx_app_priority_entry *p_tbl,
        struct dcbx_ets_feature *p_ets,
        u32 pfc, struct ecore_dcbx_params *p_params,
        bool ieee)
{
 ecore_dcbx_get_app_data(p_hwfn, p_app, p_tbl, p_params, ieee);
 ecore_dcbx_get_ets_data(p_hwfn, p_ets, p_params);
 ecore_dcbx_get_pfc_data(p_hwfn, pfc, p_params);
}
