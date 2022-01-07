
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int result ;


 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static char *
sec2str(time_t total)
{
 static char result[256];
 int days, hours, mins, secs;
 int first = 1;
 char *p = result;
 char *ep = &result[sizeof(result)];
 int n;

 days = total / 3600 / 24;
 hours = (total / 3600) % 24;
 mins = (total / 60) % 60;
 secs = total % 60;

 if (days) {
  first = 0;
  n = snprintf(p, ep - p, "%dd", days);
  if (n < 0 || n >= ep - p)
   return "?";
  p += n;
 }
 if (!first || hours) {
  first = 0;
  n = snprintf(p, ep - p, "%dh", hours);
  if (n < 0 || n >= ep - p)
   return "?";
  p += n;
 }
 if (!first || mins) {
  first = 0;
  n = snprintf(p, ep - p, "%dm", mins);
  if (n < 0 || n >= ep - p)
   return "?";
  p += n;
 }
 snprintf(p, ep - p, "%ds", secs);

 return(result);
}
