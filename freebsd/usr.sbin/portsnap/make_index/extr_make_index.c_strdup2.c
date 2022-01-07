
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 char* strdup (char const*) ;

__attribute__((used)) static char *
strdup2(const char *str)
{
 char * r;

 r = strdup(str);
 if (r == ((void*)0))
  err(1, "strdup");
 return r;
}
