
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crash () ;
 char* strdup (char const*) ;
 int warnx (char*) ;

char *
xstrdup(const char *str)
{
 char *p;

 if ((p = strdup(str)) == ((void*)0)) {
  warnx("strdup failed");
  crash();
 }
 return (p);
}
