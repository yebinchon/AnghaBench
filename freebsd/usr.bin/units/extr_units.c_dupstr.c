
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 char* strdup (char const*) ;

__attribute__((used)) static char *
dupstr(const char *str)
{
 char *ret;

 ret = strdup(str);
 if (!ret)
  err(3, "dupstr");
 return (ret);
}
