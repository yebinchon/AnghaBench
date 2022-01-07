
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long strtoul (char const*,char**,int ) ;

__attribute__((used)) static int
getnum(const char *s)
{
 char *endp;
 unsigned long l;

 l = strtoul(s, &endp, 0);
 if (*s != '\0' && *endp == '\0')
  return (int)l;
 return (-1);
}
