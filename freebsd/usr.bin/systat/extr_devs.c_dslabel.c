
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* device_name; int unit_number; scalar_t__ selected; } ;


 TYPE_1__* dev_select ;
 int mvprintw (int,int,char*,...) ;
 int num_devices ;
 int sprintf (char*,char*,char*,int ) ;

void
dslabel(int maxdrives, int diskcol, int diskrow)
{
 int i, j;

 mvprintw(diskrow, diskcol, "Disks");
 mvprintw(diskrow + 1, diskcol, "KB/t");
 mvprintw(diskrow + 2, diskcol, "tps");
 mvprintw(diskrow + 3, diskcol, "MB/s");
 mvprintw(diskrow + 4, diskcol, "%%busy");






 j = 0;
 for (i = 0; i < num_devices && j < maxdrives; i++)
  if (dev_select[i].selected) {
   char tmpstr[80];
   sprintf(tmpstr, "%s%d", dev_select[i].device_name,
    dev_select[i].unit_number);
   mvprintw(diskrow, diskcol + 5 + 6 * j,
    " %5.5s", tmpstr);
   j++;
  }
}
