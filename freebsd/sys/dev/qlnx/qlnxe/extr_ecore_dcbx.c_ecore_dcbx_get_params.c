
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_hwfn {int dummy; } ;
struct ecore_dcbx_get {int dummy; } ;
typedef enum ecore_mib_read_type { ____Placeholder_ecore_mib_read_type } ecore_mib_read_type ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_ERR (struct ecore_hwfn*,char*,int) ;





 int ECORE_INVAL ;
 int ECORE_SUCCESS ;
 int ecore_dcbx_get_local_lldp_params (struct ecore_hwfn*,struct ecore_dcbx_get*) ;
 int ecore_dcbx_get_local_params (struct ecore_hwfn*,struct ecore_dcbx_get*) ;
 int ecore_dcbx_get_operational_params (struct ecore_hwfn*,struct ecore_dcbx_get*) ;
 int ecore_dcbx_get_remote_lldp_params (struct ecore_hwfn*,struct ecore_dcbx_get*) ;
 int ecore_dcbx_get_remote_params (struct ecore_hwfn*,struct ecore_dcbx_get*) ;

__attribute__((used)) static enum _ecore_status_t
ecore_dcbx_get_params(struct ecore_hwfn *p_hwfn,
        struct ecore_dcbx_get *p_params,
        enum ecore_mib_read_type type)
{
 switch (type) {
 case 128:
  ecore_dcbx_get_remote_params(p_hwfn, p_params);
  break;
 case 131:
  ecore_dcbx_get_local_params(p_hwfn, p_params);
  break;
 case 130:
  ecore_dcbx_get_operational_params(p_hwfn, p_params);
  break;
 case 129:
  ecore_dcbx_get_remote_lldp_params(p_hwfn, p_params);
  break;
 case 132:
  ecore_dcbx_get_local_lldp_params(p_hwfn, p_params);
  break;
 default:
  DP_ERR(p_hwfn, "MIB read err, unknown mib type %d\n", type);
  return ECORE_INVAL;
 }

 return ECORE_SUCCESS;
}
