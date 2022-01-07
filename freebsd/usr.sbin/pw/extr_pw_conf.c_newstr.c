
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 char* strdup (char const*) ;
 char* unquote (char const*) ;

char *
newstr(char const * p)
{
 char *q;

 if ((p = unquote(p)) == ((void*)0))
  return (((void*)0));

 if ((q = strdup(p)) == ((void*)0))
  err(1, "strdup()");

 return (q);
}
