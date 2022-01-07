
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct ecore_hwfn {int p_dev; } ;


 scalar_t__ ECORE_IS_E5 (int ) ;
 int MAX_NUM_VOQS_E4 ;
 scalar_t__ QM_BYPASS_EN ;
 int QM_E5_NUM_EXT_VOQ ;
 int QM_PF_RL_UPPER_BOUND ;
 int QM_REG_AFULLQMBYPTHRPFRL_RT_OFFSET ;
 int QM_REG_RLPFENABLE_RT_OFFSET ;
 int QM_REG_RLPFPERIODTIMER_RT_OFFSET ;
 int QM_REG_RLPFPERIOD_RT_OFFSET ;
 int QM_REG_RLPFVOQENABLE_MSB_RT_OFFSET ;
 int QM_REG_RLPFVOQENABLE_RT_OFFSET ;
 int QM_RL_PERIOD_CLK_25M ;
 int STORE_RT_REG (struct ecore_hwfn*,int ,int) ;

__attribute__((used)) static void ecore_enable_pf_rl(struct ecore_hwfn *p_hwfn,
          bool pf_rl_en)
{
 STORE_RT_REG(p_hwfn, QM_REG_RLPFENABLE_RT_OFFSET, pf_rl_en ? 1 : 0);
 if (pf_rl_en) {
  u8 num_ext_voqs = ECORE_IS_E5(p_hwfn->p_dev) ? QM_E5_NUM_EXT_VOQ : MAX_NUM_VOQS_E4;
  u64 voq_bit_mask = ((u64)1 << num_ext_voqs) - 1;


  STORE_RT_REG(p_hwfn, QM_REG_RLPFVOQENABLE_RT_OFFSET, (u32)voq_bit_mask);






  STORE_RT_REG(p_hwfn, QM_REG_RLPFPERIOD_RT_OFFSET, QM_RL_PERIOD_CLK_25M);
  STORE_RT_REG(p_hwfn, QM_REG_RLPFPERIODTIMER_RT_OFFSET, QM_RL_PERIOD_CLK_25M);


  if (QM_BYPASS_EN)
   STORE_RT_REG(p_hwfn, QM_REG_AFULLQMBYPTHRPFRL_RT_OFFSET, QM_PF_RL_UPPER_BOUND);
 }
}
