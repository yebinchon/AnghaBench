
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HRDBG (char*) ;
 scalar_t__ fs_tbl_refresh ;
 scalar_t__ fs_tick ;
 int refresh_storage_tbl (int) ;
 scalar_t__ this_tick ;

void
refresh_fs_tbl(void)
{

 if (fs_tick == 0 || this_tick - fs_tick >= fs_tbl_refresh) {
  refresh_storage_tbl(1);
  HRDBG("refresh DONE");
 }
}
