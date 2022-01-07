
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
compile_ccl(char **sp, char *t)
{
 int c, d;
 char *s = *sp;

 *t++ = *s++;
 if (*s == '^')
  *t++ = *s++;
 if (*s == ']')
  *t++ = *s++;
 for (; *s && (*t = *s) != ']'; s++, t++)
  if (*s == '[' && ((d = *(s+1)) == '.' || d == ':' || d == '=')) {
   *++t = *++s, t++, s++;
   for (c = *s; (*t = *s) != ']' || c != d; s++, t++)
    if ((c = *s) == '\0')
     return ((void*)0);
  }
 return (*s == ']') ? *sp = ++s, ++t : ((void*)0);
}
