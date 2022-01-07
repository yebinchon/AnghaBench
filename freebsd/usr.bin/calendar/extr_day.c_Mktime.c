
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct tm {int tm_mday; int tm_mon; int tm_year; } ;


 char* asctime (struct tm*) ;
 int fprintf (int ,char*,int,int,char*) ;
 int localtime_r (scalar_t__*,struct tm*) ;
 scalar_t__ mktime (struct tm*) ;
 int sscanf (char*,char*,int*,int*,int*) ;
 int stderr ;
 int time (scalar_t__*) ;
 struct tm tm0 ;

time_t
Mktime(char *dp)
{
 time_t t;
 int d, m, y;
 struct tm tm, tp;

 (void)time(&t);
 localtime_r(&t, &tp);

 tm = tm0;
 tm.tm_mday = tp.tm_mday;
 tm.tm_mon = tp.tm_mon;
 tm.tm_year = tp.tm_year;

 switch (sscanf(dp, "%d.%d.%d", &d, &m, &y)) {
 case 3:
  if (y > 1900)
   y -= 1900;
  tm.tm_year = y;

 case 2:
  tm.tm_mon = m - 1;

 case 1:
  tm.tm_mday = d;
 }





 return (mktime(&tm));
}
