
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;
 scalar_t__ strcmp (char const*,char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;

int
equalopts(const char *opt1, const char *opt2)
{
 char *p;


 if (strcmp(opt1, opt2) == 0)
  return (1);

 if (strncmp(opt1, "no", 2) == 0 && strcmp(opt1 + 2, opt2) == 0)
  return (1);

 if (strncmp(opt2, "no", 2) == 0 && strcmp(opt1, opt2 + 2) == 0)
  return (1);
 while ((p = strchr(opt1, '.')) != ((void*)0) &&
     !strncmp(opt1, opt2, ++p - opt1)) {
  opt2 += p - opt1;
  opt1 = p;

  if (strncmp(opt1, "no", 2) == 0 && strcmp(opt1 + 2, opt2) == 0)
   return (1);

  if (strncmp(opt2, "no", 2) == 0 && strcmp(opt1, opt2 + 2) == 0)
   return (1);
 }
 return (0);
}
