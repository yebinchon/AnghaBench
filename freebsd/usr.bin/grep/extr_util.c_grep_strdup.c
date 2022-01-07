
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 char* strdup (char const*) ;

char *
grep_strdup(const char *str)
{
 char *ret;

 if ((ret = strdup(str)) == ((void*)0))
  err(2, "strdup");
 return (ret);
}
