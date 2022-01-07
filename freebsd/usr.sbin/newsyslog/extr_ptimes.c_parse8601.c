
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {long tm_year; long tm_mon; long tm_mday; long tm_sec; long tm_min; long tm_hour; } ;
struct ptime_data {struct tm tm; int tmspec; } ;


 long INT_MAX ;
 int TSPEC_DAYOFMONTH ;
 int TSPEC_HOUROFDAY ;
 int TSPEC_MONTHOFYEAR ;
 int TSPEC_YEAR ;
 int isspace (char) ;
 long strtol (char const*,char**,int) ;

__attribute__((used)) static int
parse8601(struct ptime_data *ptime, const char *s)
{
 char *t;
 long l;
 struct tm tm;

 l = strtol(s, &t, 10);
 if (l < 0 || l >= INT_MAX || (*t != '\0' && *t != 'T'))
  return (-1);






 tm = ptime->tm;
 ptime->tmspec = TSPEC_HOUROFDAY;
 switch (t - s) {
 case 8:
  tm.tm_year = ((l / 1000000) - 19) * 100;
  l = l % 1000000;
 case 6:
  ptime->tmspec |= TSPEC_YEAR;
  tm.tm_year -= tm.tm_year % 100;
  tm.tm_year += l / 10000;
  l = l % 10000;
 case 4:
  ptime->tmspec |= TSPEC_MONTHOFYEAR;
  tm.tm_mon = (l / 100) - 1;
  l = l % 100;
 case 2:
  ptime->tmspec |= TSPEC_DAYOFMONTH;
  tm.tm_mday = l;
 case 0:
  break;
 default:
  return (-1);
 }


 if (tm.tm_year < 70 || tm.tm_mon < 0 || tm.tm_mon > 12
     || tm.tm_mday < 1 || tm.tm_mday > 31)
  return (-1);

 if (*t != '\0') {
  s = ++t;
  l = strtol(s, &t, 10);
  if (l < 0 || l >= INT_MAX || (*t != '\0' && !isspace(*t)))
   return (-1);

  switch (t - s) {
  case 6:
   tm.tm_sec = l % 100;
   l /= 100;
  case 4:
   tm.tm_min = l % 100;
   l /= 100;
  case 2:
   ptime->tmspec |= TSPEC_HOUROFDAY;
   tm.tm_hour = l;
  case 0:
   break;
  default:
   return (-1);
  }


  if (tm.tm_sec < 0 || tm.tm_sec > 60 || tm.tm_min < 0
      || tm.tm_min > 59 || tm.tm_hour < 0 || tm.tm_hour > 23)
   return (-1);
 }

 ptime->tm = tm;
 return (0);
}
