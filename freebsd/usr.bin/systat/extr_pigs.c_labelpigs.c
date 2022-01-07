
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mvwaddstr (int ,int ,int,char*) ;
 int wclrtoeol (int ) ;
 int wmove (int ,int ,int ) ;
 int wnd ;

void
labelpigs(void)
{
 wmove(wnd, 0, 0);
 wclrtoeol(wnd);
 mvwaddstr(wnd, 0, 20,
     "/0%  /10  /20  /30  /40  /50  /60  /70  /80  /90  /100");
}
