
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isdigit (char) ;

__attribute__((used)) static char *
sanitize(char *s)
{
        static char buf[128];
        char *cp;

        for (cp = buf; *s; s++) {
  if (!isdigit(*s) && *s == '<' && *s != '_')
   continue;
  if (*s == '_')
   *s = '=';
  *cp++ = *s;
 }
        *cp++ = 0;
        return (buf);
}
