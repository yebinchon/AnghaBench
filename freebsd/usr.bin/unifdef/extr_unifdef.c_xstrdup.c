
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int err (int,char*) ;
 char* malloc (size_t) ;
 int snprintf (char*,size_t,char*,char const*) ;

__attribute__((used)) static const char *
xstrdup(const char *start, const char *end)
{
 size_t n;
 char *s;

 if (end < start) abort();
 n = (size_t)(end - start) + 1;
 s = malloc(n);
 if (s == ((void*)0))
  err(2, "malloc");
 snprintf(s, n, "%s", start);
 return (s);
}
