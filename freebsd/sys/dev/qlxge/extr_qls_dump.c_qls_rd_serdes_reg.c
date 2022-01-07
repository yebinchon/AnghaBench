
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int qla_host_t ;


 int Q81_CTL_XG_SERDES_ADDR ;
 int Q81_CTL_XG_SERDES_DATA ;
 int Q81_XG_SERDES_ADDR_RDY ;
 int Q81_XG_SERDES_ADDR_READ ;
 int READ_REG32 (int *,int ) ;
 int WRITE_REG32 (int *,int ,int) ;
 int qls_wait_reg_rdy (int *,int ,int ,int ) ;

__attribute__((used)) static int
qls_rd_serdes_reg(qla_host_t *ha, uint32_t reg, uint32_t *data)
{
 int ret;

 ret = qls_wait_reg_rdy(ha, Q81_CTL_XG_SERDES_ADDR,
   Q81_XG_SERDES_ADDR_RDY, 0);

 if (ret)
  goto exit_qls_rd_serdes_reg;

 WRITE_REG32(ha, Q81_CTL_XG_SERDES_ADDR, (reg | Q81_XG_SERDES_ADDR_READ));


 ret = qls_wait_reg_rdy(ha, Q81_CTL_XG_SERDES_ADDR,
   Q81_XG_SERDES_ADDR_RDY, 0);

 if (ret)
  goto exit_qls_rd_serdes_reg;

 *data = READ_REG32(ha, Q81_CTL_XG_SERDES_DATA);

exit_qls_rd_serdes_reg:

 return ret;
}
