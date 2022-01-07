
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int b ;


 int addch (char) ;
 int addstr (char*) ;
 int move (int,int) ;
 int snprintf (char*,int,char*,int,double,...) ;

void
putfloat(double f, int l, int lc, int w, int d, int nz)
{
 int snr;
 char b[128];

 move(l, lc);





 if (nz && f == 0.0) {
  while (--w >= 0)
   addch(' ');
  return;
 }
 snr = snprintf(b, sizeof(b), "%*.*f", w, d, f);
 if (snr != w)
  snr = snprintf(b, sizeof(b), "%*.0f", w, f);
 if (snr != w)
  snr = snprintf(b, sizeof(b), "%*.0fk", w - 1, f / 1000);
 if (snr != w)
  snr = snprintf(b, sizeof(b), "%*.0fM", w - 1, f / 1000000);
 if (snr != w) {
  while (--w >= 0)
   addch('*');
  return;
 }
 addstr(b);
}
