
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlist {char* n_name; scalar_t__ n_value; } ;


 int CMDLINE ;
 int clear () ;
 int clrtoeol () ;
 int endwin () ;
 int exit (int) ;
 int move (int ,int ) ;
 int mvprintw (int,int,char*,...) ;
 int refresh () ;

void
nlisterr(struct nlist n_list[])
{
 int i, n;

 n = 0;
 clear();
 mvprintw(2, 10, "systat: nlist: can't find following symbols:");
 for (i = 0;
     n_list[i].n_name != ((void*)0) && *n_list[i].n_name != '\0'; i++)
  if (n_list[i].n_value == 0)
   mvprintw(2 + ++n, 10, "%s", n_list[i].n_name);
 move(CMDLINE, 0);
 clrtoeol();
 refresh();
 endwin();
 exit(1);
}
