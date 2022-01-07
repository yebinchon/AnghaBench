
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int qla_host_t ;


 int Q81_CTL_FLASH_ADDR ;
 int Q81_CTL_FLASH_ADDR_R ;
 int Q81_CTL_FLASH_DATA ;
 int READ_REG32 (int *,int ) ;
 int WRITE_REG32 (int *,int ,int) ;
 int qls_wait_for_flash_ready (int *) ;

int
qls_rd_flash32(qla_host_t *ha, uint32_t addr, uint32_t *data)
{
 int ret;

 ret = qls_wait_for_flash_ready(ha);

 if (ret)
  return (ret);

 WRITE_REG32(ha, Q81_CTL_FLASH_ADDR, (addr | Q81_CTL_FLASH_ADDR_R));

 ret = qls_wait_for_flash_ready(ha);

 if (ret)
  return (ret);

 *data = READ_REG32(ha, Q81_CTL_FLASH_DATA);

 return 0;
}
