
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {TYPE_1__* mcp_info; int p_dev; } ;
struct TYPE_2__ {scalar_t__ mfw_mb_cur; scalar_t__ mfw_mb_addr; int public_base; int mfw_mb_length; } ;
typedef int OSAL_BE32 ;


 scalar_t__ CHIP_REV_IS_TEDIBEAR (int ) ;
 int MFW_DRV_MSG_MAX_DWORDS (int ) ;
 int OSAL_BE32_TO_CPU (int ) ;
 int ecore_rd (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__) ;

void ecore_mcp_read_mb(struct ecore_hwfn *p_hwfn,
         struct ecore_ptt *p_ptt)
{
 u32 length = MFW_DRV_MSG_MAX_DWORDS(p_hwfn->mcp_info->mfw_mb_length);
 OSAL_BE32 tmp;
 u32 i;


 if (CHIP_REV_IS_TEDIBEAR(p_hwfn->p_dev))
  return;


 if (!p_hwfn->mcp_info->public_base)
  return;

 for (i = 0; i < length; i++) {
  tmp = ecore_rd(p_hwfn, p_ptt,
          p_hwfn->mcp_info->mfw_mb_addr +
          (i << 2) + sizeof(u32));

  ((u32 *)p_hwfn->mcp_info->mfw_mb_cur)[i] =
      OSAL_BE32_TO_CPU(tmp);
 }
}
