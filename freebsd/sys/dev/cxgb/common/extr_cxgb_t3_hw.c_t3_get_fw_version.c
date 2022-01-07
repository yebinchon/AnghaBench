
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int adapter_t ;


 int FW_VERS_ADDR ;
 int FW_VERS_ADDR_PRE8 ;
 int t3_read_flash (int *,int ,int,int*,int ) ;

int t3_get_fw_version(adapter_t *adapter, u32 *vers)
{
 int ret = t3_read_flash(adapter, FW_VERS_ADDR, 1, vers, 0);
 if (!ret && *vers != 0xffffffff)
  return 0;
 else
  return t3_read_flash(adapter, FW_VERS_ADDR_PRE8, 1, vers, 0);
}
