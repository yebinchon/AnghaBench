
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i ;


 int err (int,char*,char const*) ;
 scalar_t__ sysctlbyname (char const*,int*,size_t*,int *,int ) ;

__attribute__((used)) static int
getsysctl(const char *name)
{
 size_t len;
 int i;

 len = sizeof(i);
 if (sysctlbyname(name, &i, &len, ((void*)0), 0) < 0)
  err(-1, "%s", name);
 return (i);
}
