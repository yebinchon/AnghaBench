
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct ecore_hwfn {TYPE_1__ dmae_info; } ;
struct ecore_dmae_params {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
typedef int dma_addr_t ;


 int ECORE_DMAE_ADDRESS_HOST_PHYS ;
 int OSAL_SPIN_LOCK (int *) ;
 int OSAL_SPIN_UNLOCK (int *) ;
 int ecore_dmae_execute_command (struct ecore_hwfn*,struct ecore_ptt*,int ,int ,int ,int ,int ,struct ecore_dmae_params*) ;

enum _ecore_status_t ecore_dmae_host2host(struct ecore_hwfn *p_hwfn,
       struct ecore_ptt *p_ptt,
       dma_addr_t source_addr,
       dma_addr_t dest_addr,
       u32 size_in_dwords,
       struct ecore_dmae_params *p_params)
{
 enum _ecore_status_t rc;

 OSAL_SPIN_LOCK(&p_hwfn->dmae_info.lock);

 rc = ecore_dmae_execute_command(p_hwfn, p_ptt, source_addr,
     dest_addr,
     ECORE_DMAE_ADDRESS_HOST_PHYS,
     ECORE_DMAE_ADDRESS_HOST_PHYS,
     size_in_dwords,
     p_params);

 OSAL_SPIN_UNLOCK(&p_hwfn->dmae_info.lock);

 return rc;
}
