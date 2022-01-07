
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {TYPE_1__* mcp_info; } ;
struct TYPE_2__ {int mfw_mb_length; int mfw_mb_cur; int mfw_mb_shadow; } ;


 int OSAL_MEMCPY (int ,int ,int ) ;
 int ecore_mcp_read_mb (struct ecore_hwfn*,struct ecore_ptt*) ;

__attribute__((used)) static void ecore_reset_mb_shadow(struct ecore_hwfn *p_hwfn,
   struct ecore_ptt *p_main_ptt)
{

 ecore_mcp_read_mb(p_hwfn, p_main_ptt);
 OSAL_MEMCPY(p_hwfn->mcp_info->mfw_mb_shadow,
      p_hwfn->mcp_info->mfw_mb_cur,
      p_hwfn->mcp_info->mfw_mb_length);
}
