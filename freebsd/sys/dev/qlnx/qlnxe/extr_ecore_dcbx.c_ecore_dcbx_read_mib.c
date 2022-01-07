
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum ecore_mib_read_type { ____Placeholder_ecore_mib_read_type } ecore_mib_read_type ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_ERR (struct ecore_hwfn*,char*,int) ;





 int ECORE_INVAL ;
 int ecore_dcbx_read_dscp_mib (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_dcbx_read_local_lldp_mib (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_dcbx_read_local_mib (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_dcbx_read_operational_mib (struct ecore_hwfn*,struct ecore_ptt*,int) ;
 int ecore_dcbx_read_remote_lldp_mib (struct ecore_hwfn*,struct ecore_ptt*,int) ;
 int ecore_dcbx_read_remote_mib (struct ecore_hwfn*,struct ecore_ptt*,int) ;

__attribute__((used)) static enum _ecore_status_t ecore_dcbx_read_mib(struct ecore_hwfn *p_hwfn,
      struct ecore_ptt *p_ptt,
      enum ecore_mib_read_type type)
{
 enum _ecore_status_t rc = ECORE_INVAL;

 switch (type) {
 case 130:
  ecore_dcbx_read_dscp_mib(p_hwfn, p_ptt);
  rc = ecore_dcbx_read_operational_mib(p_hwfn, p_ptt, type);
  break;
 case 128:
  rc = ecore_dcbx_read_remote_mib(p_hwfn, p_ptt, type);
  break;
 case 131:
  rc = ecore_dcbx_read_local_mib(p_hwfn, p_ptt);
  break;
 case 129:
  rc = ecore_dcbx_read_remote_lldp_mib(p_hwfn, p_ptt, type);
  break;
 case 132:
  rc = ecore_dcbx_read_local_lldp_mib(p_hwfn, p_ptt);
  break;
 default:
  DP_ERR(p_hwfn, "MIB read err, unknown mib type %d\n", type);
 }

 return rc;
}
