
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qla_host_t ;


 int Q8_PEG_0_CLR1 ;
 int Q8_PEG_0_CLR2 ;
 int Q8_PEG_1_CLR1 ;
 int Q8_PEG_1_CLR2 ;
 int Q8_PEG_2_CLR1 ;
 int Q8_PEG_2_CLR2 ;
 int Q8_PEG_3_CLR1 ;
 int Q8_PEG_3_CLR2 ;
 int Q8_PEG_4_CLR1 ;
 int Q8_PEG_4_CLR2 ;
 int Q8_PEG_D_RESET1 ;
 int Q8_PEG_D_RESET2 ;
 int Q8_PEG_I_RESET ;
 int WRITE_OFFSET32 (int *,int ,int) ;

__attribute__((used)) static void
qla_init_peg_regs(qla_host_t *ha)
{
 WRITE_OFFSET32(ha, Q8_PEG_D_RESET1, 0x001E);
 WRITE_OFFSET32(ha, Q8_PEG_D_RESET2, 0x0008);
 WRITE_OFFSET32(ha, Q8_PEG_I_RESET, 0x0008);
 WRITE_OFFSET32(ha, Q8_PEG_0_CLR1, 0x0000);
 WRITE_OFFSET32(ha, Q8_PEG_0_CLR2, 0x0000);
 WRITE_OFFSET32(ha, Q8_PEG_1_CLR1, 0x0000);
 WRITE_OFFSET32(ha, Q8_PEG_1_CLR2, 0x0000);
 WRITE_OFFSET32(ha, Q8_PEG_2_CLR1, 0x0000);
 WRITE_OFFSET32(ha, Q8_PEG_2_CLR2, 0x0000);
 WRITE_OFFSET32(ha, Q8_PEG_3_CLR1, 0x0000);
 WRITE_OFFSET32(ha, Q8_PEG_3_CLR2, 0x0000);
 WRITE_OFFSET32(ha, Q8_PEG_4_CLR1, 0x0000);
 WRITE_OFFSET32(ha, Q8_PEG_4_CLR2, 0x0000);
}
