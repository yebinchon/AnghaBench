
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int qla_host_t ;


 int Q81_CTL_PROC_ADDR_MPI_RISC ;
 int qls_proc_addr_rd_reg (int *,int ,int ,int *) ;

int
qls_mpi_risc_rd_reg(qla_host_t *ha, uint32_t reg, uint32_t *data)
{
 int ret;

 ret = qls_proc_addr_rd_reg(ha, Q81_CTL_PROC_ADDR_MPI_RISC,
   reg, data);
 return (ret);
}
