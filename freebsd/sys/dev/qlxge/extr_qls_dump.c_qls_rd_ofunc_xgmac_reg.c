
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
 int qls_rd_ofunc_reg (int *,int ) ;
 int qls_wait_ofunc_reg_rdy (int *,int,int,int ) ;
 int qls_wr_ofunc_reg (int *,int,int) ;

__attribute__((used)) static int
qls_rd_ofunc_xgmac_reg(qla_host_t *ha, uint32_t reg, uint32_t *data)
{
 int ret = 0;

 ret = qls_wait_ofunc_reg_rdy(ha, (Q81_CTL_XGMAC_ADDR >> 2),
   Q81_XGMAC_ADDR_RDY, Q81_XGMAC_ADDR_XME);

 if (ret)
  goto exit_qls_rd_ofunc_xgmac_reg;

 qls_wr_ofunc_reg(ha, (Q81_XGMAC_ADDR_RDY >> 2),
  (reg | Q81_XGMAC_ADDR_R));

 ret = qls_wait_ofunc_reg_rdy(ha, (Q81_CTL_XGMAC_ADDR >> 2),
   Q81_XGMAC_ADDR_RDY, Q81_XGMAC_ADDR_XME);
 if (ret)
  goto exit_qls_rd_ofunc_xgmac_reg;

 *data = qls_rd_ofunc_reg(ha, Q81_CTL_XGMAC_DATA);

exit_qls_rd_ofunc_xgmac_reg:
 return ret;
}
