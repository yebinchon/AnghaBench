
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* ksw_devname; } ;


 int dlen ;
 int dslabel (int,int ,int) ;
 int fetchswap () ;
 int header ;
 int hlen ;
 TYPE_1__* kvmsw ;
 int kvnsw ;
 int mvwprintw (int ,int,int ,char*,int ,char const*,...) ;
 int ulen ;
 int werase (int ) ;
 int wnd ;

void
labelswap(void)
{
 const char *name;
 int i;

 fetchswap();

 werase(wnd);

 mvwprintw(wnd, 0, 0, "%*s%*s%*s %s",
     -dlen, "Disk", hlen, header, ulen, "Used",
     "/0%  /10  /20  /30  /40  /50  /60  /70  /80  /90  /100");

 for (i = 0; i <= kvnsw; ++i) {
  if (i == kvnsw) {
   if (kvnsw == 1)
    break;
   name = "Total";
  } else
   name = kvmsw[i].ksw_devname;
  mvwprintw(wnd, i + 1, 0, "%*s", -dlen, name);
 }
 dslabel(12, 0, 18);
}
