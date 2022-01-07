
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cudbg_flash_sec_info {int sec_bitmap; } ;


 scalar_t__ CUDBG_START_SEC ;
 int reset_dbg_bitmap (int ,int) ;
 int set_dbg_bitmap (int ,int) ;

__attribute__((used)) static
void set_sector_availability(struct cudbg_flash_sec_info *sec_info,
    int sector_nu, int avail)
{
 sector_nu -= CUDBG_START_SEC;
 if (avail)
  set_dbg_bitmap(sec_info->sec_bitmap, sector_nu);
 else
  reset_dbg_bitmap(sec_info->sec_bitmap, sector_nu);
}
