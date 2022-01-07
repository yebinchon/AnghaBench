
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct nae_port_config {int ieee1588_userval; int ieee1588_ptpoff; int ieee1588_tmr1; int ieee1588_tmr2; int ieee1588_tmr3; int ieee1588_inc_intg; int ieee1588_inc_num; int ieee1588_inc_den; } ;


 int NAE_1588_PTP_CONTROL ;
 int NAE_1588_PTP_INC_DEN ;
 int NAE_1588_PTP_INC_INTG ;
 int NAE_1588_PTP_INC_NUM ;
 int NAE_1588_PTP_OFFSET_HI ;
 int NAE_1588_PTP_OFFSET_LO ;
 int NAE_1588_PTP_TMR1_HI ;
 int NAE_1588_PTP_TMR1_LO ;
 int NAE_1588_PTP_TMR2_HI ;
 int NAE_1588_PTP_TMR2_LO ;
 int NAE_1588_PTP_TMR3_HI ;
 int NAE_1588_PTP_TMR3_LO ;
 int NAE_1588_PTP_USER_VALUE_HI ;
 int NAE_1588_PTP_USER_VALUE_LO ;
 int nlm_read_nae_reg (int ,int ) ;
 int nlm_write_nae_reg (int ,int ,int) ;

void
nlm_setup_1588_timer(uint64_t nae_base, struct nae_port_config *cfg)
{
 uint32_t hi, lo, val;

 hi = cfg[0].ieee1588_userval >> 32;
 lo = cfg[0].ieee1588_userval & 0xffffffff;
 nlm_write_nae_reg(nae_base, NAE_1588_PTP_USER_VALUE_HI, hi);
 nlm_write_nae_reg(nae_base, NAE_1588_PTP_USER_VALUE_LO, lo);

 hi = cfg[0].ieee1588_ptpoff >> 32;
 lo = cfg[0].ieee1588_ptpoff & 0xffffffff;
 nlm_write_nae_reg(nae_base, NAE_1588_PTP_OFFSET_HI, hi);
 nlm_write_nae_reg(nae_base, NAE_1588_PTP_OFFSET_LO, lo);

 hi = cfg[0].ieee1588_tmr1 >> 32;
 lo = cfg[0].ieee1588_tmr1 & 0xffffffff;
 nlm_write_nae_reg(nae_base, NAE_1588_PTP_TMR1_HI, hi);
 nlm_write_nae_reg(nae_base, NAE_1588_PTP_TMR1_LO, lo);

 hi = cfg[0].ieee1588_tmr2 >> 32;
 lo = cfg[0].ieee1588_tmr2 & 0xffffffff;
 nlm_write_nae_reg(nae_base, NAE_1588_PTP_TMR2_HI, hi);
 nlm_write_nae_reg(nae_base, NAE_1588_PTP_TMR2_LO, lo);

 hi = cfg[0].ieee1588_tmr3 >> 32;
 lo = cfg[0].ieee1588_tmr3 & 0xffffffff;
 nlm_write_nae_reg(nae_base, NAE_1588_PTP_TMR3_HI, hi);
 nlm_write_nae_reg(nae_base, NAE_1588_PTP_TMR3_LO, lo);

 nlm_write_nae_reg(nae_base, NAE_1588_PTP_INC_INTG,
     cfg[0].ieee1588_inc_intg);
 nlm_write_nae_reg(nae_base, NAE_1588_PTP_INC_NUM,
     cfg[0].ieee1588_inc_num);
 nlm_write_nae_reg(nae_base, NAE_1588_PTP_INC_DEN,
     cfg[0].ieee1588_inc_den);

 val = nlm_read_nae_reg(nae_base, NAE_1588_PTP_CONTROL);

 nlm_write_nae_reg(nae_base, NAE_1588_PTP_CONTROL, val | (0x1 << 1));
 nlm_write_nae_reg(nae_base, NAE_1588_PTP_CONTROL, val);

 nlm_write_nae_reg(nae_base, NAE_1588_PTP_CONTROL, val | (0x1 << 6));
 nlm_write_nae_reg(nae_base, NAE_1588_PTP_CONTROL, val);
}
