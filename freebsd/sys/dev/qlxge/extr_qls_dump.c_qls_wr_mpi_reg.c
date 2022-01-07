
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int qla_host_t ;


 int Q81_CTL_PROC_ADDR ;
 int Q81_CTL_PROC_ADDR_ERR ;
 int Q81_CTL_PROC_ADDR_RDY ;
 int Q81_CTL_PROC_DATA ;
 int WRITE_REG32 (int *,int ,int ) ;
 int qls_wait_reg_rdy (int *,int ,int ,int ) ;

__attribute__((used)) static int
qls_wr_mpi_reg(qla_host_t *ha, uint32_t reg, uint32_t data)
{
        int ret = 0;

        ret = qls_wait_reg_rdy(ha, Q81_CTL_PROC_ADDR, Q81_CTL_PROC_ADDR_RDY,
   Q81_CTL_PROC_ADDR_ERR);
        if (ret)
                goto exit_qls_wr_mpi_reg;

        WRITE_REG32(ha, Q81_CTL_PROC_DATA, data);

        WRITE_REG32(ha, Q81_CTL_PROC_ADDR, reg);

        ret = qls_wait_reg_rdy(ha, Q81_CTL_PROC_ADDR, Q81_CTL_PROC_ADDR_RDY,
   Q81_CTL_PROC_ADDR_ERR);
exit_qls_wr_mpi_reg:
        return (ret);
}
