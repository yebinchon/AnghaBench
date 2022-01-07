
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {TYPE_1__* p_dev; } ;
struct TYPE_2__ {int chk_reg_fifo; } ;


 scalar_t__ CHIP_REV_IS_SLOW (TYPE_1__*) ;
 int GRC_REG_TRACE_FIFO_VALID_DATA ;
 int OSAL_UDELAY (int) ;
 scalar_t__ REG_RD (struct ecore_hwfn*,int ) ;
 int ecore_set_ptt (struct ecore_hwfn*,struct ecore_ptt*,int ) ;

__attribute__((used)) static bool ecore_is_reg_fifo_empty(struct ecore_hwfn *p_hwfn,
        struct ecore_ptt *p_ptt)
{
 bool is_empty = 1;
 u32 bar_addr;

 if (!p_hwfn->p_dev->chk_reg_fifo)
  goto out;


 bar_addr = ecore_set_ptt(p_hwfn, p_ptt, GRC_REG_TRACE_FIFO_VALID_DATA);
 is_empty = REG_RD(p_hwfn, bar_addr) == 0;


 if (CHIP_REV_IS_SLOW(p_hwfn->p_dev))
  OSAL_UDELAY(100);


out:
 return is_empty;
}
