
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct tm {size_t tm_mon; int tm_mday; int tm_year; } ;


 struct tm* localtime (scalar_t__*) ;
 char** months ;
 int sprintf (char*,char*,char*,int,int) ;

char *
ttoa(time_t tval)
{
 struct tm *tp;
 static char tbuf[50];

 if (tval) {
  tp = localtime(&tval);
  (void)sprintf(tbuf, "%s %d, %d", months[tp->tm_mon],
      tp->tm_mday, tp->tm_year + 1900);
 }
 else
  *tbuf = '\0';
 return (tbuf);
}
