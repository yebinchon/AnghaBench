
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int qla_host_t ;


 int Q8_FLASH_SECTOR_SIZE ;
 int Q8_SEM2_UNLOCK ;
 scalar_t__ qla_erase_flash_sector (int *,int) ;
 int qla_flash_protect (int *) ;
 int qla_flash_unprotect (int *) ;
 int qla_p3p_sem_lock2 (int *) ;
 int qla_sem_unlock (int *,int ) ;
 int qla_wait_for_flash_unprotect (int *) ;

int
qla_erase_flash(qla_host_t *ha, uint32_t off, uint32_t size)
{
 int rval = 0;
 uint32_t start;

 if (off & (Q8_FLASH_SECTOR_SIZE -1))
  return -1;

 if ((rval = qla_p3p_sem_lock2(ha)))
  goto qla_erase_flash_exit;

 if ((rval = qla_flash_unprotect(ha)))
  goto qla_erase_flash_unlock_exit;

 if ((rval = qla_wait_for_flash_unprotect(ha)))
  goto qla_erase_flash_unlock_exit;

 for (start = off; start < (off + size); start = start + 0x10000) {
  if (qla_erase_flash_sector(ha, start)) {
   rval = -1;
   break;
  }
 }

 rval = qla_flash_protect(ha);

qla_erase_flash_unlock_exit:
 qla_sem_unlock(ha, Q8_SEM2_UNLOCK);

qla_erase_flash_exit:
 return (rval);
}
