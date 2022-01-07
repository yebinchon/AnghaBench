
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* device_name; int unit_number; scalar_t__ selected; } ;


 int INSET ;
 TYPE_1__* dev_select ;
 int getmaxy (int ) ;
 int kbpt ;
 int linesperregion ;
 int mvwaddstr (int ,int ,int ,char*) ;
 int mvwprintw (int ,int ,int ,char*,char*) ;
 int num_devices ;
 int sprintf (char*,char*,char*,int ) ;
 int wnd ;

__attribute__((used)) static int
barlabels(int row)
{
 int i;
 char tmpstr[10];

 mvwaddstr(wnd, row++, INSET,
     "/0%  /10  /20  /30  /40  /50  /60  /70  /80  /90  /100");
 linesperregion = 2 + kbpt;
 for (i = 0; i < num_devices; i++)
  if (dev_select[i].selected) {
   if (row > getmaxy(wnd) - 1 - linesperregion)
    break;
   sprintf(tmpstr, "%s%d", dev_select[i].device_name,
    dev_select[i].unit_number);
   mvwprintw(wnd, row++, 0, "%-5.5s MB/s|",
      tmpstr);
   mvwaddstr(wnd, row++, 0, "      tps|");
   if (kbpt)
    mvwaddstr(wnd, row++, 0, "     KB/t|");
  }
 return (row);
}
