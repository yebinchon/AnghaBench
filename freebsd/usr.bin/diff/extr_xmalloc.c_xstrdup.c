
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 char* strdup (char const*) ;

char *
xstrdup(const char *str)
{
 char *cp;

 if ((cp = strdup(str)) == ((void*)0))
  err(2, "xstrdup");
 return cp;
}
