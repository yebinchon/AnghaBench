
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cudbg_flash_sec_info {int skip_size; } ;



void
update_skip_size(struct cudbg_flash_sec_info *sec_info, u32 size)
{
 sec_info->skip_size += size;
}
