
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int qla_host_t ;


 int MAX_RX_RINGS ;
 int Q81_CTL_INTR_ENABLE ;
 int READ_REG32 (int *,int ) ;
 int WRITE_REG32 (int *,int ,int) ;

__attribute__((used)) static void
qls_get_intr_states(qla_host_t *ha, uint32_t *buf)
{
 int i;

 for (i = 0; i < MAX_RX_RINGS; i++, buf++) {

  WRITE_REG32(ha, Q81_CTL_INTR_ENABLE, (0x037f0300 + i));

  *buf = READ_REG32(ha, Q81_CTL_INTR_ENABLE);
 }
}
