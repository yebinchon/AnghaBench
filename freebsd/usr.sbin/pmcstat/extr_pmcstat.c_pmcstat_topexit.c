
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pa_toptty; } ;


 TYPE_1__ args ;
 int clrtoeol () ;
 int endwin () ;
 int refresh () ;

void
pmcstat_topexit(void)
{
 if (!args.pa_toptty)
  return;




 clrtoeol();
 refresh();
 endwin();
}
