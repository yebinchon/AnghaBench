
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef unsigned int u32 ;
struct TYPE_2__ {unsigned int sf_size; unsigned int sf_nsec; } ;
struct adapter {TYPE_1__ params; } ;


 unsigned int CUDBG_SF_SECTOR_SIZE ;
 unsigned int DIV_ROUND_UP (unsigned int,unsigned int) ;
 unsigned int SF_PAGE_SIZE ;
 int t4_flash_erase_sectors (struct adapter*,unsigned int,unsigned int) ;
 int t4_write_flash (struct adapter*,unsigned int,unsigned int,int *,int ) ;

int write_flash(struct adapter *adap, u32 start_sec, void *data, u32 size)
{
 unsigned int addr;
 unsigned int i, n;
 unsigned int sf_sec_size;
 int rc = 0;

 u8 *ptr = (u8 *)data;

 sf_sec_size = adap->params.sf_size/adap->params.sf_nsec;

 addr = start_sec * CUDBG_SF_SECTOR_SIZE;
 i = DIV_ROUND_UP(size,
   sf_sec_size);

 rc = t4_flash_erase_sectors(adap, start_sec,
     start_sec + i - 1);





 if (rc || size == 0)
  goto out;


 for (i = 0; i < size; i += SF_PAGE_SIZE) {
  if ((size - i) < SF_PAGE_SIZE)
   n = size - i;
  else
   n = SF_PAGE_SIZE;
  rc = t4_write_flash(adap, addr, n, ptr, 0);
  if (rc)
   goto out;

  addr += n;
  ptr += n;
 }

 return 0;
out:
 return rc;
}
