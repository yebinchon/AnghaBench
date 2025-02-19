
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef scalar_t__ u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum dbg_storms { ____Placeholder_dbg_storms } dbg_storms ;
struct TYPE_2__ {scalar_t__ sem_fast_mem_addr; } ;


 size_t MAX_DBG_STORMS ;
 int OSAL_MSLEEP (int ) ;
 scalar_t__ SEM_FAST_REG_STALL_0_BB_K2 ;
 int STALL_DELAY_MS ;
 int ecore_grc_is_storm_included (struct ecore_hwfn*,int) ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__,int) ;
 TYPE_1__* s_storm_defs ;

__attribute__((used)) static void ecore_grc_stall_storms(struct ecore_hwfn *p_hwfn,
           struct ecore_ptt *p_ptt,
           bool stall)
{
 u32 reg_addr;
 u8 storm_id;

 for (storm_id = 0; storm_id < MAX_DBG_STORMS; storm_id++) {
  if (!ecore_grc_is_storm_included(p_hwfn, (enum dbg_storms)storm_id))
   continue;

  reg_addr = s_storm_defs[storm_id].sem_fast_mem_addr + SEM_FAST_REG_STALL_0_BB_K2;
  ecore_wr(p_hwfn, p_ptt, reg_addr, stall ? 1 : 0);
 }

 OSAL_MSLEEP(STALL_DELAY_MS);
}
