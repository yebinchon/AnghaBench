
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*,char const*) ;
 scalar_t__ sysctlbyname (char const*,int *,int *,int*,int) ;

__attribute__((used)) static void
sysctl_set_int(const char *name, int val)
{
 if (sysctlbyname(name, ((void*)0), ((void*)0), &val, sizeof(int)) < 0)
  err(1, "sysctl %s failed.", name);
}
