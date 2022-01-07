
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isdigit (unsigned char) ;

__attribute__((used)) static int
getprec(const char *str)
{
 const char *p;
 const char *q;

 for (p = str; *p; p++)
  if (*p == '.')
   break;
 if (!*p)
  return (0);
 for (q = ++p; *p; p++)
  if (!isdigit((unsigned char)*p))
   break;
 return (p - q);
}
