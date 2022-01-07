
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 int log_err (int,char*) ;
 char* strdup (char const*) ;

char *
checked_strdup(const char *s)
{
 char *c;

 assert(s != ((void*)0));

 c = strdup(s);
 if (c == ((void*)0))
  log_err(1, "strdup");
 return (c);
}
