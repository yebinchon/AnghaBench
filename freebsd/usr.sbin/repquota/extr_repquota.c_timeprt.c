
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef int buf ;


 int sprintf (char*,char*,long,...) ;
 int strlcpy (char*,char*,int) ;
 int time (scalar_t__*) ;

char *
timeprt(time_t seconds)
{
 time_t hours, minutes;
 static char buf[20];
 static time_t now;

 if (now == 0)
  time(&now);
 if (now > seconds) {
  strlcpy(buf, "none", sizeof (buf));
  return (buf);
 }
 seconds -= now;
 minutes = (seconds + 30) / 60;
 hours = (minutes + 30) / 60;
 if (hours >= 36) {
  sprintf(buf, "%lddays", (long)(hours + 12) / 24);
  return (buf);
 }
 if (minutes >= 60) {
  sprintf(buf, "%2ld:%ld", (long)minutes / 60,
      (long)minutes % 60);
  return (buf);
 }
 sprintf(buf, "%2ld", (long)minutes);
 return (buf);
}
