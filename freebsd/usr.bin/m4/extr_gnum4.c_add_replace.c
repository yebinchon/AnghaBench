
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int regmatch_t ;
typedef int regex_t ;


 int add_sub (char const,char const*,int *,int *) ;
 int addchar (char const) ;
 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ mimic_gnu ;

__attribute__((used)) static void
add_replace(const char *string, regex_t *re, const char *replace, regmatch_t *pm)
{
 const char *p;

 for (p = replace; *p != '\0'; p++) {
  if (*p == '&' && !mimic_gnu) {
   add_sub(0, string, re, pm);
   continue;
  }
  if (*p == '\\') {
   if (p[1] == '\\') {
    addchar(p[1]);
    p++;
    continue;
   }
   if (p[1] == '&') {
    if (mimic_gnu)
     add_sub(0, string, re, pm);
    else
     addchar(p[1]);
    p++;
    continue;
   }
   if (isdigit((unsigned char)p[1])) {
    add_sub(*(++p) - '0', string, re, pm);
    continue;
   }
  }
  addchar(*p);
 }
}
