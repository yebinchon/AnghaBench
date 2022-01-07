
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int qla_host_t ;


 int Q81_CTL_XGMAC_ADDR ;
 int Q81_CTL_XGMAC_DATA ;
 int Q81_XGMAC_ADDR_R ;
 int Q81_XGMAC_ADDR_RDY ;
 int Q81_XGMAC_ADDR_XME ;
 int READ_REG32 (int *,int ) ;
 int WRITE_REG32 (int *,int ,int) ;
 int qls_wait_reg_rdy (int *,int ,int ,int ) ;

__attribute__((used)) static int
qls_rd_xgmac_reg(qla_host_t *ha, uint32_t reg, uint32_t*data)
{
 int ret = 0;

 ret = qls_wait_reg_rdy(ha, Q81_CTL_XGMAC_ADDR, Q81_XGMAC_ADDR_RDY,
   Q81_XGMAC_ADDR_XME);
 if (ret)
  goto exit_qls_rd_xgmac_reg;

 WRITE_REG32(ha, Q81_CTL_XGMAC_ADDR, (reg | Q81_XGMAC_ADDR_R));

 ret = qls_wait_reg_rdy(ha, Q81_CTL_XGMAC_ADDR, Q81_XGMAC_ADDR_RDY,
   Q81_XGMAC_ADDR_XME);
 if (ret)
  goto exit_qls_rd_xgmac_reg;

 *data = READ_REG32(ha, Q81_CTL_XGMAC_DATA);

exit_qls_rd_xgmac_reg:
 return ret;
}
