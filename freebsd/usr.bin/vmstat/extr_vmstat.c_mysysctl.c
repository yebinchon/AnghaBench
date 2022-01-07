
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOMEM ;
 scalar_t__ errno ;
 int sysctlbyname (char const*,void*,size_t*,int *,int ) ;
 int xo_err (int,char*,char const*) ;

__attribute__((used)) static int
mysysctl(const char *name, void *oldp, size_t *oldlenp)
{
 int error;

 error = sysctlbyname(name, oldp, oldlenp, ((void*)0), 0);
 if (error != 0 && errno != ENOMEM)
  xo_err(1, "sysctl(%s)", name);
 return (error);
}
