
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_2__ {int chan; } ;


 int COLS ;
 int LINES ;
 TYPE_1__ chaninfo ;
 int mvaddstr (int,int,char*) ;
 int refresh () ;
 int snprintf (char*,int,char*,int) ;

void display_chan() {
 int x, y;
 char tmp[3];

 x = COLS - 2;
 y = LINES - 1;

 snprintf(tmp, sizeof(tmp), "%.2d", chaninfo.chan);
 mvaddstr(y, x, tmp);
 refresh();
}
