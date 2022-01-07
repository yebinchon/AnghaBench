
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tm ;
struct tm {int tm_mon; } ;
struct monthlines {char** lines; int* extralen; int * name; } ;
struct TYPE_4__ {int y; int m; int d; } ;
typedef TYPE_1__ date ;


 char* daystr ;
 int flag_nohighlight ;
 int highlight (char*,char*,int,int*) ;
 int highlightdate ;
 char* jdaystr ;
 int memcpy (char*,char*,int) ;
 int memset (struct tm*,int ,int) ;
 int sdateb (int,TYPE_1__*) ;
 int sndaysb (TYPE_1__*) ;
 int towupper (int ) ;
 int wcsftime (int *,int,char*,struct tm*) ;
 int weekday (int) ;

__attribute__((used)) static void
mkmonthb(int y, int m, int jd_flag, struct monthlines *mlines)
{

 struct tm tm;

 date dt;
 int dw;
 int first;
 int firsts;
 int i, j, k, l;
 int jan1 = 0;
 int last;
 char *ds;



 if (jd_flag) {
  ds = jdaystr;
  dw = 4;
 } else {
  ds = daystr;
  dw = 3;
 }


 memset(&tm, 0, sizeof(tm));
 tm.tm_mon = m;
 wcsftime(mlines->name, sizeof(mlines->name) / sizeof(mlines->name[0]),
   L"%OB", &tm);
 mlines->name[0] = towupper(mlines->name[0]);






 dt.y = y;
 dt.m = m + 1;
 dt.d = 1;
 first = sndaysb(&dt);
 if (m == 11) {
  dt.y = y + 1;
  dt.m = 1;
  dt.d = 1;
 } else {
  dt.y = y;
  dt.m = m + 2;
  dt.d = 1;
 }
 last = sndaysb(&dt);

 if (jd_flag) {
  dt.y = y;
  dt.m = 1;
  dt.d = 1;
  jan1 = sndaysb(&dt);
 }





 firsts = first - (weekday(first)+1) % 7;






 for (i = 0; i != 6; i++) {
  l = 0;
  for (j = firsts + 7 * i, k = 0; j < last && k != dw * 7;
      j++, k += dw) {
   if (j >= first) {
    if (jd_flag)
     dt.d = j - jan1 + 1;
    else
     sdateb(j, &dt);
    if (j == highlightdate && !flag_nohighlight)
     highlight(mlines->lines[i] + k,
         ds + dt.d * dw, dw, &l);
    else
     memcpy(mlines->lines[i] + k + l,
            ds + dt.d * dw, dw);
   } else
    memcpy(mlines->lines[i] + k + l, "    ", dw);
  }
  if (k == 0)
   mlines->lines[i][1] = '\0';
  else
   mlines->lines[i][k + l] = '\0';
  mlines->extralen[i] = l;
 }
}
