
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct public_func {int config; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum ecore_pci_personality { ____Placeholder_ecore_pci_personality } ecore_pci_personality ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int ECORE_INVAL ;
 int ECORE_PCI_FCOE ;
 int ECORE_PCI_ISCSI ;
 int ECORE_SUCCESS ;



 int FUNC_MF_CFG_PROTOCOL_MASK ;

 int ecore_mcp_get_shmem_proto_legacy (struct ecore_hwfn*,int*) ;
 int ecore_mcp_get_shmem_proto_mfw (struct ecore_hwfn*,struct ecore_ptt*,int*) ;

__attribute__((used)) static enum _ecore_status_t
ecore_mcp_get_shmem_proto(struct ecore_hwfn *p_hwfn,
     struct public_func *p_info,
     struct ecore_ptt *p_ptt,
     enum ecore_pci_personality *p_proto)
{
 enum _ecore_status_t rc = ECORE_SUCCESS;

 switch (p_info->config & FUNC_MF_CFG_PROTOCOL_MASK) {
 case 131:
  if (ecore_mcp_get_shmem_proto_mfw(p_hwfn, p_ptt, p_proto) !=
      ECORE_SUCCESS)
   ecore_mcp_get_shmem_proto_legacy(p_hwfn, p_proto);
  break;
 case 129:
  *p_proto = ECORE_PCI_ISCSI;
  break;
 case 130:
  *p_proto = ECORE_PCI_FCOE;
  break;
 case 128:
  DP_NOTICE(p_hwfn, 1, "RoCE personality is not a valid value!\n");

 default:
  rc = ECORE_INVAL;
 }

 return rc;
}
