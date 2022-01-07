
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ sysctlbyname (char const*,char*,size_t*,int *,int ) ;
 int xo_err (int,char*,char const*) ;

__attribute__((used)) static void
netisr_load_sysctl_string(const char *name, char *p, size_t len)
{
 size_t retlen;

 retlen = len;
 if (sysctlbyname(name, p, &retlen, ((void*)0), 0) < 0)
  xo_err(-1, "%s", name);
 p[len - 1] = '\0';
}
