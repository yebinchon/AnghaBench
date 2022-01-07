
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* device_name; int unit_number; scalar_t__ selected; } ;


 int COLWIDTH ;
 int DRIVESPERLINE ;
 int INSET ;
 TYPE_1__* dev_select ;
 int getmaxx (int ) ;
 int getmaxy (int ) ;
 int howmany (int,int ) ;
 int linesperregion ;
 int mvwaddstr (int ,int,int,char*) ;
 int num_devices ;
 int sprintf (char*,char*,char*,int ) ;
 int wnd ;

__attribute__((used)) static int
numlabels(int row)
{
 int i, _col, regions, ndrives;
 char tmpstr[10];



 for (ndrives = 0, i = 0; i < num_devices; i++)
  if (dev_select[i].selected)
   ndrives++;
 regions = howmany(ndrives, ((getmaxx(wnd) - 1 - INSET) / 17));



 linesperregion = (getmaxy(wnd) - 1 - row - regions) / regions;




 if (linesperregion < 3)
  linesperregion = 3;
 _col = INSET;
 for (i = 0; i < num_devices; i++)
  if (dev_select[i].selected) {
   if (_col + 17 >= getmaxx(wnd) - 1 - INSET) {
    _col = INSET, row += linesperregion + 1;
    if (row > getmaxy(wnd) - 1 - (linesperregion + 1))
     break;
   }
   sprintf(tmpstr, "%s%d", dev_select[i].device_name,
    dev_select[i].unit_number);
   mvwaddstr(wnd, row, _col + 4, tmpstr);
   mvwaddstr(wnd, row + 1, _col, "  KB/t tps  MB/s ");
   _col += 17;
  }
 if (_col)
  row += linesperregion + 1;
 return (row);
}
