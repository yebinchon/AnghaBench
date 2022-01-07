
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int resbuf ;


 int snprintf (char*,int,char*,char const*,...) ;

__attribute__((used)) static char *
interval(time_t tval, const char *updown)
{
 static char resbuf[32];
 int days, hours, minutes;

 if (tval < 0) {
  (void)snprintf(resbuf, sizeof(resbuf), "%s      ??:??", updown);
  return (resbuf);
 }

 minutes = (tval + (60 - 1)) / 60;
 hours = minutes / 60;
 minutes %= 60;
 days = hours / 24;
 hours %= 24;
 if (days)
  (void)snprintf(resbuf, sizeof(resbuf),
      "%s %4d+%02d:%02d", updown, days, hours, minutes);
 else
  (void)snprintf(resbuf, sizeof(resbuf),
      "%s      %2d:%02d", updown, hours, minutes);
 return (resbuf);
}
