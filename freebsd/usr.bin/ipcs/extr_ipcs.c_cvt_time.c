
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct tm {int tm_hour; int tm_min; int tm_sec; } ;


 struct tm* localtime (scalar_t__*) ;
 int sprintf (char*,char*,int,int,int) ;
 int strcpy (char*,char*) ;

void
cvt_time(time_t t, char *buf)
{
 struct tm *tm;

 if (t == 0) {
  strcpy(buf, "no-entry");
 } else {
  tm = localtime(&t);
  sprintf(buf, "%2d:%02d:%02d",
   tm->tm_hour, tm->tm_min, tm->tm_sec);
 }
}
