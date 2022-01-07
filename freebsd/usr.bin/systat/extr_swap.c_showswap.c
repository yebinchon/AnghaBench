
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double ksw_total; double ksw_used; } ;


 int CONVERT (double) ;
 int cur_dev ;
 scalar_t__ dlen ;
 int dsshow (int,int ,int,int *,int *) ;
 scalar_t__ hlen ;
 TYPE_1__* kvmsw ;
 int kvnsw ;
 int labelswap () ;
 int last_dev ;
 int mvwprintw (int ,int,scalar_t__,char*) ;
 scalar_t__ odlen ;
 int okvnsw ;
 scalar_t__ oulen ;
 scalar_t__ ulen ;
 int waddch (int ,char) ;
 int wclrtoeol (int ) ;
 int wmove (int ,int,scalar_t__) ;
 int wnd ;
 int wprintw (int ,char*,scalar_t__,int ) ;

void
showswap(void)
{
 int count;
 int i;

 if (kvnsw != okvnsw || dlen != odlen || ulen != oulen)
  labelswap();

 for (i = 0; i <= kvnsw; ++i) {
  if (i == kvnsw) {
   if (kvnsw == 1)
    break;
  }

  if (kvmsw[i].ksw_total == 0) {
   mvwprintw(
       wnd,
       i + 1,
       dlen + hlen + ulen + 1,
       "(swap not configured)"
   );
   continue;
  }

  wmove(wnd, i + 1, dlen);

  wprintw(wnd, "%*d", hlen, CONVERT(kvmsw[i].ksw_total));
  wprintw(wnd, "%*d", ulen, CONVERT(kvmsw[i].ksw_used));

  count = 50.0 * kvmsw[i].ksw_used / kvmsw[i].ksw_total + 1;

  waddch(wnd, ' ');
  while (count--)
   waddch(wnd, 'X');
  wclrtoeol(wnd);
 }
 dsshow(12, 0, 18, &cur_dev, &last_dev);
}
