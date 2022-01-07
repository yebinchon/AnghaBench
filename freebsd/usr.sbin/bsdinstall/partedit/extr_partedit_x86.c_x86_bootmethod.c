
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fw ;


 scalar_t__ strlen (char*) ;
 int sysctlbyname (char*,char*,size_t*,int *,int) ;

__attribute__((used)) static const char *
x86_bootmethod(void)
{
 static char fw[255] = "";
 size_t len = sizeof(fw);
 int error;

 if (strlen(fw) == 0) {
  error = sysctlbyname("machdep.bootmethod", fw, &len, ((void*)0), -1);
  if (error != 0)
   return ("BIOS");
 }

 return (fw);
}
