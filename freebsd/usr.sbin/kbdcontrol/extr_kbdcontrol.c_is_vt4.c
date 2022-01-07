
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vty_name ;


 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ sysctlbyname (char*,char*,size_t*,int *,int ) ;

__attribute__((used)) static int
is_vt4(void)
{
 char vty_name[4] = "";
 size_t len = sizeof(vty_name);

 if (sysctlbyname("kern.vty", vty_name, &len, ((void*)0), 0) != 0)
  return (0);
 return (strcmp(vty_name, "vt") == 0);
}
