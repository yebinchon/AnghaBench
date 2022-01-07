
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,int *) ;
 char* strdup (char const*) ;

char *
bstrdup(const char *p)
{
 char *q;

 q = strdup(p);
 if (q == ((void*)0))
  err(1, ((void*)0));
 return (q);
}
