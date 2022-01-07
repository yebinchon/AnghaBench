
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int device_capabilities; } ;
struct ecore_hwfn {TYPE_1__ hw_info; } ;
typedef enum ecore_pci_personality { ____Placeholder_ecore_pci_personality } ecore_pci_personality ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ) ;
 int ECORE_DEV_CAP_ROCE ;
 int ECORE_MSG_IFUP ;
 int ECORE_PCI_ETH ;
 int ECORE_PCI_ETH_ROCE ;
 scalar_t__ OSAL_TEST_BIT (int ,int *) ;

__attribute__((used)) static void
ecore_mcp_get_shmem_proto_legacy(struct ecore_hwfn *p_hwfn,
     enum ecore_pci_personality *p_proto)
{



 if (OSAL_TEST_BIT(ECORE_DEV_CAP_ROCE,
     &p_hwfn->hw_info.device_capabilities))
  *p_proto = ECORE_PCI_ETH_ROCE;
 else
  *p_proto = ECORE_PCI_ETH;

 DP_VERBOSE(p_hwfn, ECORE_MSG_IFUP,
     "According to Legacy capabilities, L2 personality is %08x\n",
     (u32) *p_proto);
}
