
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,int *) ;
 char* strdup (char const*) ;

char *
sort_strdup(const char *str)
{
 char *dup;

 if ((dup = strdup(str)) == ((void*)0))
  err(2, ((void*)0));
 return (dup);
}
