
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 char* strdup (char const*) ;

char *
estrdup(const char *str)
{
 char *ns;

 ns = strdup(str);
 if (!ns)
  err(1, "malloc");
 return ns;
}
