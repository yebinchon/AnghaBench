
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_isdst; scalar_t__ tm_sec; scalar_t__ tm_min; scalar_t__ tm_hour; } ;


 scalar_t__ UINT32_MAX ;
 int atoi (char*) ;
 scalar_t__ isdigit (char) ;
 struct tm* localtime (scalar_t__*) ;
 scalar_t__ mktime (struct tm*) ;
 char const** months ;
 int strncasecmp (char const*,char*,int) ;
 char* strtok (char*,char*) ;
 int time (scalar_t__*) ;
 int unsetenv (char*) ;

int
atot(char *p, time_t *store)
{
 static struct tm *lt;
 char *t;
 const char **mp;
 time_t tval;
 int day, month, year;

 if (!*p) {
  *store = 0;
  return (0);
 }
 if (!lt) {
  unsetenv("TZ");
  (void)time(&tval);
  lt = localtime(&tval);
 }
 if (!(t = strtok(p, " \t")))
  goto bad;
 if (isdigit(*t)) {
  month = atoi(t);
 } else {
  for (mp = months;; ++mp) {
   if (!*mp)
    goto bad;
   if (!strncasecmp(*mp, t, 3)) {
    month = mp - months + 1;
    break;
   }
  }
 }
 if (!(t = strtok(((void*)0), " \t,")) || !isdigit(*t))
  goto bad;
 day = atoi(t);
 if (!(t = strtok(((void*)0), " \t,")) || !isdigit(*t))
  goto bad;
 year = atoi(t);
 if (day < 1 || day > 31 || month < 1 || month > 12)
  goto bad;

 if (year < 69)
  year += 2000;
 else if (year < 100)
  year += 1900;
 if (year < 1969)
bad: return (1);
 lt->tm_year = year - 1900;
 lt->tm_mon = month - 1;
 lt->tm_mday = day;
 lt->tm_hour = 0;
 lt->tm_min = 0;
 lt->tm_sec = 0;
 lt->tm_isdst = -1;
 if ((tval = mktime(lt)) < 0)
  return (1);
 if (tval > UINT32_MAX)
  return (1);

 *store = tval;
 return (0);
}
