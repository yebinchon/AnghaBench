
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int u_int ;


 scalar_t__ sysctlbyname (char const*,int *,size_t*,int *,int ) ;
 int xo_err (int,char*,char const*) ;
 int xo_errx (int,char*,char const*,int ) ;

__attribute__((used)) static void
netisr_load_sysctl_uint(const char *name, u_int *p)
{
 size_t retlen;

 retlen = sizeof(u_int);
 if (sysctlbyname(name, p, &retlen, ((void*)0), 0) < 0)
  xo_err(-1, "%s", name);
 if (retlen != sizeof(u_int))
  xo_errx(-1, "%s: invalid len %ju", name, (uintmax_t)retlen);
}
