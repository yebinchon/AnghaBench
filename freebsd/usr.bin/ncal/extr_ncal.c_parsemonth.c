
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_mon; } ;


 int * strptime (char const*,char*,struct tm*) ;
 scalar_t__ strtol (char const*,char**,int) ;

__attribute__((used)) static int
parsemonth(const char *s, int *m, int *y)
{
 int nm, ny;
 char *cp;
 struct tm tm;

 nm = (int)strtol(s, &cp, 10);
 if (cp != s) {
  ny = *y;
  if (*cp == '\0') {
   ;
  } else if (*cp == 'f' || *cp == 'F') {
   if (nm <= *m)
    ny++;
  } else if (*cp == 'p' || *cp == 'P') {
   if (nm >= *m)
    ny--;
  } else
   return (1);
  if (nm < 1 || nm > 12)
   return 1;
  *m = nm;
  *y = ny;
  return (0);
 }
 if (strptime(s, "%B", &tm) != ((void*)0) || strptime(s, "%b", &tm) != ((void*)0)) {
  *m = tm.tm_mon + 1;
  return (0);
 }
 return (1);
}
