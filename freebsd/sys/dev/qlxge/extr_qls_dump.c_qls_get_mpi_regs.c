
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int qla_host_t ;


 int qls_rd_mpi_reg (int *,int,int*) ;

__attribute__((used)) static int
qls_get_mpi_regs(qla_host_t *ha, uint32_t *buf, uint32_t offset, uint32_t count)
{
 int i, ret = 0;

 for (i = 0; i < count; i++, buf++) {

  ret = qls_rd_mpi_reg(ha, (offset + i), buf);

  if (ret)
   return ret;
 }

 return (ret);
}
