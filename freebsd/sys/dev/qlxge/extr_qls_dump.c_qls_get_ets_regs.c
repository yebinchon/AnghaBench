
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int qla_host_t ;


 int Q81_CTL_CNA_ENH_TX_SCHD ;
 int Q81_CTL_NIC_ENH_TX_SCHD ;
 int READ_REG32 (int *,int ) ;
 int WRITE_REG32 (int *,int ,int) ;

__attribute__((used)) static int
qls_get_ets_regs(qla_host_t *ha, uint32_t *buf)
{
 int ret = 0;
 int i;

 for(i = 0; i < 8; i ++, buf ++) {
  WRITE_REG32(ha, Q81_CTL_NIC_ENH_TX_SCHD, ((i << 29) | 0x08000000));

  *buf = READ_REG32(ha, Q81_CTL_NIC_ENH_TX_SCHD);
 }

 for(i = 0; i < 2; i ++, buf ++) {
  WRITE_REG32(ha, Q81_CTL_CNA_ENH_TX_SCHD, ((i << 29) | 0x08000000));

  *buf = READ_REG32(ha, Q81_CTL_CNA_ENH_TX_SCHD);
 }

 return ret;
}
