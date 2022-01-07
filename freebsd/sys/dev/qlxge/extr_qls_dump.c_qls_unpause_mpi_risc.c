
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int qla_host_t ;


 int Q81_CTL_HCS_CMD_CLR_RISC_PAUSE ;
 int Q81_CTL_HCS_RISC_PAUSED ;
 int Q81_CTL_HOST_CMD_STATUS ;
 int READ_REG32 (int *,int ) ;
 int WRITE_REG32 (int *,int ,int ) ;

__attribute__((used)) static int
qls_unpause_mpi_risc(qla_host_t *ha)
{
 uint32_t data;

 data = READ_REG32(ha, Q81_CTL_HOST_CMD_STATUS);

 if (!(data & Q81_CTL_HCS_RISC_PAUSED))
  return -1;

 WRITE_REG32(ha, Q81_CTL_HOST_CMD_STATUS, Q81_CTL_HCS_CMD_CLR_RISC_PAUSE);


 return 0;
}
