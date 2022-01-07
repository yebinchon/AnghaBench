
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sf_nsec; } ;
struct adapter {TYPE_1__ params; } ;


 int A_SF_OP ;
 int CH_ERR (struct adapter*,char*,int,int) ;
 int EINVAL ;
 int SF_ERASE_SECTOR ;
 int SF_WR_ENABLE ;
 int flash_wait_op (struct adapter*,int,int) ;
 int sf1_write (struct adapter*,int,int ,int,int) ;
 int t4_write_reg (struct adapter*,int ,int ) ;

int t4_flash_erase_sectors(struct adapter *adapter, int start, int end)
{
 int ret = 0;

 if (end >= adapter->params.sf_nsec)
  return -EINVAL;

 while (start <= end) {
  if ((ret = sf1_write(adapter, 1, 0, 1, SF_WR_ENABLE)) != 0 ||
      (ret = sf1_write(adapter, 4, 0, 1,
         SF_ERASE_SECTOR | (start << 8))) != 0 ||
      (ret = flash_wait_op(adapter, 14, 500)) != 0) {
   CH_ERR(adapter,
    "erase of flash sector %d failed, error %d\n",
    start, ret);
   break;
  }
  start++;
 }
 t4_write_reg(adapter, A_SF_OP, 0);
 return ret;
}
