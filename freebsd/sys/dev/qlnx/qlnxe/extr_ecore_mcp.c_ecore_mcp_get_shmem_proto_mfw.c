
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum ecore_pci_personality { ____Placeholder_ecore_pci_personality } ecore_pci_personality ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*,scalar_t__) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,scalar_t__,...) ;
 int DRV_MSG_CODE_GET_PF_RDMA_PROTOCOL ;
 int ECORE_INVAL ;
 int ECORE_MSG_IFUP ;
 int ECORE_PCI_ETH ;
 int ECORE_PCI_ETH_IWARP ;
 int ECORE_PCI_ETH_RDMA ;
 int ECORE_PCI_ETH_ROCE ;
 int ECORE_SUCCESS ;




 scalar_t__ FW_MSG_CODE_OK ;
 int ecore_mcp_cmd (struct ecore_hwfn*,struct ecore_ptt*,int ,int ,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static enum _ecore_status_t
ecore_mcp_get_shmem_proto_mfw(struct ecore_hwfn *p_hwfn,
         struct ecore_ptt *p_ptt,
         enum ecore_pci_personality *p_proto)
{
 u32 resp = 0, param = 0;
 enum _ecore_status_t rc;

 rc = ecore_mcp_cmd(p_hwfn, p_ptt,
    DRV_MSG_CODE_GET_PF_RDMA_PROTOCOL, 0, &resp, &param);
 if (rc != ECORE_SUCCESS)
  return rc;
 if (resp != FW_MSG_CODE_OK) {
  DP_VERBOSE(p_hwfn, ECORE_MSG_IFUP,
      "MFW lacks support for command; Returns %08x\n",
      resp);
  return ECORE_INVAL;
 }

 switch (param) {
 case 129:
  *p_proto = ECORE_PCI_ETH;
  break;
 case 128:
  *p_proto = ECORE_PCI_ETH_ROCE;
  break;
 case 130:
  *p_proto = ECORE_PCI_ETH_IWARP;
  break;
 case 131:
  *p_proto = ECORE_PCI_ETH_RDMA;
  break;
 default:
  DP_NOTICE(p_hwfn, 1,
     "MFW answers GET_PF_RDMA_PROTOCOL but param is %08x\n",
     param);
  return ECORE_INVAL;
 }

 DP_VERBOSE(p_hwfn, ECORE_MSG_IFUP,
     "According to capabilities, L2 personality is %08x [resp %08x param %08x]\n",
     (u32) *p_proto, resp, param);
 return ECORE_SUCCESS;
}
