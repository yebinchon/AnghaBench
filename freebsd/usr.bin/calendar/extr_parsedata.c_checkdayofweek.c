
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fixs {char* name; int len; } ;


 char** days ;
 char** fdays ;
 struct fixs* fndays ;
 struct fixs* ndays ;
 size_t strlen (char*) ;
 scalar_t__ strncasecmp (char*,char*,int) ;

__attribute__((used)) static int
checkdayofweek(char *s, size_t *len, size_t *offset, const char **dow)
{
 struct fixs *n;
 int i;

 for (i = 0; fndays[i].name != ((void*)0); i++) {
  n = fndays + i;
  if (strncasecmp(s, n->name, n->len) == 0) {
   *len = n->len;
   *dow = n->name;
   *offset = i;
   return (1);
  }
 }
 for (i = 0; ndays[i].name != ((void*)0); i++) {
  n = ndays + i;
  if (strncasecmp(s, n->name, n->len) == 0) {
   *len = n->len;
   *dow = n->name;
   *offset = i;
   return (1);
  }
 }
 for (i = 0; fdays[i] != ((void*)0); i++) {
  *len = strlen(fdays[i]);
  if (strncasecmp(s, fdays[i], *len) == 0) {
   *dow = fdays[i];
   *offset = i;
   return (1);
  }
 }
 for (i = 0; days[i] != ((void*)0); i++) {
  if (strncasecmp(s, days[i], 3) == 0) {
   *len = 3;
   *dow = days[i];
   *offset = i;
   return (1);
  }
 }
 return (0);
}
