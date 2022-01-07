
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int MIN (int,int) ;
 int snprintf (char*,int,char*,long double) ;
 scalar_t__ strlen (char*) ;
 int waddch (int ,char) ;
 int waddstr (int ,char*) ;
 int wclrtoeol (int ) ;
 int wnd ;

__attribute__((used)) static void
histogram(long double val, int colwidth, double scale)
{
 char buf[10];
 int k;
 int v = (int)(val * scale) + 0.5;

 k = MIN(v, colwidth);
 if (v > colwidth) {
  snprintf(buf, sizeof(buf), "%5.2Lf", val);
  k -= strlen(buf);
  while (k--)
   waddch(wnd, 'X');
  waddstr(wnd, buf);
  return;
 }
 while (k--)
  waddch(wnd, 'X');
 wclrtoeol(wnd);
}
