
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int pci_func; } ;
typedef TYPE_1__ qla_host_t ;


 scalar_t__ Q81_FUNC0_MBX_OUT_REG0 ;
 scalar_t__ Q81_FUNC1_MBX_OUT_REG0 ;
 int qls_mpi_risc_rd_reg (TYPE_1__*,int ,int *) ;

int
qls_mbx_rd_reg(qla_host_t *ha, uint32_t reg, uint32_t *data)
{
 int ret;

 if ((ha->pci_func & 0x1) == 0)
  reg += Q81_FUNC0_MBX_OUT_REG0;
 else
  reg += Q81_FUNC1_MBX_OUT_REG0;

 ret = qls_mpi_risc_rd_reg(ha, reg, data);

 return (ret);
}
