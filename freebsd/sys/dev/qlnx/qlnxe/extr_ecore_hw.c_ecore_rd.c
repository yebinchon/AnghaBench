
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int p_dev; } ;


 scalar_t__ CHIP_REV_IS_SLOW (int ) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ,int ,int ) ;
 int ECORE_MSG_HW ;
 int OSAL_UDELAY (int) ;
 int OSAL_WARN (int,char*,int ) ;
 int REG_RD (struct ecore_hwfn*,int ) ;
 int ecore_is_reg_fifo_empty (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_set_ptt (struct ecore_hwfn*,struct ecore_ptt*,int ) ;

u32 ecore_rd(struct ecore_hwfn *p_hwfn, struct ecore_ptt *p_ptt, u32 hw_addr)
{
 bool prev_fifo_err;
 u32 bar_addr, val;

 prev_fifo_err = !ecore_is_reg_fifo_empty(p_hwfn, p_ptt);

 bar_addr = ecore_set_ptt(p_hwfn, p_ptt, hw_addr);
 val = REG_RD(p_hwfn, bar_addr);

 DP_VERBOSE(p_hwfn, ECORE_MSG_HW,
     "bar_addr 0x%x, hw_addr 0x%x, val 0x%x\n",
     bar_addr, hw_addr, val);


 if (CHIP_REV_IS_SLOW(p_hwfn->p_dev))
  OSAL_UDELAY(100);


 OSAL_WARN(!prev_fifo_err && !ecore_is_reg_fifo_empty(p_hwfn, p_ptt),
    "reg_fifo error was caused by a call to ecore_rd(0x%x)\n",
    hw_addr);

 return val;
}
