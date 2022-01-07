
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int qla_host_t ;


 int Q81_CTL_PROC_ADDR_RISC_INT_REG ;
 int Q81_MPI_CORE_SH_REGS_CNT ;
 int Q81_RISC_124 ;
 int Q81_RISC_127 ;
 int Q81_SHADOW_OFFSET ;
 int qls_mpi_risc_rd_reg (int *,int,int*) ;
 int qls_wr_mpi_reg (int *,int,int) ;

__attribute__((used)) static int
qls_get_mpi_shadow_regs(qla_host_t *ha, uint32_t *buf)
{
 uint32_t i;
 int ret;





 for (i = 0; i < Q81_MPI_CORE_SH_REGS_CNT; i++, buf++) {

  ret = qls_wr_mpi_reg(ha,
    (Q81_CTL_PROC_ADDR_RISC_INT_REG | 0x0000007c),
                                (0xb0000000 | i << 20));
  if (ret)
   goto exit_qls_get_mpi_shadow_regs;

  ret = qls_mpi_risc_rd_reg(ha,
    (Q81_CTL_PROC_ADDR_RISC_INT_REG | 0x0000007f),
     buf);
  if (ret)
   goto exit_qls_get_mpi_shadow_regs;
 }

exit_qls_get_mpi_shadow_regs:
 return ret;
}
