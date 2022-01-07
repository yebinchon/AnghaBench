
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMDLINE ;
 int * avenrun ;
 int clrtoeol () ;
 int getloadavg (int *,int ) ;
 int mvprintw (int ,int ,char*,int ,int ,int ) ;
 int nitems (int *) ;

void
load(void)
{

 (void) getloadavg(avenrun, nitems(avenrun));
 mvprintw(CMDLINE, 0, "%4.1f %4.1f %4.1f",
     avenrun[0], avenrun[1], avenrun[2]);
 clrtoeol();
}
