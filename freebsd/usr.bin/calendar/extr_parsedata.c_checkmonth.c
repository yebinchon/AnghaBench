
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fixs {char* name; int len; } ;


 char** fmonths ;
 struct fixs* fnmonths ;
 char** months ;
 struct fixs* nmonths ;
 size_t strlen (char*) ;
 scalar_t__ strncasecmp (char*,char*,int) ;

__attribute__((used)) static int
checkmonth(char *s, size_t *len, size_t *offset, const char **month)
{
 struct fixs *n;
 int i;

 for (i = 0; fnmonths[i].name != ((void*)0); i++) {
  n = fnmonths + i;
  if (strncasecmp(s, n->name, n->len) == 0) {
   *len = n->len;
   *month = n->name;
   *offset = i + 1;
   return (1);
  }
 }
 for (i = 0; nmonths[i].name != ((void*)0); i++) {
  n = nmonths + i;
  if (strncasecmp(s, n->name, n->len) == 0) {
   *len = n->len;
   *month = n->name;
   *offset = i + 1;
   return (1);
  }
 }
 for (i = 0; fmonths[i] != ((void*)0); i++) {
  *len = strlen(fmonths[i]);
  if (strncasecmp(s, fmonths[i], *len) == 0) {
   *month = fmonths[i];
   *offset = i + 1;
   return (1);
  }
 }
 for (i = 0; months[i] != ((void*)0); i++) {
  if (strncasecmp(s, months[i], 3) == 0) {
   *len = 3;
   *month = months[i];
   *offset = i + 1;
   return (1);
  }
 }
 return (0);
}
