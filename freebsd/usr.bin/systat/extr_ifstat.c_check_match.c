
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FNM_CASEFOLD ;
 scalar_t__ fnmatch (char*,char const*,int ) ;
 char* matchline ;
 int strcspn (char*,char*) ;
 int strspn (char*,char*) ;

__attribute__((used)) static int
check_match(const char *ifname)
{
 char *p = matchline, *c, t;
 int match = 0, mlen;

 if (matchline == ((void*)0))
  return (0);


 while (*p == ' ')
  p ++;

 c = p;
 while ((mlen = strcspn(c, " ;,")) != 0) {
  p = c + mlen;
  t = *p;
  if (p - c > 0) {
   *p = '\0';
   if (fnmatch(c, ifname, FNM_CASEFOLD) == 0) {
    *p = t;
    return (1);
   }
   *p = t;
   c = p + strspn(p, " ;,");
  }
  else {
   c = p + strspn(p, " ;,");
  }
 }

 return (match);
}
