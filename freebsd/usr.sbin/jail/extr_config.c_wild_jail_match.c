
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;
 int strcmp (char const*,char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;

int
wild_jail_match(const char *jname, const char *wname)
{
 const char *jc, *jd, *wc, *wd;





 for (jc = jname, wc = wname;
      (jd = strchr(jc, '.')) && (wd = strchr(wc, '.'));
      jc = jd + 1, wc = wd + 1)
  if (strncmp(jc, wc, jd - jc + 1) && strncmp(wc, "*.", 2))
   return 0;
 return (!strcmp(jc, wc) || !strcmp(wc, "*"));
}
