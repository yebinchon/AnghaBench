
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ sysctlbyname (char*,char**,size_t*,int *,int ) ;

__attribute__((used)) static int
check_vt(void)
{
 size_t len;
 char term[3];

 len = 3;
 if (sysctlbyname("kern.vty", &term, &len, ((void*)0), 0) != 0 ||
     strcmp(term, "vt") != 0)
  return 0;
 return 1;
}
