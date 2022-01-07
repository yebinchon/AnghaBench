
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int tm ;
typedef int time_t ;
struct tm {int tm_mday; int tm_year; } ;
typedef int buffer ;


 int bzero (struct tm*,int) ;
 int localtime (int*) ;
 int mktime (struct tm*) ;
 int snprintf (char*,int,char*,int) ;
 int strftime (char*,int,char*,int ) ;

__attribute__((used)) static const char *
format_timestamp(uint32_t timestamp)
{
 static char buffer[32];
 static time_t base;
 time_t t;
 struct tm tm;

 if ((timestamp & 0xff000000) == 0xff000000) {
  snprintf(buffer, sizeof(buffer), "boot + %us", timestamp &
      0x00ffffff);
  return (buffer);
 }

 if (base == 0) {

  bzero(&tm, sizeof(tm));
  tm.tm_mday = 1;
  tm.tm_year = (2000 - 1900);
  base = mktime(&tm);
 }
 if (base == -1) {
  snprintf(buffer, sizeof(buffer), "%us", timestamp);
  return (buffer);
 }
 t = base + timestamp;
 strftime(buffer, sizeof(buffer), "%+", localtime(&t));
 return (buffer);
}
