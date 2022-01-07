
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fw_hdr {int dummy; } ;
struct adapter {int dummy; } ;


 int FLASH_FW_START ;
 int t4_read_flash (struct adapter*,int ,int,int *,int) ;

int t4_get_fw_hdr(struct adapter *adapter, struct fw_hdr *hdr)
{
 return t4_read_flash(adapter, FLASH_FW_START,
     sizeof (*hdr) / sizeof (uint32_t), (uint32_t *)hdr, 1);
}
