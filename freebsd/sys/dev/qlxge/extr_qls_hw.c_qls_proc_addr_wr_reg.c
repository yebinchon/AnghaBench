
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int qla_host_t ;


 int Q81_CTL_PROC_ADDR ;
 int Q81_CTL_PROC_DATA ;
 int WRITE_REG32 (int *,int ,int) ;
 int qls_wait_for_proc_addr_ready (int *) ;

__attribute__((used)) static int
qls_proc_addr_wr_reg(qla_host_t *ha, uint32_t addr_module, uint32_t reg,
 uint32_t data)
{
 int ret;
 uint32_t value;

 ret = qls_wait_for_proc_addr_ready(ha);

 if (ret)
  goto qls_proc_addr_wr_reg_exit;

 WRITE_REG32(ha, Q81_CTL_PROC_DATA, data);

 value = addr_module | reg;

 WRITE_REG32(ha, Q81_CTL_PROC_ADDR, value);

 ret = qls_wait_for_proc_addr_ready(ha);

qls_proc_addr_wr_reg_exit:
 return (ret);
}
