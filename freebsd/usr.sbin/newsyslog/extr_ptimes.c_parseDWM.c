
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {long tm_hour; long tm_wday; int tm_mday; int tm_mon; int tm_year; } ;
struct ptime_data {struct tm tm; int tmspec; } ;


 int TSPEC_DAYOFMONTH ;
 int TSPEC_DAYOFWEEK ;
 int TSPEC_HOUROFDAY ;
 int TSPEC_LDAYOFMONTH ;
 int days_pmonth (int ,int ) ;
 scalar_t__ isspace (char const) ;
 long strtol (char const*,char**,int) ;
 char tolower (char const) ;

__attribute__((used)) static int
parseDWM(struct ptime_data *ptime, const char *s)
{
 int daysmon, Dseen, WMseen;
 const char *endval;
 char *tmp;
 long l;
 struct tm tm;


 tm = ptime->tm;
 daysmon = days_pmonth(tm.tm_mon, tm.tm_year);

 WMseen = Dseen = 0;
 ptime->tmspec = TSPEC_HOUROFDAY;
 for (;;) {
  endval = ((void*)0);
  switch (*s) {
  case 'D':
   if (Dseen)
    return (-1);
   Dseen++;
   ptime->tmspec |= TSPEC_HOUROFDAY;
   s++;
   l = strtol(s, &tmp, 10);
   if (l < 0 || l > 23)
    return (-1);
   endval = tmp;
   tm.tm_hour = l;
   break;

  case 'W':
   if (WMseen)
    return (-1);
   WMseen++;
   ptime->tmspec |= TSPEC_DAYOFWEEK;
   s++;
   l = strtol(s, &tmp, 10);
   if (l < 0 || l > 6)
    return (-1);
   endval = tmp;
   if (l != tm.tm_wday) {
    int save;

    if (l < tm.tm_wday) {
     save = 6 - tm.tm_wday;
     save += (l + 1);
    } else {
     save = l - tm.tm_wday;
    }

    tm.tm_mday += save;

    if (tm.tm_mday > daysmon) {
     tm.tm_mon++;
     tm.tm_mday = tm.tm_mday - daysmon;
    }
   }
   break;

  case 'M':
   if (WMseen)
    return (-1);
   WMseen++;
   ptime->tmspec |= TSPEC_DAYOFMONTH;
   s++;
   if (tolower(*s) == 'l') {

    ptime->tmspec |= TSPEC_LDAYOFMONTH;
    tm.tm_mday = daysmon;
    endval = s + 1;
   } else {
    l = strtol(s, &tmp, 10);
    if (l < 1 || l > 31)
     return (-1);

    if (l > daysmon)
     return (-1);
    endval = tmp;
    tm.tm_mday = l;
   }
   break;

  default:
   return (-1);
   break;
  }

  if (endval == ((void*)0))
   return (-1);
  else if (*endval == '\0' || isspace(*endval))
   break;
  else
   s = endval;
 }

 ptime->tm = tm;
 return (0);
}
