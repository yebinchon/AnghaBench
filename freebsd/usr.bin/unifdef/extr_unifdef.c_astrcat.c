
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 scalar_t__ malloc (size_t) ;
 int snprintf (char*,size_t,char*,char const*,char const*) ;

__attribute__((used)) static char *
astrcat(const char *s1, const char *s2)
{
 char *s;
 int len;
 size_t size;

 len = snprintf(((void*)0), 0, "%s%s", s1, s2);
 if (len < 0)
  err(2, "snprintf");
 size = (size_t)len + 1;
 s = (char *)malloc(size);
 if (s == ((void*)0))
  err(2, "malloc");
 snprintf(s, size, "%s%s", s1, s2);
 return (s);
}
