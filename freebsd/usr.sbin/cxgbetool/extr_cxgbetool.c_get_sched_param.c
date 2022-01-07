
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 char* str_to_number (char const*,long*,int *) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int warnx (char*,char const*,char const*) ;

__attribute__((used)) static int
get_sched_param(const char *param, const char *args[], long *val)
{
 char *p;

 if (strcmp(param, args[0]) != 0)
  return (EINVAL);

 p = str_to_number(args[1], val, ((void*)0));
 if (*p) {
  warnx("parameter \"%s\" has bad value \"%s\"", args[0],
      args[1]);
  return (EINVAL);
 }

 return (0);
}
