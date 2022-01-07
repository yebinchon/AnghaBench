
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int qla_host_t ;


 scalar_t__ qla_flash_wait_for_write_complete (int *) ;
 scalar_t__ qla_flash_write32 (int *,int ,int ) ;
 scalar_t__ qla_flash_write_enable (int *) ;

__attribute__((used)) static int
qla_flash_write(qla_host_t *ha, uint32_t off, uint32_t data)
{
 if (qla_flash_write_enable(ha) != 0)
  return(-1);

 if (qla_flash_write32(ha, off, data) != 0)
  return -1;

 if (qla_flash_wait_for_write_complete(ha))
  return -1;

 return 0;
}
