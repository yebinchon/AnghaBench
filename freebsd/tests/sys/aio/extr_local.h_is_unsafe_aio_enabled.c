
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unsafe ;


 scalar_t__ ENOENT ;
 scalar_t__ errno ;
 int sysctl_oid_name ;
 scalar_t__ sysctlbyname (int ,int*,size_t*,int *,int ) ;

__attribute__((used)) static int
is_unsafe_aio_enabled(void)
{
 size_t len;
 int unsafe;

 len = sizeof(unsafe);
 if (sysctlbyname(sysctl_oid_name, &unsafe, &len, ((void*)0), 0) < 0) {
  if (errno == ENOENT)
   return (-1);
  return (0);
 }
 return (unsafe == 0 ? 0 : 1);
}
