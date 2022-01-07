
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
 int qls_rd_ofunc_reg (int *,int) ;
 int qls_wait_ofunc_reg_rdy (int *,int,int ,int ) ;
 int qls_wr_ofunc_reg (int *,int,int) ;

__attribute__((used)) static int
qls_rd_ofunc_serdes_reg(qla_host_t *ha, uint32_t reg, uint32_t *data)
{
 int ret;


 ret = qls_wait_ofunc_reg_rdy(ha, (Q81_CTL_XG_SERDES_ADDR >> 2),
   Q81_XG_SERDES_ADDR_RDY, 0);
 if (ret)
  goto exit_qls_rd_ofunc_serdes_reg;


 qls_wr_ofunc_reg(ha, (Q81_CTL_XG_SERDES_ADDR >> 2),
  (reg | Q81_XG_SERDES_ADDR_READ));


 ret = qls_wait_ofunc_reg_rdy(ha, (Q81_CTL_XG_SERDES_ADDR >> 2),
   Q81_XG_SERDES_ADDR_RDY, 0);
 if (ret)
  goto exit_qls_rd_ofunc_serdes_reg;


 *data = qls_rd_ofunc_reg(ha, (Q81_CTL_XG_SERDES_DATA >> 2));

exit_qls_rd_ofunc_serdes_reg:
 return ret;
}
