
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 char* strdup (char const*) ;

__attribute__((used)) static char *
xstrdup(const char *str)
{
 char *dupstr;

 if ((dupstr = strdup(str)) == ((void*)0))
  err(1, "strdup()");
 return (dupstr);
}
