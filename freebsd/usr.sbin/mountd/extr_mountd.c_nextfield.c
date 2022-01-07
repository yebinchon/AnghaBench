
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
nextfield(char **cp, char **endcp)
{
 char *p;
 char quot = 0;

 p = *cp;
 while (*p == ' ' || *p == '\t')
  p++;
 *cp = p;
 while (*p != '\0') {
  if (quot) {
   if (*p == quot)
    quot = 0;
  } else {
   if (*p == '\\' && *(p + 1) != '\0')
    p++;
   else if (*p == '\'' || *p == '"')
    quot = *p;
   else if (*p == ' ' || *p == '\t')
    break;
  }
  p++;
 };
 *endcp = p;
}
