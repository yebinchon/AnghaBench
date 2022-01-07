
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int adapter_t ;


 int SF_ERASE_SECTOR ;
 int SF_WR_ENABLE ;
 int flash_wait_op (int *,int,int) ;
 int sf1_write (int *,int,int ,int) ;

__attribute__((used)) static int t3_flash_erase_sectors(adapter_t *adapter, int start, int end)
{
 while (start <= end) {
  int ret;

  if ((ret = sf1_write(adapter, 1, 0, SF_WR_ENABLE)) != 0 ||
      (ret = sf1_write(adapter, 4, 0,
         SF_ERASE_SECTOR | (start << 8))) != 0 ||
      (ret = flash_wait_op(adapter, 5, 500)) != 0)
   return ret;
  start++;
 }
 return 0;
}
