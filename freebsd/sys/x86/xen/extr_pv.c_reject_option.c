
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int nitems (char const**) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int ) ;

__attribute__((used)) static bool reject_option(const char *option)
{
 static const char *reject[] = {
  "acpi.rsdp",
 };
 unsigned int i;

 for (i = 0; i < nitems(reject); i++)
  if (strncmp(option, reject[i], strlen(reject[i])) == 0)
   return (1);

 return (0);
}
