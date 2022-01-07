
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TOPLABEL ;
 int TOPLINE ;
 int mvprintw (int ,int ,char*,int ) ;
 int wclrtoeol (int ) ;
 int wmove (int ,int ,int ) ;
 int wnd ;

void
labelifstat(void)
{

 wmove(wnd, TOPLINE, 0);
 wclrtoeol(wnd);
 mvprintw(TOPLINE, 0, "%s", TOPLABEL);

 return;
}
