
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fixs {scalar_t__ len; int name; } ;


 int errx (int,char*,char*) ;
 struct fixs* nsequences ;
 int * sequences ;
 scalar_t__ strcasecmp (char*,int ) ;
 scalar_t__ strncasecmp (char*,int ,scalar_t__) ;
 int strtol (char*,char**,int) ;

__attribute__((used)) static int
indextooffset(char *s)
{
 int i;
 struct fixs *n;
 char *es;

 if (s[0] == '+' || s[0] == '-') {
  i = strtol (s, &es, 10);
  if (*es != '\0')
   errx (1, "Invalid specifier format: %s\n", s);
  return (i);
 }

 for (i = 0; i < 6; i++) {
  if (strcasecmp(s, sequences[i]) == 0) {
   if (i == 5)
    return (-1);
   return (i + 1);
  }
 }
 for (i = 0; i < 6; i++) {
  n = nsequences + i;
  if (n->len == 0)
   continue;
  if (strncasecmp(s, n->name, n->len) == 0) {
   if (i == 5)
    return (-1);
   return (i + 1);
  }
 }
 return (0);
}
