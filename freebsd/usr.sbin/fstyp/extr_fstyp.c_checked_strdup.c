
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 char* strdup (char const*) ;

char *
checked_strdup(const char *s)
{
 char *c;

 c = strdup(s);
 if (c == ((void*)0))
  err(1, "strdup");
 return (c);
}
