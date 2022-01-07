
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utsname {char* sysname; } ;
typedef int machine_arch ;


 int __FreeBSD_version ;
 int errno ;
 int snprintf (char*,size_t,char*,char*,int,char*) ;
 int sysctlbyname (char*,char*,size_t*,int *,int ) ;
 int uname (struct utsname*) ;

__attribute__((used)) static int
pkg_get_myabi(char *dest, size_t sz)
{
 struct utsname uts;
 char machine_arch[255];
 size_t len;
 int error;

 error = uname(&uts);
 if (error)
  return (errno);

 len = sizeof(machine_arch);
 error = sysctlbyname("hw.machine_arch", machine_arch, &len, ((void*)0), 0);
 if (error)
  return (errno);
 machine_arch[len] = '\0';





 snprintf(dest, sz, "%s:%d:%s", uts.sysname, __FreeBSD_version/100000,
     machine_arch);

 return (error);
}
