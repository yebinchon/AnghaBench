
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct ecore_ptt {int dummy; } ;
struct ecore_igu_block {int vector_number; int is_pf; int function_id; } ;
struct TYPE_4__ {TYPE_1__* p_igu_info; } ;
struct ecore_hwfn {TYPE_2__ hw_info; } ;
struct TYPE_3__ {struct ecore_igu_block* entry; } ;


 scalar_t__ CAU_REG_PI_MEMORY ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*,size_t) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,size_t,int ,int ,int ) ;
 int ECORE_MSG_INTR ;
 int IGU_CLEANUP_SLEEP_LENGTH ;
 scalar_t__ IGU_REG_WRITE_DONE_PENDING ;
 int OSAL_UDELAY (int) ;
 int ecore_int_igu_cleanup_sb (struct ecore_hwfn*,struct ecore_ptt*,size_t,int,size_t) ;
 int ecore_rd (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__) ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__,int ) ;

void ecore_int_igu_init_pure_rt_single(struct ecore_hwfn *p_hwfn,
           struct ecore_ptt *p_ptt,
           u16 igu_sb_id, u16 opaque, bool b_set)
{
 struct ecore_igu_block *p_block;
 int pi, i;

 p_block = &p_hwfn->hw_info.p_igu_info->entry[igu_sb_id];
 DP_VERBOSE(p_hwfn, ECORE_MSG_INTR,
     "Cleaning SB [%04x]: func_id= %d is_pf = %d vector_num = 0x%0x\n",
     igu_sb_id, p_block->function_id, p_block->is_pf,
     p_block->vector_number);


 if (b_set)
  ecore_int_igu_cleanup_sb(p_hwfn, p_ptt, igu_sb_id, 1, opaque);


 ecore_int_igu_cleanup_sb(p_hwfn, p_ptt, igu_sb_id, 0, opaque);


 for (i = 0; i < IGU_CLEANUP_SLEEP_LENGTH; i++) {
  u32 val;

  val = ecore_rd(p_hwfn, p_ptt,
          IGU_REG_WRITE_DONE_PENDING +
          ((igu_sb_id / 32) * 4));
  if (val & (1 << (igu_sb_id % 32)))
   OSAL_UDELAY(10);
  else
   break;
 }
 if (i == IGU_CLEANUP_SLEEP_LENGTH)
  DP_NOTICE(p_hwfn, 1,
     "Failed SB[0x%08x] still appearing in WRITE_DONE_PENDING\n",
     igu_sb_id);


 for (pi = 0; pi < 12; pi++)
  ecore_wr(p_hwfn, p_ptt,
    CAU_REG_PI_MEMORY + (igu_sb_id * 12 + pi) * 4, 0);
}
