
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
strsep(char **stringp, const char *delim)
{
 char *s;
 const char *spanp;
 int c, sc;
 char *tok;

 if ((s = *stringp) == ((void*)0))
  return (((void*)0));
 for (tok = s;;) {
  c = *s++;
  spanp = delim;
  do {
   if ((sc = *spanp++) == c) {
    if (c == '\0')
     s = ((void*)0);
    else
     s[-1] = '\0';
    *stringp = s;
    return (tok);
   }
  } while (sc != '\0');
 }

}
