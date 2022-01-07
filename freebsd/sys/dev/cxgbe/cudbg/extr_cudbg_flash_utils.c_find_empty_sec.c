
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cudbg_flash_sec_info {int* sec_bitmap; } ;


 int CUDBG_SF_MAX_SECTOR ;
 int CUDBG_START_SEC ;
 int CUDBG_STATUS_FLASH_FULL ;

__attribute__((used)) static int
find_empty_sec(struct cudbg_flash_sec_info *sec_info)
{
 int i, index, bit;

 for (i = CUDBG_START_SEC; i < CUDBG_SF_MAX_SECTOR; i++) {
  index = (i - CUDBG_START_SEC) / 8;
  bit = (i - CUDBG_START_SEC) % 8;
  if (!(sec_info->sec_bitmap[index] & (1 << bit)))
   return i;
 }

 return CUDBG_STATUS_FLASH_FULL;
}
