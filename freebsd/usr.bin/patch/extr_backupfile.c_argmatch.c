
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;
 int strncmp (char const*,char const*,size_t) ;

__attribute__((used)) static int
argmatch(const char *arg, const char **optlist)
{
 int i;
 size_t arglen;
 int matchind = -1;
 int ambiguous = 0;

 arglen = strlen(arg);


 for (i = 0; optlist[i]; i++) {
  if (!strncmp(optlist[i], arg, arglen)) {
   if (strlen(optlist[i]) == arglen)

    return i;
   else if (matchind == -1)

    matchind = i;
   else

    ambiguous = 1;
  }
 }
 if (ambiguous)
  return -2;
 else
  return matchind;
}
