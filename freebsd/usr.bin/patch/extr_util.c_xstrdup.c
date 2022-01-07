
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fatal (char*) ;
 char* strdup (char const*) ;

char *
xstrdup(const char *s)
{
 char *rv;

 if (!s)
  s = "Oops";
 rv = strdup(s);
 if (rv == ((void*)0))
  fatal("out of memory\n");
 return rv;
}
