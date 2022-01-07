
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int qla_host_t ;


 scalar_t__ Q81_BAD_DATA ;
 int qls_rd_ofunc_serdes_reg (int *,scalar_t__,scalar_t__*) ;
 int qls_rd_serdes_reg (int *,scalar_t__,scalar_t__*) ;

__attribute__((used)) static void
qls_get_both_serdes(qla_host_t *ha, uint32_t addr, uint32_t *dptr,
 uint32_t *ind_ptr, uint32_t dvalid, uint32_t ind_valid)
{
 int ret = -1;

 if (dvalid)
  ret = qls_rd_serdes_reg(ha, addr, dptr);

 if (ret)
  *dptr = Q81_BAD_DATA;

 ret = -1;

 if(ind_valid)
  ret = qls_rd_ofunc_serdes_reg(ha, addr, ind_ptr);

 if (ret)
  *ind_ptr = Q81_BAD_DATA;
}
