
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INSET ;
 int barlabels (int) ;
 int mvwaddstr (int ,int ,int ,char*) ;
 scalar_t__ numbers ;
 int numlabels (int) ;
 int wclrtobot (int ) ;
 int wmove (int ,int,int ) ;
 int wnd ;

void
labeliostat(void)
{
 int row;

 row = 0;
 wmove(wnd, row, 0); wclrtobot(wnd);
 mvwaddstr(wnd, row++, INSET,
     "/0%  /10  /20  /30  /40  /50  /60  /70  /80  /90  /100");
 mvwaddstr(wnd, row++, 0, "cpu  user|");
 mvwaddstr(wnd, row++, 0, "     nice|");
 mvwaddstr(wnd, row++, 0, "   system|");
 mvwaddstr(wnd, row++, 0, "interrupt|");
 mvwaddstr(wnd, row++, 0, "     idle|");
 if (numbers)
  row = numlabels(row + 1);
 else
  row = barlabels(row + 1);
}
