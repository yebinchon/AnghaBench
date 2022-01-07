
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct public_func {int config; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int p_dev; } ;
typedef enum ecore_pci_personality { ____Placeholder_ecore_pci_personality } ecore_pci_personality ;


 int ECORE_PCI_DEFAULT ;
 scalar_t__ ECORE_SUCCESS ;
 int FUNC_MF_CFG_FUNC_HIDE ;
 int MCP_PF_ID_BY_REL (struct ecore_hwfn*,int) ;
 int NUM_OF_ENG_PFS (int ) ;
 int ecore_mcp_get_shmem_func (struct ecore_hwfn*,struct ecore_ptt*,struct public_func*,int ) ;
 scalar_t__ ecore_mcp_get_shmem_proto (struct ecore_hwfn*,struct public_func*,struct ecore_ptt*,int*) ;

int ecore_mcp_get_personality_cnt(struct ecore_hwfn *p_hwfn,
      struct ecore_ptt *p_ptt,
      u32 personalities)
{
 enum ecore_pci_personality protocol = ECORE_PCI_DEFAULT;
 struct public_func shmem_info;
 int i, count = 0, num_pfs;

 num_pfs = NUM_OF_ENG_PFS(p_hwfn->p_dev);

 for (i = 0; i < num_pfs; i++) {
  ecore_mcp_get_shmem_func(p_hwfn, p_ptt, &shmem_info,
      MCP_PF_ID_BY_REL(p_hwfn, i));
  if (shmem_info.config & FUNC_MF_CFG_FUNC_HIDE)
   continue;

  if (ecore_mcp_get_shmem_proto(p_hwfn, &shmem_info, p_ptt,
           &protocol) !=
      ECORE_SUCCESS)
   continue;

  if ((1 << ((u32)protocol)) & personalities)
   count++;
 }

 return count;
}
