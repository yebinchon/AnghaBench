
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcasecmp (char const*,int ) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;
 int strtonum (char const*,int,int,char const**) ;
 int sys_nsig ;
 int * sys_signame ;

__attribute__((used)) static int
parse_signal(const char *str)
{
 int sig, i;
 const char *errstr;

 sig = strtonum(str, 1, sys_nsig - 1, &errstr);

 if (errstr == ((void*)0))
  return (sig);
 if (strncasecmp(str, "SIG", 3) == 0)
  str += 3;

 for (i = 1; i < sys_nsig; i++) {
  if (strcasecmp(str, sys_signame[i]) == 0)
   return (i);
 }

 return (-1);
}
