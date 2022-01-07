
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int pmcstat_skiplink ;
 int wprintw (int *,char*,char*) ;

int
pmcpl_ct_topkeypress(int c, void *arg)
{
 WINDOW *w;

 w = (WINDOW *)arg;

 switch (c) {
 case 'f':
  pmcstat_skiplink = !pmcstat_skiplink;
  wprintw(w, "skip empty link %s",
      pmcstat_skiplink ? "on" : "off");
  break;
 }

 return 0;
}
