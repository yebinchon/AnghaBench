
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef long time_t ;
struct tm {int tm_mon; int tm_mday; int tm_year; } ;


 scalar_t__ isspace (unsigned char) ;
 scalar_t__ isupper (unsigned char) ;
 struct tm* localtime (long*) ;
 long mktime (struct tm*) ;
 scalar_t__ numerics (char const*) ;
 int parse_datesub (char*,struct tm*) ;
 int * strchr (char*,char) ;
 int strlcpy (char*,char const*,int) ;
 char* strrchr (char*,char) ;
 long strtol (char const*,char**,int ) ;
 long time (int *) ;
 int weekday (char const**) ;

time_t
parse_date(time_t dt, char const * str)
{
 char *p;
 int i;
 long val;
 struct tm *T;

 if (dt == 0)
  dt = time(((void*)0));

 while (*str && isspace((unsigned char)*str))
  ++str;

 if (numerics(str)) {
  dt = strtol(str, &p, 0);
 } else if (*str == '+' || *str == '-') {
  val = strtol(str, &p, 0);
  switch (*p) {
  case 'h':
  case 'H':
   dt += (val * 3600L);
   break;
  case '\0':
  case 'm':
  case 'M':
   dt += (val * 60L);
   break;
  case 's':
  case 'S':
   dt += val;
   break;
  case 'd':
  case 'D':
   dt += (val * 86400L);
   break;
  case 'w':
  case 'W':
   dt += (val * 604800L);
   break;
  case 'o':
  case 'O':
   T = localtime(&dt);
   T->tm_mon += (int) val;
   i = T->tm_mday;
   goto fixday;
  case 'y':
  case 'Y':
   T = localtime(&dt);
   T->tm_year += (int) val;
   i = T->tm_mday;
 fixday:
   dt = mktime(T);
   T = localtime(&dt);
   if (T->tm_mday != i) {
    T->tm_mday = 1;
    dt = mktime(T);
    dt -= (time_t) 86400L;
   }
  default:
   break;
  }
 } else {
  char *q, tmp[64];




  weekday(&str);
  strlcpy(tmp, str, sizeof(tmp));
  str = tmp;
  T = localtime(&dt);




  while ((q = strrchr(tmp, ' ')) != ((void*)0)) {
   if (strchr("(+-", q[1]) != ((void*)0))
    *q = '\0';
   else {
    int j = 1;

    while (q[j] && isupper((unsigned char)q[j]))
     ++j;
    if (q[j] == '\0')
     *q = '\0';
    else
     break;
   }
  }

  parse_datesub(tmp, T);
  dt = mktime(T);
 }
 return dt;
}
