
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* calloc (int,size_t) ;
 int err (int,char*) ;
 int strcat (char*,char const*) ;
 int strlcat (char*,char*,size_t) ;
 int strlcpy (char*,char*,size_t) ;
 size_t strlen (char const*) ;
 int strncat (char*,char*,uintptr_t) ;
 char* strstr (char*,char const*) ;

void
strnsubst(char **str, const char *match, const char *replstr, size_t maxsize)
{
 char *s1, *s2, *this;

 s1 = *str;
 if (s1 == ((void*)0))
  return;
 if (maxsize == 0) {
  match = ((void*)0);
  maxsize = strlen(s1) + 1;
 }
 s2 = calloc(1, maxsize);
 if (s2 == ((void*)0))
  err(1, "calloc");

 if (replstr == ((void*)0))
  replstr = "";

 if (match == ((void*)0) || replstr == ((void*)0) || maxsize == strlen(s1)) {
  strlcpy(s2, s1, maxsize);
  goto done;
 }

 for (;;) {
  this = strstr(s1, match);
  if (this == ((void*)0))
   break;
  if ((strlen(s2) + strlen(s1) + strlen(replstr) -
      strlen(match) + 1) > maxsize) {
   strlcat(s2, s1, maxsize);
   goto done;
  }
  strncat(s2, s1, (uintptr_t)this - (uintptr_t)s1);
  strcat(s2, replstr);
  s1 = this + strlen(match);
 }
 strcat(s2, s1);
done:
 *str = s2;
 return;
}
